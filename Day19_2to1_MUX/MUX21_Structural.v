module MUX21_Structural (input I0, I1, S, output Y);
  wire nS, t1, t2;
  not n1 (nS, S);
  and a1 (t1, I0, nS);
  and a2 (t2, I1, S);
  or o1 (Y, t1, t2);
endmodule
