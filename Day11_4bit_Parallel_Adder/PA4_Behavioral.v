module PA4_Behavioral (input [3:0] A, B, input Cin0, output reg [3:0] S, output reg Cout);
  always @(*) begin
    {Cout, S} = A + B + Cin0;
  end
endmodule
