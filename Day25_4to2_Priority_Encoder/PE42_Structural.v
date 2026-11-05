module PE42_Structural (input I0, I1, I2, I3, output Y1, Y0, V);
  wire nI2, t1;
  or o1 (Y1, I3, I2);
  not n1 (nI2, I2);
  and a1 (t1, nI2, I1);
  or o2 (Y0, I3, t1);
  or o3 (V, I3, I2, I1, I0);
endmodule
