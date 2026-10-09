`timescale 1ns/100ps

module top_module_tb;
    logic clk = 0, rst = 1;
    logic red, red_yellow, green, yellow;

    top_module dut (.*);

    always #5 clk = ~clk;

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, top_module_tb);
    
        @(posedge clk); #1 rst = 0;
        repeat (8) begin
            $display("red=%b red_yellow=%b green=%b yellow=%b",
                     red, red_yellow, green, yellow);
            @(posedge clk); #1;
        end
        $finish;
    end

endmodule
