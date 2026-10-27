module MUX41_Structural (input I0, I1, I2, I3, S1, S0, output Y);
  wire nS1, nS0, t0, t1, t2, t3;
  not n1 (nS1, S1);
  not n2 (nS0, S0);
  and a0 (t0, I0, nS1, nS0);
  and a1 (t1, I1, nS1, S0);
  and a2 (t2, I2, S1, nS0);
  and a3 (t3, I3, S1, S0);
  or o1 (Y, t0, t1, t2, t3);
endmodule
