/* Copyright (C) 1989, Digital Equipment Corporation           */
/* All rights reserved.                                        */
/* See the file COPYRIGHT for a full description.              */

#ifdef _MSC_VER
#pragma optimize("gty", on)
#undef _DLL
#endif

#include "m3core.h"
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif

#define M3MODULE Cstdlib

typedef void (__cdecl*AtExitFunction)(void);

M3WRAP1(int, atexit, AtExitFunction)
M3WRAP1(char*, getenv, const char*)
M3WRAP1(int, system, const char*)
M3WRAP1(void*, malloc, size_t)
M3WRAP2(void*, calloc, size_t, size_t)
M3WRAP2(double, strtod, const char*, char**)
M3WRAP1(double, atof, const char*)

#define V(name, in, out) void __cdecl Cstdlib__##name in { name out; }

V(abort, (void), ())
V(exit, (int status), (status))
V(free, (void* a), (a))

#ifdef __cplusplus
}
#endif
