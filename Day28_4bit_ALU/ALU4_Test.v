module ALU4_Test;
  reg [3:0] A, B;
  reg [2:0] S;
  wire [3:0] F;
  ALU4_Dataflow g1 (A, B, S, F);
  initial begin
    A = 4'b0101; B = 4'b1001; S = 3'b000;
    #10 S = 3'b001;
    #10 S = 3'b010;
    #10 S = 3'b011;
    #10 S = 3'b100;
    #10 S = 3'b101;
    #10 S = 3'b110;
    #10 S = 3'b111;
    #30 A = 4'b0100; B = 4'b0010; S = 3'b000;
    #10 S = 3'b001;
    #10 S = 3'b010;
    #10 S = 3'b011;
    #10 S = 3'b100;
    #10 S = 3'b101;
    #10 S = 3'b110;
    #10 S = 3'b111;
  end
  initial
    $monitor($time, " S=%b, A=%b, B=%b, F=%b", S, A, B, F);
  initial
    #200 $finish;
endmodule
