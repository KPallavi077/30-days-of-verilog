module tb_subtractor_4bit;
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] Diff_df, Diff_gl, Diff_bh;
    wire Borrow_df, Borrow_gl, Borrow_bh;

    ps_4bit_dataflow  g3 (A, B, Diff_df, Borrow_df);
   ps_4bit_gatelevel gl (A, B, Diff_gl, Borrow_gl);
    ps_4bit_behavioral g2 (A, B, Diff_bh, Borrow_bh);

    initial begin
        A = 4'd10; B = 4'd4;  #10;
        A = 4'd5;  B = 4'd5;  #10;
        A = 4'd3;  B = 4'd7;  #10;
        A = 4'd15; B = 4'd0;  #10;
        A = 4'd0;  B = 4'd1;  #10;
        $finish;
    end
endmodule
