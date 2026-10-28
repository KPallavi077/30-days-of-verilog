module DEMUX14_Test;
  reg D, S1, S0;
  wire Y0, Y1, Y2, Y3;
  DEMUX14_Dataflow g1 (D, S1, S0, Y0, Y1, Y2, Y3);
  initial begin
    D = 1; S1 = 0; S0 = 0; #10;
    D = 1; S1 = 0; S0 = 1; #10;
    D = 1; S1 = 1; S0 = 0; #10;
    D = 1; S1 = 1; S0 = 1; #10;
    D = 0; S1 = 0; S0 = 0; #10;
    D = 0; S1 = 0; S0 = 1; #10;
    D = 0; S1 = 1; S0 = 0; #10;
    D = 0; S1 = 1; S0 = 1; #10;
  end
  initial
    $monitor($time, " D = %b, S1S0 = %b%b, Y3-Y0 = %b%b%b%b", D, S1, S0, Y3, Y2, Y1, Y0);
  initial
    #100 $finish;
endmodule
