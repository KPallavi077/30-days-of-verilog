module CSK4_Behavioral (input [3:0] A, B, input Cin, output reg [3:0] S, output reg Cout);
  reg [3:0] P;
  reg [2:0] low, high;
  reg c2;
  always @(*) begin
    P = A ^ B;
    low = A[1:0] + B[1:0] + Cin;
    if (P[1] & P[0])
      c2 = Cin;
    else
      c2 = low[2];
    high = A[3:2] + B[3:2] + c2;
    S[1:0] = low[1:0];
    S[3:2] = high[1:0];
    if (P[3] & P[2])
      Cout = c2;
    else
      Cout = high[2];
  end
endmodule
