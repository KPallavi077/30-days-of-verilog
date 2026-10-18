module subtractor_4bit_dataflow (
    input [3:0] A,
    input [3:0] B,
    output [3:0] Diff,
    output Borrow
);
    assign {Borrow, Diff} = A - B;
endmodule
