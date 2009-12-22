(* Copyright (C) 1994, Digital Equipment Corporation.       *)
(* All rights reserved.                                     *)
(* See the file COPYRIGHT for a full description.           *)
(*                                                          *)
(* Last modified on Wed Jul 30 13:55:56 EST 1997 by hosking *)
(*      modified on Tue May  2 11:43:35 PDT 1995 by kalsow  *)

(* This interface defines platform (machine + OS) dependent
   types and constants. *)

INTERFACE RTMachine;

IMPORT Uucontext;

(*------------------------------------------------------------------ heap ---*)

(* The heap page size used to be machine-dependent, since it could depend
   on the architecture's VM page size (if VM was TRUE). VM is now always
   FALSE. Otherwise, 8192 bytes is a reasonable page size. The page size must
   be a power of two. *)

CONST
  BytesPerHeapPage    = 8192;               (* bytes per page *)
  LogBytesPerHeapPage = 13;

(*--------------------------------------------------------- thread stacks ---*)

CONST
  PointerAlignment = ADRSIZE(ADDRESS);
  (* The C compiler allocates all pointers on 'PointerAlignment'-byte
     boundaries.  The garbage collector scans thread stacks, but only
     looks at these possible pointer locations.  Setting this value
     smaller than is needed will only make your system run slower.
     Setting it too large will cause the collector to collect storage
     that is not free. *)

(*----------------------------------------------- exception stack walking ---*)
(* The "FrameInfo" type must minimally include fields named "pc" and "sp". *)

CONST
  Has_stack_walker = TRUE;
  (* Indicates whether this platform supports the stack walking functions
     defined in the "RTStack" interface. *)

TYPE
  FrameInfo = RECORD
    pc, sp  : ADDRESS;       (* sp here is actually SPARC fp *)
    true_sp : ADDRESS;
    ctxt    : Uucontext.ucontext_t;
    lock    : INTEGER;       (* to ensure that ctxt isn't overrun!! *)
  END;

END RTMachine.
