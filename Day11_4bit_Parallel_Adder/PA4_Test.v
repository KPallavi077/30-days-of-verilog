module PA4_Test;
  reg [3:0] A, B;
  reg Cin0;
  wire [3:0] S;
  wire Cout;
  PA4_Structural g1 (A, B, Cin0, S, Cout);
  initial begin
    A = 4'd0;  B = 4'd0;  Cin0 = 0; #10;
    A = 4'd3;  B = 4'd5;  Cin0 = 0; #10;
    A = 4'd7;  B = 4'd8;  Cin0 = 0; #10;
    A = 4'd9;  B = 4'd6;  Cin0 = 1; #10;
    A = 4'd15; B = 4'd1;  Cin0 = 0; #10;
    A = 4'd15; B = 4'd15; Cin0 = 1; #10;
  end
  initial
    $monitor($time, " A = %d, B = %d, Cin0 = %b, S = %d, Cout = %b", A, B, Cin0, S, Cout);
  initial
    #100 $finish;
endmodule
