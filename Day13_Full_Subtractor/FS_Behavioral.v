module FS_Behavioral (input A, B, Bin, output reg Diff, Bout);
  always @(*) begin
    case ({A, B, Bin})
      3'b000: {Bout, Diff} = 2'b00;
      3'b001: {Bout, Diff} = 2'b11;
      3'b010: {Bout, Diff} = 2'b11;
      3'b011: {Bout, Diff} = 2'b10;
      3'b100: {Bout, Diff} = 2'b01;
      3'b101: {Bout, Diff} = 2'b00;
      3'b110: {Bout, Diff} = 2'b00;
      3'b111: {Bout, Diff} = 2'b11;
    endcase
  end
endmodule
