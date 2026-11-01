module DEC24_Test;
  reg A1, A0;
  wire Y0, Y1, Y2, Y3;
  DEC24_Dataflow g1 (A1, A0, Y0, Y1, Y2, Y3);
  initial begin
    A1 = 0; A0 = 0; #10;
    A1 = 0; A0 = 1; #10;
    A1 = 1; A0 = 0; #10;
    A1 = 1; A0 = 1; #10;
  end
  initial
    $monitor($time, " A1A0 = %b%b, Y3-Y0 = %b%b%b%b", A1, A0, Y3, Y2, Y1, Y0);
  initial
    #50 $finish;
endmodule
