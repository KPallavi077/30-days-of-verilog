module PE42_Behavioral (input I0, I1, I2, I3, output reg Y1, Y0, V);
  always @(*) begin
    V = 1'b1;
    if (I3)
      {Y1, Y0} = 2'b11;
    else if (I2)
      {Y1, Y0} = 2'b10;
    else if (I1)
      {Y1, Y0} = 2'b01;
    else if (I0)
      {Y1, Y0} = 2'b00;
    else begin
      {Y1, Y0} = 2'b00;
      V = 1'b0;
    end
  end
endmodule
