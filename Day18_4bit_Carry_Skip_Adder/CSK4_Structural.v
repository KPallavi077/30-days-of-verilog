module CSK_FA (input a, b, cin, output sum, cout);
  wire w1, w2, w3;
  xor x1 (w1, a, b);
  xor x2 (sum, w1, cin);
  and a1 (w2, a, b);
  and a2 (w3, w1, cin);
  or o1 (cout, w2, w3);
endmodule

module CSK_MUX (input a, b, s, output y);
  wire ns, t1, t2;
  not n1 (ns, s);
  and a1 (t1, a, ns);
  and a2 (t2, b, s);
  or o1 (y, t1, t2);
endmodule

module CSK4_Structural (input [3:0] A, B, input Cin, output [3:0] S, output Cout);
  wire [3:0] P;
  wire r1, rc2, r3, rc4, p0, p1, c2;
  xor px0 (P[0], A[0], B[0]);
  xor px1 (P[1], A[1], B[1]);
  xor px2 (P[2], A[2], B[2]);
  xor px3 (P[3], A[3], B[3]);
  CSK_FA f0 (A[0], B[0], Cin, S[0], r1);
  CSK_FA f1 (A[1], B[1], r1, S[1], rc2);
  and k0 (p0, P[0], P[1]);
  CSK_MUX m0 (rc2, Cin, p0, c2);
  CSK_FA f2 (A[2], B[2], c2, S[2], r3);
  CSK_FA f3 (A[3], B[3], r3, S[3], rc4);
  and k1 (p1, P[2], P[3]);
  CSK_MUX m1 (rc4, c2, p1, Cout);
endmodule
