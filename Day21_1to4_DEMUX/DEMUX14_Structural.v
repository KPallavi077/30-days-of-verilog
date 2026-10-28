module DEMUX14_Structural (input D, S1, S0, output Y0, Y1, Y2, Y3);
  wire nS1, nS0;
  not n1 (nS1, S1);
  not n2 (nS0, S0);
  and a0 (Y0, D, nS1, nS0);
  and a1 (Y1, D, nS1, S0);
  and a2 (Y2, D, S1, nS0);
  and a3 (Y3, D, S1, S0);
endmodule
