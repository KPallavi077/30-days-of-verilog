module CMP2_Dataflow (input A1, A0, B1, B0, output GT, EQ, LT);
  wire x1, x0;
  assign x1 = ~(A1 ^ B1);
  assign x0 = ~(A0 ^ B0);
  assign EQ = x1 & x0;
  assign GT = (A1 & ~B1) | (x1 & A0 & ~B0);
  assign LT = (~A1 & B1) | (x1 & ~A0 & B0);
endmodule
