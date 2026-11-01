module DEC24_Structural (input A1, A0, output Y0, Y1, Y2, Y3);
  wire nA1, nA0;
  not n1 (nA1, A1);
  not n2 (nA0, A0);
  and a0 (Y0, nA1, nA0);
  and a1 (Y1, nA1, A0);
  and a2 (Y2, A1, nA0);
  and a3 (Y3, A1, A0);
endmodule
