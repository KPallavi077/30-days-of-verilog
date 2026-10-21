module CSA4_Test;
  reg [3:0] A, B;
  reg Cin;
  wire [3:0] S;
  wire Cout;
  CSA4_Dataflow g1 (A, B, Cin, S, Cout);
  initial begin
    A = 4'd0;  B = 4'd0;  Cin = 0; #10;
    A = 4'd3;  B = 4'd5;  Cin = 0; #10;
    A = 4'd7;  B = 4'd8;  Cin = 0; #10;
    A = 4'd9;  B = 4'd6;  Cin = 1; #10;
    A = 4'd15; B = 4'd1;  Cin = 0; #10;
    A = 4'd10; B = 4'd5;  Cin = 0; #10;
    A = 4'd15; B = 4'd15; Cin = 1; #10;
  end
  initial
    $monitor($time, " A = %d, B = %d, Cin = %b, S = %d, Cout = %b", A, B, Cin, S, Cout);
  initial
    #100 $finish;
endmodule
