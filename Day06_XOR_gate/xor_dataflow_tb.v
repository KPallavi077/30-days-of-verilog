module xor_dataflow_tb;
  reg a, b;
  wire y;
  xor_dataflow g1 (a, b, y);
  initial begin
    a = 1'b0; b = 1'b0; #10;
    a = 1'b0; b = 1'b1; #10;
    a = 1'b1; b = 1'b0; #10;
    a = 1'b1; b = 1'b1; #10;
  end
  initial
    $monitor($time, " a = %b, b = %b, y = %b", a, b, y);
  initial
    #100 $finish;
endmodule
