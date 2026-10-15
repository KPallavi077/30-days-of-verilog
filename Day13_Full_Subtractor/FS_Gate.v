module FS_Gate (input A, B, Bin, output Diff, Bout);
  wire nA, w, nw, t1, t2;
  xor x1 (w, A, B);
  xor x2 (Diff, w, Bin);
  not n1 (nA, A);
  not n2 (nw, w);
  and a1 (t1, nA, B);
  and a2 (t2, nw, Bin);
  or o1 (Bout, t1, t2);
endmodule
