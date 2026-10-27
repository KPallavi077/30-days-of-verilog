module MUX41_Behavioral (input I0, I1, I2, I3, S1, S0, output reg Y);
  always @(*) begin
    case ({S1, S0})
      2'b00: Y = I0;
      2'b01: Y = I1;
      2'b10: Y = I2;
      2'b11: Y = I3;
    endcase
  end
endmodule
