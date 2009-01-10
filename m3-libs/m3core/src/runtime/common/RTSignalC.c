/* Copyright (C) 1992, Digital Equipment Corporation          */
/* All rights reserved.                                       */
/* See the file COPYRIGHT for a full description.             */

/* derived from LINUXLIBC6 */

#include <unistd.h>
#include <signal.h>
typedef struct sigaction sigaction_t;
#include <assert.h>
#ifdef __CYGWIN__
typedef void ucontext_t;
#else
#include <ucontext.h>
#endif

#include <string.h>
#define ZeroMemory(a,b) (memset((a), 0, (b)))

#include "RTSignalC.h"
#define InstallHandlers RTSignalC_InstallHandlers
#define RestoreHandlers RTSignalC_RestoreHandlers
#define Texts_t RTSignalC_Texts_t

/* FROM RTProcess IMPORT OnInterrupt, InterruptHandler, InvokeExitors */
#include "RTProcess.h"
#define OnInterrupt RTProcess__OnInterrupt
#define InterruptHandler RTProcess__InterruptHandler
#define InvokeExitors RTProcess__InvokeExitors

/* FROM RTError IMPORT MsgPC */
#include "RTError.h"
#define MsgPC RTError__MsgPC

#ifdef __cplusplus
extern "C" {
#endif

#define PRIVATE(x) RTSignalCPrivate_ ## x

#define Handlers PRIVATE(Handlers)
#define InitialHandlers PRIVATE(InitialHandlers)
#define InstallOneHandler PRIVATE(InstallOneHandler)

#define Quit PRIVATE(Quit)
#define Interrupt PRIVATE(Interrupt)
#define Shutdown PRIVATE(Shutdown)
#define SegV PRIVATE(SegV)

#define Texts PRIVATE(Texts)

#define GetProgramCounterFromSignalContext PRIVATE(GetProgramCounterFromSignalContext)
#define SignalActionHandler PRIVATE(SignalActionHandler)

typedef void (*SignalActionHandler)(int, siginfo_t*, void*);

#define NUMBER_OF(a) (sizeof(a)/sizeof((a)[0]))

Texts_t* Texts;

void SegV(int Signal, siginfo_t* SignalInfo, void* Context);
void Shutdown(int Signal, siginfo_t* SignalInfo, void* Context);
void Interrupt(int Signal, siginfo_t* SignalInfo, void* Context);
void Quit(int Signal, siginfo_t* SignalInfo, void* Context);

void InstallOneHandler(size_t Index);
void RestoreOneHandler(size_t Index);
size_t GetProgramCounterFromSignalContext(void* Context);

size_t GetProgramCounterFromSignalContext(void* VoidContext)
{
    size_t pc = 0;
#if 0 /* FUTURE, each or at least some of these need investigation and testing */
    ucontext_t* Context = (ucontext_t*) VoidContext;
    if (Context != NULL)
    {
#if defined(__CYGWIN__)
#error update GetProgramCounterFromSignalContext
#elif defined(__amd64)
        pc = Context->uc_mcontext->ss.rip;
#elif defined(__i386) && defined(__linux)
        pc = Context->uc_mcontext.gregs[REG_EIP];
#elif defined(__i386) && defined(__FreeBSD__)
        pc = Context->uc_mcontext->scp_eip;
#elif defined(__powerpc)
        pc = Context->uc_mcontext->ss.srr0;
#elif defined(__sparc)
        pc = Context->uc_mcontext->gregs.pc;
#elif defined(__mips)
        pc = Context->uc_mcontext->scp_pc.lo;
#elif defined(__hpux) && defined(__hppa)
        pc = Context->uc_mcontext->scp_pc;
#else
#error update GetProgramCounterFromSignalContext
#endif
    }
#endif
    return pc;
}

#define DefaultHandler ((SignalActionHandler) SIG_DFL)
#define IgnoreSignal   ((SignalActionHandler) SIG_IGN)

#ifdef __cplusplus
extern
#endif
const struct
{
    int Signal;
    SignalActionHandler Handler;
}
Handlers[] =
{
    { SIGHUP,  Shutdown },
    { SIGINT,  Interrupt },
    { SIGQUIT, Quit },
    { SIGSEGV, SegV },
    { SIGPIPE, IgnoreSignal },
    { SIGTERM, Shutdown },
};

sigaction_t InitialHandlers[NUMBER_OF(Handlers)];

void InstallOneHandler(size_t Index)
{
    sigaction_t New;
    int i = { 0 };
    int Signal = Handlers[i].Signal;
    SignalActionHandler Handler = Handlers[i].Handler;

    ZeroMemory(&New, sizeof(New));
    i = sigemptyset(&New.sa_mask);
    assert(i == 0);

    /* What if Handler == SIG_IGN? */
    New.sa_sigaction = Handler;
    New.sa_flags = SA_SIGINFO;

    i = sigaction(Signal, &New, &InitialHandlers[Index]);
    assert(i == 0);

    /* Don't override inherited, non-default handlers.
       That is, if the old handler is not the default handler, put it back. */
    if (InitialHandlers[Index].sa_sigaction != DefaultHandler)
    {
        i = sigaction(Signal, &InitialHandlers[Index], &New);
        assert(i == 0);
    }
}

void InstallHandlers(Texts_t* M3Texts)
/* Texts are passed down from Modula-3 so that we don't know how to create them.
Maybe change that. */
{
    size_t i = { 0 };

    Texts = M3Texts;

    for (i = 0 ; i != NUMBER_OF(Handlers) ; ++i)
    {
        InstallOneHandler(i);
    }
}

void RestoreOneHandler(size_t Index)
{
    int Signal = Handlers[Index].Signal;
    sigaction_t Old;

    ZeroMemory(&Old, sizeof(Old));
    sigaction(Signal, &InitialHandlers[Index], &Old);
}

void RestoreHandlers(void)
{
    size_t i = { 0 };

    for (i = 0 ; i != NUMBER_OF(Handlers) ; ++i)
    {
        RestoreOneHandler(i);
    }
}

void Shutdown(int Signal, siginfo_t* SignalInfo, void* Context)
{
    sigaction_t New;
    sigaction_t Old;

    ZeroMemory(&Old, sizeof(Old));
    ZeroMemory(&New, sizeof(New));
    New.sa_sigaction = DefaultHandler;
    New.sa_flags = 0;
    sigemptyset(&New.sa_mask);
    InvokeExitors();     /* flush stdio */
    sigaction(Signal, &New, &Old);  /* restore default handler */
    kill(getpid(), Signal);         /* and resend the signal */
}

void Interrupt(int Signal, siginfo_t* SignalInfo, void* Context)
{
    InterruptHandler Handler = OnInterrupt(NULL);

    if (Handler == NULL)
    {
        Shutdown(Signal, SignalInfo, Context);
    }
    else
    {
        OnInterrupt(Handler); /* reinstall the handler */
        Handler();
    }
}

void RTSignalCPrivate_CommonFatalSignalHandler(void* Context, TEXT Message)
{
    MsgPC(GetProgramCounterFromSignalContext(Context), Message);
}

void Quit(int Signal, siginfo_t* SignalInfo, void* Context)
{
    RTSignalCPrivate_CommonFatalSignalHandler(Context, Texts->aborted);
}

void SegV(int Signal, siginfo_t* SignalInfo, void* Context)
{
    RTSignalCPrivate_CommonFatalSignalHandler(Context, Texts->segv);
}

#ifdef __cplusplus
} /* extern "C" */
#endif
