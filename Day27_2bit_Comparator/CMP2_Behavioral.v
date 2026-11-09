module CMP2_Behavioral (input A1, A0, B1, B0, output reg GT, EQ, LT);
  always @(*) begin
    GT = 1'b0;
    EQ = 1'b0;
    LT = 1'b0;
    if ({A1, A0} > {B1, B0})
      GT = 1'b1;
    else if ({A1, A0} == {B1, B0})
      EQ = 1'b1;
    else
      LT = 1'b1;
  end
endmodule
