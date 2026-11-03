module ENC42_Test;
  reg I0, I1, I2, I3;
  wire Y1, Y0;
  ENC42_Dataflow g1 (I0, I1, I2, I3, Y1, Y0);
  initial begin
    I3 = 0; I2 = 0; I1 = 0; I0 = 1; #10;
    I3 = 0; I2 = 0; I1 = 1; I0 = 0; #10;
    I3 = 0; I2 = 1; I1 = 0; I0 = 0; #10;
    I3 = 1; I2 = 0; I1 = 0; I0 = 0; #10;
  end
  initial
    $monitor($time, " I3-I0 = %b%b%b%b, Y1Y0 = %b%b", I3, I2, I1, I0, Y1, Y0);
  initial
    #50 $finish;
endmodule
