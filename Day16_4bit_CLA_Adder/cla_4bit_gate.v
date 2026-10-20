module cla_4bit_gate (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
);
    wire [3:0] P, G;
    wire c1, c2, c3, c4;

    xor x0 (P[0], A[0], B[0]);
    xor x1 (P[1], A[1], B[1]);
    xor x2 (P[2], A[2], B[2]);
    xor x3 (P[3], A[3], B[3]);

    and a0 (G[0], A[0], B[0]);
    and a1 (G[1], A[1], B[1]);
    and a2 (G[2], A[2], B[2]);
    and a3 (G[3], A[3], B[3]);

    wire p0_cin;
    and and_c1 (p0_cin, P[0], Cin);
    or  or_c1  (c1, G[0], p0_cin);

    wire p1_g0, p1_p0_cin;
    and and_c2_1 (p1_g0, P[1], G[0]);
    and and_c2_2 (p1_p0_cin, P[1], P[0], Cin);
    or  or_c2    (c2, G[1], p1_g0, p1_p0_cin);

    wire p2_g1, p2_p1_g0, p2_p1_p0_cin;
    and and_c3_1 (p2_g1, P[2], G[1]);
    and and_c3_2 (p2_p1_g0, P[2], P[1], G[0]);
    and and_c3_3 (p2_p1_p0_cin, P[2], P[1], P[0], Cin);
    or  or_c3    (c3, G[2], p2_g1, p2_p1_g0, p2_p1_p0_cin);

    wire p3_g2, p3_p2_g1, p3_p2_p1_g0, p3_p2_p1_p0_cin;
    and and_c4_1 (p3_g2, P[3], G[2]);
    and and_c4_2 (p3_p2_g1, P[3], P[2], G[1]);
    and and_c4_3 (p3_p2_p1_g0, P[3], P[2], P[1], G[0]);
    and and_c4_4 (p3_p2_p1_p0_cin, P[3], P[2], P[1], P[0], Cin);
    or  or_c4    (c4, G[3], p3_g2, p3_p2_g1, p3_p2_p1_g0, p3_p2_p1_p0_cin);

    assign Cout = c4;

    xor sum0 (S[0], P[0], Cin);
    xor sum1 (S[1], P[1], c1);
    xor sum2 (S[2], P[2], c2);
    xor sum3 (S[3], P[3], c3);

endmodule
