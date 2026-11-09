module CMP2_Test;
  reg A1, A0, B1, B0;
  wire GT, EQ, LT;
  integer i;
  CMP2_Dataflow g1 (A1, A0, B1, B0, GT, EQ, LT);
  initial begin
    for (i = 0; i < 16; i = i + 1) begin
      {A1, A0, B1, B0} = i[3:0];
      #10;
    end
  end
  initial
    $monitor($time, " A = %b%b, B = %b%b, GT = %b, EQ = %b, LT = %b", A1, A0, B1, B0, GT, EQ, LT);
  initial
    #170 $finish;
endmodule
