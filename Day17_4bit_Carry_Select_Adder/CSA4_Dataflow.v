module CSA4_Dataflow (input [3:0] A, B, input Cin, output [3:0] S, output Cout);
  wire [2:0] low, hi0, hi1;
  assign low = A[1:0] + B[1:0] + Cin;
  assign hi0 = A[3:2] + B[3:2];
  assign hi1 = A[3:2] + B[3:2] + 1'b1;
  assign S[1:0] = low[1:0];
  assign {Cout, S[3:2]} = low[2] ? hi1 : hi0;
endmodule
