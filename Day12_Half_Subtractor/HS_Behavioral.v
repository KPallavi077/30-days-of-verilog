module HS_Behavioral (input A, B, output reg Diff, Bout);
  always @(*) begin
    case ({A, B})
      2'b00: {Bout, Diff} = 2'b00;
      2'b01: {Bout, Diff} = 2'b11;
      2'b10: {Bout, Diff} = 2'b01;
      2'b11: {Bout, Diff} = 2'b00;
    endcase
  end
endmodule
