module ADD4 (input [3:0] a, b, output [3:0] y);
  assign y = a + b;
endmodule

module SUB4 (input [3:0] a, b, output [3:0] y);
  assign y = a - b;
endmodule

module MUX81 (input [3:0] I0, I1, I2, I3, I4, I5, I6, I7, input [2:0] S, output reg [3:0] Y);
  always @(*) begin
    case (S)
      3'b000: Y = I0;
      3'b001: Y = I1;
      3'b010: Y = I2;
      3'b011: Y = I3;
      3'b100: Y = I4;
      3'b101: Y = I5;
      3'b110: Y = I6;
      3'b111: Y = I7;
    endcase
  end
endmodule

module ALU4_Structural (input [3:0] A, B, input [2:0] S, output [3:0] F);
  wire [3:0] d_ba, d_ab, d_add, d_xor, d_or, d_and;
  SUB4 u1 (B, A, d_ba);
  SUB4 u2 (A, B, d_ab);
  ADD4 u3 (A, B, d_add);
  xor x0 (d_xor[0], A[0], B[0]);
  xor x1 (d_xor[1], A[1], B[1]);
  xor x2 (d_xor[2], A[2], B[2]);
  xor x3 (d_xor[3], A[3], B[3]);
  or o0 (d_or[0], A[0], B[0]);
  or o1 (d_or[1], A[1], B[1]);
  or o2 (d_or[2], A[2], B[2]);
  or o3 (d_or[3], A[3], B[3]);
  and a0 (d_and[0], A[0], B[0]);
  and a1 (d_and[1], A[1], B[1]);
  and a2 (d_and[2], A[2], B[2]);
  and a3 (d_and[3], A[3], B[3]);
  MUX81 m1 (4'b0000, d_ba, d_ab, d_add, d_xor, d_or, d_and, 4'b1111, S, F);
endmodule
