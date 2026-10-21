module FA_Cell (input a, b, cin, output sum, cout);
  wire w1, w2, w3;
  xor x1 (w1, a, b);
  xor x2 (sum, w1, cin);
  and a1 (w2, a, b);
  and a2 (w3, w1, cin);
  or o1 (cout, w2, w3);
endmodule

module MUX2_Cell (input a, b, s, output y);
  wire ns, t1, t2;
  not n1 (ns, s);
  and a1 (t1, a, ns);
  and a2 (t2, b, s);
  or o1 (y, t1, t2);
endmodule

module CSA4_Structural (input [3:0] A, B, input Cin, output [3:0] S, output Cout);
  wire c1, c2, u1, v1, co0, co1;
  wire [1:0] s0, s1;
  FA_Cell f0 (A[0], B[0], Cin, S[0], c1);
  FA_Cell f1 (A[1], B[1], c1, S[1], c2);
  FA_Cell f2 (A[2], B[2], 1'b0, s0[0], u1);
  FA_Cell f3 (A[3], B[3], u1, s0[1], co0);
  FA_Cell f4 (A[2], B[2], 1'b1, s1[0], v1);
  FA_Cell f5 (A[3], B[3], v1, s1[1], co1);
  MUX2_Cell m0 (s0[0], s1[0], c2, S[2]);
  MUX2_Cell m1 (s0[1], s1[1], c2, S[3]);
  MUX2_Cell m2 (co0, co1, c2, Cout);
endmodule
