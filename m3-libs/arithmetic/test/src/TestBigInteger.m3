MODULE TestBigInteger EXPORTS Test;
(*Copyright (c) 1996, m3na project
Abstract:  TestS for BigInteger module.

3/6/96    Harry George   Initial version

*)

IMPORT
  BigIntegerBasic  AS B,
  BigIntegerRep    AS Br,
  BigIntegerFmtLex AS FL,
  xInteger   AS I,
  xWordEx AS Wx,
  Word AS W,
  Fmt AS F,
  Text;
(*=======================*)
CONST
  Module = "TestBigInteger.";

CONST
  base2Style  = FL.FmtStyle{base:=2};
  base16Style = FL.FmtStyle{base:=16};
(*----------------------*)
PROCEDURE TestBasic():BOOLEAN=
CONST
  ftn = Module & "TestBasic";
VAR
  result:=TRUE;
  carry:=TRUE;
  hi,lo:W.T;
BEGIN
  Debug(1,ftn,"begin\n");
  Msg("W.Size " & F.Int(W.Size) & "\n");
  Msg("W.GT(2,3) " & F.Bool(W.GT(2,3)) & "\n");
  Msg("PlusWithCarry " & F.Int(Wx.PlusWithCarry(2,3,carry)) & "\n");
  Msg("MinusWithBorrow " & F.Int(Wx.MinusWithBorrow(2,3,carry)) & "\n");
  Msg("MinusWithBorrow " & F.Int(Wx.MinusWithBorrow(5,3,carry)) & "\n");
  Msg("MinusWithBorrow " & F.Int(Wx.MinusWithBorrow(5,3,carry)) & "\n");
  Wx.DoubleLengthMultiply(7,16_249,lo,hi);
  Msg("DoubleLengthMultiply " & F.Int(hi,16) & " " & F.Int(lo,16) & "\n");
  Msg("Plus " & F.Int(W.Plus(3,2)) & "\n");
  RETURN result;
END TestBasic;
(*----------------------*)
PROCEDURE TestPower():BOOLEAN=
CONST
  ftn = Module & "TestPower";
  cycles  = 52;
VAR
  x, y, z : B.T;
  fff     : TEXT;
  result  := TRUE;
BEGIN
  Debug(1,ftn,"begin\n");
  x := B.FromInteger(8);
  y := B.One;
  z := B.Zero;

  FOR j:=0 TO cycles-1 DO
    (*Msg(F.FN("%2s: 16_%s, 2_%s\n", ARRAY OF TEXT{F.Int(j), FL.Fmt(z,base16Style), FL.Fmt(z,base2Style)}));*)
    z := Br.AddU(z,y);
    y := Br.MulU(y,x);
  END;
  (*Msg(F.FN("%2s: 16_%s, 2_%s\n", ARRAY OF TEXT{F.Int(cycles), FL.Fmt(z,base16Style), FL.Fmt(z,base2Style)}));*)
  z := Br.MulU(z,B.FromInteger(7));
  fff := FL.Fmt(z,base16Style);
  Msg("multiply with 7: 16_" & fff & ": 2_" & FL.Fmt(z,base2Style) & "\n");
  <*ASSERT Text.Length(fff) = (cycles DIV 4)*3 *>
  FOR j:=0 TO Text.Length(fff)-1 DO
    <*ASSERT Text.GetChar(fff,j)='f'*>
  END;

  RETURN result;
END TestPower;
(*----------------------*)
PROCEDURE TestAddshift():BOOLEAN=
CONST
  ftn = Module & "TestAddshift";
  cycles  = 4*13;
VAR
  x, y    : B.T;
  q, r    : B.T;
  result  := TRUE;
  sh      := Br.BitPos{0,0};
BEGIN
  Debug(1,ftn,"begin\n");
  x.data := NEW(Br.Value,cycles*3 DIV W.Size +2);
  x.size := NUMBER(x.data^);
  Br.Clear(x.data);

  FOR j:=0 TO cycles DO
(*
    Msg(F.FN("%2s: bit %02s,%02s; 16_%s\n",
             ARRAY OF TEXT{F.Int(j), F.Int(sh.word), F.Int(sh.bit), FL.Fmt(x,base16Style)}));
*)
(*
    Msg(F.FN("%2s: bit %s,%s; 16_%s, 2_%s\n",
             ARRAY OF TEXT{F.Int(j), F.Int(sh.word), F.Int(sh.bit), FL.Fmt(x,base16Style), FL.Fmt(x,base2Style)}));
*)
    Br.AddShifted(x,j,sh);
    sh := Br.AddBitPos(sh,Br.BitPos{0,3});
  END;

  sh := Br.BitPos{0,0};
  FOR j:=0 TO cycles DO
