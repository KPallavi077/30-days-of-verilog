module CSK4_Dataflow (input [3:0] A, B, input Cin, output [3:0] S, output Cout);
  wire [3:0] P;
  wire [2:0] low, high;
  wire c2;
  assign P = A ^ B;
  assign low = A[1:0] + B[1:0] + Cin;
  assign c2 = (P[1] & P[0]) ? Cin : low[2];
  assign high = A[3:2] + B[3:2] + c2;
  assign S[1:0] = low[1:0];
  assign S[3:2] = high[1:0];
  assign Cout = (P[3] & P[2]) ? c2 : high[2];
endmodule
