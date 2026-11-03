module ENC42_Dataflow (input I0, I1, I2, I3, output Y1, Y0);
  assign Y1 = I2 | I3;
  assign Y0 = I1 | I3;
endmodule
