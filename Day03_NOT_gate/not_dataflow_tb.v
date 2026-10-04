module not_dataflow_tb;
  reg a;
  wire y;
  not_dataflow g1 (a, y);
  initial begin
    a = 1'b0; #10;
    a = 1'b1; #10;
  end
  initial
    $monitor($time, " a = %b, y = %b", a, y);
  initial
    #100 $finish;
endmodule
