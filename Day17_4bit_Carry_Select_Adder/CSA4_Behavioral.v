module CSA4_Behavioral (input [3:0] A, B, input Cin, output reg [3:0] S, output reg Cout);
  reg [2:0] low, hi0, hi1;
  always @(*) begin
    low = A[1:0] + B[1:0] + Cin;
    hi0 = A[3:2] + B[3:2];
    hi1 = A[3:2] + B[3:2] + 1'b1;
    S[1:0] = low[1:0];
    if (low[2])
      {Cout, S[3:2]} = hi1;
    else
      {Cout, S[3:2]} = hi0;
  end
endmodule
