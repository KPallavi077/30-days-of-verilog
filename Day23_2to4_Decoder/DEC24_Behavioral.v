module DEC24_Behavioral (input A1, A0, output reg Y0, Y1, Y2, Y3);
  always @(*) begin
    Y0 = 1'b0;
    Y1 = 1'b0;
    Y2 = 1'b0;
    Y3 = 1'b0;
    case ({A1, A0})
      2'b00: Y0 = 1'b1;
      2'b01: Y1 = 1'b1;
      2'b10: Y2 = 1'b1;
      2'b11: Y3 = 1'b1;
    endcase
  end
endmodule
