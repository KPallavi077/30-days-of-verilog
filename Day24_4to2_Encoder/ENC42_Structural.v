module ENC42_Structural (input I0, I1, I2, I3, output Y1, Y0);
  or o1 (Y1, I2, I3);
  or o2 (Y0, I1, I3);
endmodule
