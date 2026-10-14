module HS_Test;
  reg A, B;
  wire Diff, Bout;
  HS_Dataflow g1 (A, B, Diff, Bout);
  initial begin
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
  end
  initial
    $monitor($time, " A = %b, B = %b, Diff = %b, Bout = %b", A, B, Diff, Bout);
  initial
    #50 $finish;
endmodule
