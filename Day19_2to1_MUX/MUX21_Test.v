module MUX21_Test;
  reg I0, I1, S;
  wire Y;
  MUX21_Dataflow g1 (I0, I1, S, Y);
  initial begin
    S = 0; I1 = 0; I0 = 0; #10;
    S = 0; I1 = 0; I0 = 1; #10;
    S = 0; I1 = 1; I0 = 0; #10;
    S = 0; I1 = 1; I0 = 1; #10;
    S = 1; I1 = 0; I0 = 0; #10;
    S = 1; I1 = 0; I0 = 1; #10;
    S = 1; I1 = 1; I0 = 0; #10;
    S = 1; I1 = 1; I0 = 1; #10;
  end
  initial
    $monitor($time, " S = %b, I1 = %b, I0 = %b, Y = %b", S, I1, I0, Y);
  initial
    #100 $finish;
endmodule
