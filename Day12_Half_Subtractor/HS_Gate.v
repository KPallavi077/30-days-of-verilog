module HS_Gate (input A, B, output Diff, Bout);
  wire nA;
  xor x1 (Diff, A, B);
  not n1 (nA, A);
  and a1 (Bout, nA, B);
endmodule
