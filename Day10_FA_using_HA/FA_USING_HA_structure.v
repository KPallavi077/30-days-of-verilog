module FA_USING_HA_structural (input a, b, cin, output sum, carry);
  wire s1, c1, c2;
  xor s1_i (s1, a, b);
  and c1_i (c1, a, b);
  xor sum_i (sum, s1, cin);
  and c2_i (c2, s1, cin);
  or carry_i (carry, c1, c2);
endmodule
