module ENC42_Behavioral (input I0, I1, I2, I3, output reg Y1, Y0);
  always @(*) begin
    case ({I3, I2, I1, I0})
      4'b0001: {Y1, Y0} = 2'b00;
      4'b0010: {Y1, Y0} = 2'b01;
      4'b0100: {Y1, Y0} = 2'b10;
      4'b1000: {Y1, Y0} = 2'b11;
      default: {Y1, Y0} = 2'b00;
    endcase
  end
endmodule
