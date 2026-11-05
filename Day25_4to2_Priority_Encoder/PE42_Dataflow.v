module PE42_Dataflow (input I0, I1, I2, I3, output Y1, Y0, V);
  assign Y1 = I3 | I2;
  assign Y0 = I3 | (~I2 & I1);
  assign V = I3 | I2 | I1 | I0;
endmodule
