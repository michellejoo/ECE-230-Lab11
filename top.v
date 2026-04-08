module top(
    input btnC,
    input btnU,
    output [6:0] led
);

    wire [2:0] rc_state;
    wire [2:0] mc_state;
    wire mc_out;

    ripple_counter_3bit rc0(
        .clk(btnC),
        .rst(btnU),
        .q(rc_state)
    );

    modulo_divider_6 mc0(
        .clk(btnC),
        .rst(btnU),
        .state(mc_state),
        .out(mc_out)
    );

    assign led = {mc_out, mc_state, rc_state};

endmodule
