`timescale 1ns/1ns

module top_module_tb;

logic in;
logic out;

top_module uut(
    .in(in),
    .out(out)
);

initial begin

    in = 1'b0;

    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);

    $display("Simulation started");

    #1;

    $display("in = %b", in);
    $display("out = %b", out);

    if(out == 1'b0)
        $display("First TEST PASSED");
    else 
        $display("First TEST FAILED");

    #1;

    in = 1'b1;

    #1;

    $display("in = %b", in);
    $display("out = %b", out);

    if(out == 1'b1)
        $display("Second TEST PASSED");
    else 
        $display("Second TEST FAILED");

    $finish;

end


endmodule