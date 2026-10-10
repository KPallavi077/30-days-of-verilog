module halfadder_behavioral(input a, b, output reg sum, carry);
  always @(*)
  begin
    case ({a, b})
      2'b00: {carry, sum} = 2'b00;
      2'b01: {carry, sum} = 2'b01;
      2'b10: {carry, sum} = 2'b01;
      2'b11: {carry, sum} = 2'b10;
    endcase
  end
endmodule
