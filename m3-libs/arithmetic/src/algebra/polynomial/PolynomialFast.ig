GENERIC INTERFACE PolynomialFast(R);
(*Copyright (c) 1996, m3na project

Abstract: Direct access to Polynomial functions

2/3/96   Harry George    Initial version
2/17/96  Harry George    Convert from OO to ADT
*)

FROM xUtils IMPORT Error;
(*==========================*)

TYPE
  (*interpretation is: a[0] + a[1]*xi + a[2]* xi^2...a[n]*xi^n *)
  (*text form is: T4{a0,a1,a2,a3} *)

  TBody = ARRAY OF R.T;
  T = BRANDED "Polynomial" REF TBody;

(*
CONST
  Zero    =  TBody{R.Zero};
  One     =  TBody{R.One};
*)

VAR
  Zero    : T;
  One     : T;

PROCEDURE New(n:CARDINAL):T;    (*make a poly for a0..an*)
PROCEDURE Copy(x:T):T;       (*copy x to a New poly*)
(*
PROCEDURE Zero(x:T);          (*set x to zeros*)
PROCEDURE One (x:T);          (*set x to 1*)
*)

PROCEDURE Eval(x:T;           (*eval this polynomial*)
               xi:R.T          (*at this point*)
               ):R.T;
PROCEDURE Add(x,y:T):T;  (*return x+y*)
PROCEDURE Sub(x,y:T):T;  (*return x-y*)
PROCEDURE Equal(x,y:T):BOOLEAN;  (*return x=y*)

PROCEDURE Mul(x,y:T):T;  (*return x*y*)
PROCEDURE Div(x,y:T):T RAISES {Error};  (*return x/y if possible*)
PROCEDURE DivMod(x,y:T;        (*compute x/y *) 
              VAR r:T):T;     (*giving quotient with remainder r*)
(*
PROCEDURE deflate(x:T;        (*divide this polynomial*)
                  c:R.T;      (* by (xi-c) *)
                  VAR rem:R.T);(*leaving remainder -- possibly 0*)
*)
PROCEDURE Derive(x:T;           (*differentiate polynomial*)
                 ):T;
PROCEDURE EvalDerivate(x:T;          (*Eval this polynomial*)
                xi:R.T;               (*for this argument*)
           VAR pd:ARRAY OF R.T;      (*returning x(xi), x'(xi)...*)
               nd:CARDINAL           (*for up to nd EvalDerivateatives*)
                ) RAISES {Error};
          (*raises:
               Err.bad_size if nd>NUMBER(pd)+1
          *)
(*==========================*)
END PolynomialFast.
