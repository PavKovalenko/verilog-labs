`timescale 1ns/1ps

module top_module_tb;

logic one;

top_module uut (
    .one(one)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);

    #1;

    $display("Simulation started");

    #1;

    $display("one = %b", one);

    if(one == 1`b1)
        $display("TEST PASSED");
    else 
        $display("TEST FAILED");

    $finish;
    

end

endmodule