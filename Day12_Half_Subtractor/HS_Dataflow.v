module HS_Dataflow (input A, B, output Diff, Bout);
  assign Diff = A ^ B;
  assign Bout = ~A & B;
endmodule
