module full_subtractor (
    input a, b, bin,
    output diff, bout
);
    wire x1, w1, w2, w3;
    xor g1(x1, a, b);
    xor g2(diff, x1, bin);
    not g3(w1, a);
    and g4(w2, w1, b);
    and g5(w3, w1, bin);
    or  g6(bout, w2, w3);
endmodule

module subtractor_4bit_gatelevel (
    input [3:0] A,
    input [3:0] B,
    output [3:0] Diff,
    output Borrow
);
    wire b1, b2, b3;
    full_subtractor fs0 (A[0], B[0], 1'b0, Diff[0], b1);
    full_subtractor fs1 (A[1], B[1], b1,   Diff[1], b2);
    full_subtractor fs2 (A[2], B[2], b2,   Diff[2], b3);
    full_subtractor fs3 (A[3], B[3], b3,   Diff[3], Borrow);
endmodule
