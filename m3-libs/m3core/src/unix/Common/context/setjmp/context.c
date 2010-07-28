/*
see http://www.opengroup.org/onlinepubs/009695399/functions/swapcontext.html

void* is favored as a type over size_t just because it prints as hex in gdb.
*/

#include "context.h"
#include <stdarg.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#ifdef __CYGWIN__
#include <windows.h>
#endif

#ifdef __cplusplus
extern "C"
{
#endif

#ifdef __OpenBSD__
#ifdef __i386__
#define OpenBSD_i386
#elif defined(__powerpc__)
#define OpenBSD_powerpc
#elif defined(__sparc64__)
#define OpenBSD_sparc64
#elif defined(__mips64__)
#define OpenBSD_mips64
#else
#error unsupported OpenBSD platform
#endif
#elif defined(__APPLE__)
#ifdef __ppc__
#define Apple_ppc
#else
#error unsupported Apple platform
#endif
#else
#error unsupported operating system
#endif

/* The various numbers are experimentally derived or based
 * on reading (assembly) source or stepping through with
 * the debugger, etc.
 */
#ifdef __CYGWIN__           /* Cygwin isn't going to work anyway. */
#define CONTEXT_PC      8
#define CONTEXT_STACK   7
#elif defined(OpenBSD_i386)
#define CONTEXT_PC      0
#define CONTEXT_STACK   2
#define STACK_ADJUST    40
#elif defined(OpenBSD_powerpc)
#define CONTEXT_PC      4
#define CONTEXT_STACK   3
#define STACK_ADJUST    8
#elif defined(Apple_ppc)
#define CONTEXT_PC      21
#define CONTEXT_STACK   0
#define STACK_ADJUST    (14 * 4)
#elif defined(OpenBSD_sparc64)
#define CONTEXT_STACK    1
#define CONTEXT_PC       2
/*define CONTEXT_FRAME   5*/
#define STACK_ADJUST     2239
#elif defined(OpenBSD_mips64)
#define CONTEXT_STACK 32
#define CONTEXT_PC 2
/*defie CONTEXT_FRAME 33*/
#define STACK_ADJUST 0
#else
#endif

/* This must be a macro and is even needed on x86, else -O3 break us.
 * We don't actually need the longjmp?
 */
#define FlushRegistersAndOrDeoptimize() do { sigjmp_buf jb; if (sigsetjmp(jb, 0) == 0) siglongjmp(jb, 1); } while(0)

#if 0
static void print_context(const char* name, const ucontext_t* context)
{
    size_t i;

    printf("%s:%p: ", name, context);
    if (context)
    {
        printf(" st:%p pc:%pc ", context->uc_mcontext.a[CONTEXT_STACK], context->uc_mcontext.a[CONTEXT_PC]);
        for (i = 0; i < (sizeof(sigjmp_buf) / sizeof(void*)); ++i)
        {
            if (context->uc_mcontext.a[i])
                printf("%p ", context->uc_mcontext.a[i]);
        }
    }
    printf("\n");
    fflush(stdout);
}
#endif

int getcontext(ucontext_t* xcontext)
{
    ucontext_t* volatile context = xcontext;
    FlushRegistersAndOrDeoptimize();
    if (sigsetjmp(context->uc_mcontext.jb, 1) == 0)
        context->uc_stack.ss_sp = (void*)context->uc_mcontext.a[CONTEXT_STACK];
    return 0;
}

int setcontext(const ucontext_t* const_context)
{
    ucontext_t* volatile context = (ucontext_t*)const_context;
    if (context)
    {
        FlushRegistersAndOrDeoptimize();
        siglongjmp(context->uc_mcontext.jb, 1);
    }
    return 0;
}

/* see:
http://developer.apple.com/documentation/DeveloperTools/Conceptual/LowLevelABI/100-32-bit_PowerPC_Function_Calling_Conventions/32bitPowerPC.html#//apple_ref/doc/uid/TP40002438

From reading the APSL code, sigsetjmp does not preserve the registers that are used for parameters; so burn them up and use
the later stack-based parameters for the actual parameters

OpenBSD/powerpc also does not preserve a bunch of registers in the
  setjmp code, but the prolog/epilog appears to handle them.
*/

static void internal_setcontext(
    /* Burn up parameters that would go in registers. */
    void* r3,
    void* r4,
    void* r5,
    void* r6,
    void* r7,
    void* r8,
    void* r9,
    void* r10,
    ucontext_t* uc_link,
    void (*function)(),
    void* argc,
    void (*Setcontext)(ucontext_t*),
    void (*Exit)(int),
    ...)
    /* Must not access any globals, due to MIPS ABI.
     * We can only use parameters.
     * We have neither the correct global pointer (GP)
     * nor T9/$25 set to the function called (from which GP is computed for
     * non-static functions.)
     *
     * This means we can't use assert, though we could if we wanted use
     * fprintf, stderr, abort, by pushing them onto the stack in makecontext.
     * However, we also can't use string constants, unless they too are passed.
     */
{
    va_list args;
    size_t i;

    va_start(args, Exit);
    for (i = 0; i < 8 && i < (size_t)argc; ++i)
        (&r3)[i] = va_arg(args, void*);
    va_end(args);

    function(r3, r4, r5, r6, r7, r8, r9, r10);
    Setcontext(uc_link);        
    Exit(0); /* exit thread? abort? */
}

void makecontext(ucontext_t* context, void (*function)(), int argc, ...)
{
    va_list args;
    int i;
    void** stack;

    FlushRegistersAndOrDeoptimize();
    va_start(args, argc);
    stack = (void**)(((char*)context->uc_stack.ss_sp) + context->uc_stack.ss_size);
    stack -= argc;
    for (i = 0; i < argc; ++i)
        stack[i] = va_arg(args, void*);
    *--stack = exit;
    *--stack = setcontext;
    *--stack = (void*)(size_t)argc;
    *--stack = (void*)function;
    *--stack = context->uc_link;
    context->uc_mcontext.a[CONTEXT_STACK] = ((size_t)stack) - STACK_ADJUST;
#if 0 /* fish around for the stack layout */
    printf("markers at %p\n", stack);
    for (i = 0; i < 255; ++i)
    {
        *--stack = (void*)(size_t)((i << 16) | ((i + 1) << 8) | (i + 2));
    }
#endif
    context->uc_mcontext.a[CONTEXT_PC] = (size_t)&internal_setcontext;
#ifdef OpenBSD_sparc64
    context->uc_mcontext.a[CONTEXT_PC + 1] = 4 + (size_t)&internal_setcontext;
#endif
    va_end(args);
}

int swapcontext(ucontext_t* old_context, const ucontext_t* new_context)
{
    FlushRegistersAndOrDeoptimize();
    getcontext(old_context);
    setcontext(new_context);
    return 0;
}

#ifdef __cplusplus
} /* extern "C" */
#endif