(*
    Msg(F.FN("%2s: bit %02s,%02s; 16_%s\n",
             ARRAY OF TEXT{F.Int(j), F.Int(sh.word), F.Int(sh.bit), FL.Fmt(x,base16Style)}));
*)
    Br.AddShifted(x,cycles-j,sh);
    sh := Br.AddBitPos(sh,Br.BitPos{0,3});
  END;

(*
  sh := Br.BitPos{0,0};
  quotient := cycles * 2_1001001001;
  FOR j:=0 TO cycles DO
    Msg(F.FN("%2s: bit %02s,%02s; 16_%s\n",
             ARRAY OF TEXT{F.Int(j), F.Int(sh.word), F.Int(sh.bit), FL.Fmt(x,base16Style)}));
    Br.SubShiftedProd(x,cycles-j,sh);
    sh := Br.AddBitPos(sh,Br.BitPos{0,3});
  END;
*)
  x := B.One;
  FOR j:=0 TO 13 DO
    x := Br.AddU(B.One,Br.MulU(x,B.FromInteger(16_1000)));
  END;
  y := Br.MulU(B.FromInteger(16_1000001),B.FromInteger(16_1001));
(*
  x := B.FromInteger(16_1001001);
  FOR j:=0 TO 1 DO
    x := Br.MulU(x,x);
  END;
  x := Br.AddU(x,B.One);
  y := B.FromInteger(16_1001001);
  y := Br.MulU(y,y);
*)
  Msg(F.FN("x = 16_%s   y = 16_%s\n",
           ARRAY OF TEXT{FL.Fmt(x,base16Style), FL.Fmt(y,base16Style)}));
  q := Br.DivModU(x,y,r);
  Msg(F.FN("q = 16_%s   r = 16_%s\n",
           ARRAY OF TEXT{FL.Fmt(q,base16Style), FL.Fmt(r,base16Style)}));
  q.sign := FALSE;
  r.sign := FALSE;
  <*ASSERT B.Equal(x,Br.AddU(r,Br.MulU(q,y)))*>

  <*ASSERT NOT B.IsZero(B.Mod(B.FromInteger(16_4f7d3f), B.FromInteger(16_37))) *>

  RETURN result;
END TestAddshift;
(*----------------------*)
PROCEDURE TestFibonacci():BOOLEAN=
CONST
  ftn = Module & "TestFibonacci";
VAR
  x, y, z : B.T;
  result:=TRUE;
BEGIN
  Debug(1,ftn,"begin\n");
  x := B.Zero;
  y := B.One;
  (*x := B.FromInteger(16_7FFFFFFF);*)

  FOR j:=0 TO 100 DO
    (*Msg("size: " & F.Int(x.size) & "\n");*)
    Msg(F.FN("%2s: 16_%s, 2_%s\n",
      ARRAY OF TEXT {F.Int(j), FL.Fmt(x,base16Style), FL.Fmt(x)}));
    z := Br.AddU(x,y);
    x := y;
    y := z;
  END;

  (*!!! compare with explicit formula !!!*)
  (*!!! better: compare with fast integer power of matrix {{0,1},{1,1}}!!!*)
  RETURN result;
END TestFibonacci;
(*-------------------------*)
PROCEDURE TestPseudoprime():BOOLEAN=
(*
This prime Test works for many numbers but not for all.
*)
CONST
  ftn = Module & "TestPseudoprime";
VAR
  x : ARRAY [0..3] OF B.T;
  mod : B.T;
  result:=TRUE;
  prime0, prime1 : BOOLEAN;
BEGIN
  Debug(1,ftn,"begin\n");
  x[0] := B.FromInteger(3);
  x[1] := B.Zero;
  x[2] := B.FromInteger(2);

  FOR j:=3 TO 10000 DO
    x[3] := B.Add (x[0], x[1]);
    (*Msg(F.FN("%s / %s\n", ARRAY OF TEXT {FL.Fmt(x[3],base16Style), F.Int(j,16)}));*)
    mod := B.Mod(x[3],B.FromInteger(j));
    prime0 := B.IsZero(mod);
    prime1 := I.isprime(j);
    (*
    Msg(F.FN("%2s: %s, mod %s prime %s vs. %s\n",
      ARRAY OF TEXT {F.Int(j), FL.Fmt(x[3],10), FL.Fmt(mod,10), F.Bool(prime0), F.Bool(prime1)}));
    *)
    <*ASSERT prime0=prime1*>
    x[0] := x[1];
    x[1] := x[2];
    x[2] := x[3];
  END;
  RETURN result;
END TestPseudoprime;
(*-------------------------*)
PROCEDURE TestBigInteger():BOOLEAN=
CONST ftn = Module & "TestBigInteger";
VAR result:=TRUE;
BEGIN
  NewLine(); EVAL TestBasic();
  NewLine(); EVAL TestPower();
  NewLine(); EVAL TestAddshift();
  NewLine(); EVAL TestFibonacci();
  NewLine(); EVAL TestPseudoprime();

  RETURN result;
END TestBigInteger;
(*=======================*)
BEGIN
END TestBigInteger.
