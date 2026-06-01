`timescale 1ns/1ns

module top_module_tb;

logic[1:0] a,b,c;
logic[1:0] x,y,z,w;

top_module uut(
    .a(a),
    .b(b),
    .c(c),
    .w(w),
    .x(x),
    .y(y),
    .z(z)
);

initial begin
    a = 2'b00;
    b = 2'b01;
    c = 2'b10;

    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);

    $display("Simulation started");

    #1;

    $display("w: %b", w);
    $display("x: %b", x);
    $display("y: %b", y);
    $display("z: %b", z);

    if(w == 2'b00 && x == 2'b01 && y == 2'b01 && z == 2'b10)
        $display("Test passed");
    else 
        $display("Test failed");

    #1;
    

end

endmodule