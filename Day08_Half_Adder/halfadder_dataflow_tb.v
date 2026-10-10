module halfadder_dataflow_tb;
  reg a, b;
  wire sum, carry;

  // NOTE: change the module name below to test another style:
  //   halfadder_dataflow    (dataflow)
  //   halfadder_structural  (structural)
  //   halfadder_behavioral  (behavioral)
  // Keep only ONE instance active at a time.
  halfadder_dataflow g1 (a, b, sum, carry);

  initial begin
    a = 1'b0; b = 1'b0; #30;
    a = 1'b0; b = 1'b1; #30;
    a = 1'b1; b = 1'b0; #30;
    a = 1'b1; b = 1'b1; #30;
  end

  initial
    $monitor($time, " a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);

  initial
    #120 $finish;
endmodule
