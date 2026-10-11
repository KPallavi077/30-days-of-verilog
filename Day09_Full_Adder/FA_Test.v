module FA_Test;
  reg a, b, cin;
  wire sum, carry;

  // NOTE: change the module name below to test another style:
  //   FA_Data (dataflow), FA_Structural (structural), FA_Behavioral (behavioral)
  // Keep only ONE instance active at a time.
  FA_Data g1 (a, b, cin, sum, carry);

  initial begin
    a = 0; b = 0; cin = 0; #10;
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    a = 1; b = 0; cin = 1; #10;
    a = 1; b = 1; cin = 0; #10;
    a = 1; b = 1; cin = 1; #10;
  end

  initial
    $monitor($time, " a = %b, b = %b, cin = %b, sum = %b, carry = %b", a, b, cin, sum, carry);

  initial
    #100 $finish;
endmodule
