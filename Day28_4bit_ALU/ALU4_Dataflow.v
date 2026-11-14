module ALU4_Dataflow (input [3:0] A, B, input [2:0] S, output [3:0] F);
  assign F = (S == 3'b000) ? 4'b0000 :
             (S == 3'b001) ? (B - A) :
             (S == 3'b010) ? (A - B) :
             (S == 3'b011) ? (A + B) :
             (S == 3'b100) ? (A ^ B) :
             (S == 3'b101) ? (A | B) :
             (S == 3'b110) ? (A & B) : 4'b1111;
endmodule
