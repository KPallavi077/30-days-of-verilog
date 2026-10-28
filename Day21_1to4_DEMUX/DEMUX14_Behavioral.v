module DEMUX14_Behavioral (input D, S1, S0, output reg Y0, Y1, Y2, Y3);
  always @(*) begin
    Y0 = 1'b0;
    Y1 = 1'b0;
    Y2 = 1'b0;
    Y3 = 1'b0;
    case ({S1, S0})
      2'b00: Y0 = D;
      2'b01: Y1 = D;
      2'b10: Y2 = D;
      2'b11: Y3 = D;
    endcase
  end
endmodule
