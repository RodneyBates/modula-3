GENERIC INTERFACE Functional(R, V, FD);
(* Arithmetic for Modula-3, see doc for details *)

IMPORT Arithmetic AS Arith;


TYPE
  Func = PROCEDURE (x: V.T; ): R.T RAISES {Arith.Error};
  (* evaluate functional for vector x *)
  FuncDeriv2 = PROCEDURE (x: V.T; ): FD.T RAISES {Arith.Error};
(* evaluate functional, its first derivative (gradient) and its second
   derivative (Jacobian of the gradient) *)


PROCEDURE EvalCentralDiff2 (f: Func; x, dx: V.T; ): FD.T
  RAISES {Arith.Error};
(* compute central differences, this can be used as approximation for
   derivatives; accesses 'evaluate' method *)

PROCEDURE FindStationaryPoint
  (f: FuncDeriv2; x: V.T; tol: R.T; maxiter: CARDINAL; ): V.T
  RAISES {Arith.Error};
(* find candidates for extrema and saddle points by Newton's iteration *)


END Functional.
