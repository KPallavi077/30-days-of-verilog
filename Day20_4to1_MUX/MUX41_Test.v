module MUX41_Test;
  reg I0, I1, I2, I3, S1, S0;
  wire Y;
  MUX41_Dataflow g1 (I0, I1, I2, I3, S1, S0, Y);
  initial 
    begin
    I0 = 0; I1 = 1; I2 = 1; I3 = 0;
    S1 = 0; S0 = 0; #10;
    S1 = 0; S0 = 1; #10;
    S1 = 1; S0 = 0; #10;
    S1 = 1; S0 = 1; #10;
    I0 = 1; I1 = 0; I2 = 0; I3 = 1;
    S1 = 0; S0 = 0; #10;
    S1 = 0; S0 = 1; #10;
    S1 = 1; S0 = 0; #10;
    S1 = 1; S0 = 1; #10;
  end
  initial
    $monitor($time, " S1S0 = %b%b, I3-I0 = %b%b%b%b, Y = %b", S1, S0, I3, I2, I1, I0, Y);
  initial
    #100 $finish;
endmodule
