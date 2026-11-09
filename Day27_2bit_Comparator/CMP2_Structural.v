module CMP2_Structural (input A1, A0, B1, B0, output GT, EQ, LT);
  wire x1, x0, nA1, nA0, nB1, nB0, g1, g2, l1, l2;
  xnor xn1 (x1, A1, B1);
  xnor xn0 (x0, A0, B0);
  not n1 (nA1, A1);
  not n2 (nA0, A0);
  not n3 (nB1, B1);
  not n4 (nB0, B0);
  and ae (EQ, x1, x0);
  and ag1 (g1, A1, nB1);
  and ag2 (g2, x1, A0, nB0);
  or og (GT, g1, g2);
  and al1 (l1, nA1, B1);
  and al2 (l2, x1, nA0, B0);
  or ol (LT, l1, l2);
endmodule
