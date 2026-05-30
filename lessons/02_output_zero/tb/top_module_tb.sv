`timescale 1ns/1ps

module top_module_tb;

logic zero;

top_module uut (
    .zero(zero)
);

initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);

    #1;

    $display("Simulation started");

    #1;

    $display("zero = %b", zero);

    if(zero == 1'b0)
        $display("TEST PASSED");
    else 
        $display("TEST FAILED");

    $finish;

end

endmodule