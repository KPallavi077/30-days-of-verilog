module FS_Test;
  reg A, B, Bin;
  wire Diff, Bout;
  FS_Dataflow g1 (A, B, Bin, Diff, Bout);
  initial begin
    A = 0; B = 0; Bin = 0; #10;
    A = 0; B = 0; Bin = 1; #10;
    A = 0; B = 1; Bin = 0; #10;
    A = 0; B = 1; Bin = 1; #10;
    A = 1; B = 0; Bin = 0; #10;
    A = 1; B = 0; Bin = 1; #10;
    A = 1; B = 1; Bin = 0; #10;
    A = 1; B = 1; Bin = 1; #10;
  end
  initial
    $monitor($time, " A = %b, B = %b, Bin = %b, Diff = %b, Bout = %b", A, B, Bin, Diff, Bout);
  initial
    #100 $finish;
endmodule
