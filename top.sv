module top (
);

    logic clk;

    // 48MHz clock
    SB_HFOSC #(
        .CLKHF_DIV("0b00")
    ) osc (
        .CLKHFPU(1'b1), // Power up
        .CLKHFEN(1'b1), // Enable
        .CLKHF(clk) // Clock output
    );

endmodule