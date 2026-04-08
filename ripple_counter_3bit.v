module ripple_counter_3bit(
    input clk,
    input rst,
    output [2:0] q
);

    tff t0(
        .clk(clk),
        .rst(rst),
        .t(1'b1),
        .q(q[0])
    );

    tff t1(
        .clk(q[0]),
        .rst(rst),
        .t(1'b1),
        .q(q[1])
    );

    tff t2(
        .clk(q[1]),
        .rst(rst),
        .t(1'b1),
        .q(q[2])
    );

endmodule
