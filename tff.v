module tff(
    input clk,
    input rst,
    input t,
    output q
);

    wire q_int;
    wire d;

    assign d = t ^ q_int;

    dff d0(
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q_int)
    );

    assign q = q_int;

endmodule
