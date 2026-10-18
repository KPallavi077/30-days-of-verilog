module subtractor_4bit_behavioral (
    input [3:0] A,
    input [3:0] B,
    output reg [3:0] Diff,
    output reg Borrow
);
    always @(*) begin
        {Borrow, Diff} = A - B;
    end
endmodule
