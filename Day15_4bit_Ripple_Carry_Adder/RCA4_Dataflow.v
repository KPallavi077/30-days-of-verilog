module RCA4_Dataflow (input [3:0] A, B, input Cin0, output [3:0] S, output Cout);
  wire Cin1, Cin2, Cin3;
  assign S[0] = A[0] ^ B[0] ^ Cin0;
  assign Cin1 = (A[0] & B[0]) | (B[0] & Cin0) | (A[0] & Cin0);
  assign S[1] = A[1] ^ B[1] ^ Cin1;
  assign Cin2 = (A[1] & B[1]) | (B[1] & Cin1) | (A[1] & Cin1);
  assign S[2] = A[2] ^ B[2] ^ Cin2;
  assign Cin3 = (A[2] & B[2]) | (B[2] & Cin2) | (A[2] & Cin2);
  assign S[3] = A[3] ^ B[3] ^ Cin3;
  assign Cout = (A[3] & B[3]) | (B[3] & Cin3) | (A[3] & Cin3);
endmodule
