`timescale 1ns/1ps
module top_module(
    input logic clk,
    input logic rst,
    output logic green,
    output logic red,
    output logic yellow,
    output logic red_yellow); 

    typedef enum logic [1:0] {RED, RED_YELLOW, GREEN, YELLOW} state_t;
    state_t state;

    always_ff @(posedge clk) begin
        if (rst)
            state <= RED;
        else
            case (state)
                RED:        state <= RED_YELLOW;
                RED_YELLOW: state <= GREEN;
                GREEN:      state <= YELLOW;
                YELLOW:     state <= RED;
                default:    state <= RED;
            endcase
    end

    assign red        = (state == RED);
    assign red_yellow = (state == RED_YELLOW);
    assign green      = (state == GREEN);
    assign yellow     = (state == YELLOW);

endmodule
