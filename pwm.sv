module PWM #(parameter int N = 8) // figure this out based on signal levels later
( 
    input logic clk,
    input logic [N-1:0] period,
    input logic [N-1:0] duty,
    output logic pwm
);
    
    logic reset;
    logic [N-1: 0] sum, Q, next;

    assign sum = next + 1'b1;
    assign next = reset ? '0 : Q;
    assign reset = period == Q;
    assign pwm = duty > Q;

    always_ff @(posedge clk) begin
        Q <= sum;
    end

endmodule