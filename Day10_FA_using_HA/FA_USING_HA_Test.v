module FA_USING_HA_Test;
  reg a, b, cin;
  wire sum, carry;
  FA_USING_HA g1 (a, b, cin, sum, carry);
  initial
  begin
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
