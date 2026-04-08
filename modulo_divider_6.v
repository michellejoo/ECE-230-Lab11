module modulo_divider_6(
    input clk,
    input rst,
    output [2:0] state,
    output out
);

    wire [2:0] q;
    wire [2:0] sum;
    wire [2:0] next_count;
    wire toggle_now;
    wire out_q;
    wire d_out;

    adder3 add0(
        .a(q),
        .b(3'b001),
        .sum(sum)
    );

    assign toggle_now = (q == 3'b101);
    assign next_count = toggle_now ? 3'b000 : sum;
    assign d_out = toggle_now ? ~out_q : out_q;

    dff dff0(
        .clk(clk),
        .rst(rst),
        .d(next_count[0]),
        .q(q[0])
    );

    dff dff1(
        .clk(clk),
        .rst(rst),
        .d(next_count[1]),
        .q(q[1])
    );

    dff dff2(
        .clk(clk),
        .rst(rst),
        .d(next_count[2]),
        .q(q[2])
    );

    dff dff_out(
        .clk(clk),
        .rst(rst),
        .d(d_out),
        .q(out_q)
    );

    assign state = q;
    assign out = out_q;

endmodule
