module FA_Behavioral(input a, b, cin, output reg sum, carry);
  always @(*)
  begin
    case ({a, b, cin})
      3'b000: {carry, sum} = 2'b00;
      3'b001: {carry, sum} = 2'b01;
      3'b010: {carry, sum} = 2'b01;
      3'b011: {carry, sum} = 2'b10;
      3'b100: {carry, sum} = 2'b01;
      3'b101: {carry, sum} = 2'b10;
      3'b110: {carry, sum} = 2'b10;
      3'b111: {carry, sum} = 2'b11;
    endcase
  end
endmodule
