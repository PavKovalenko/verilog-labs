`timescale 1ns/100ps

module top_module_tb;

logic a;
logic b;
logic out;

top_module uut(
    .a(a),
    .b(b),
    .out(out)
);

initial begin
    
    a = 0;
    b = 0;

    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);

    if(out != 1)
        begin
        $display("Test Failed 1");
        $finish;
        end

    #1

    a = 1;
    b = 0;
    
    #1
    
    if(out != 0)
        begin
        $display("Test Failed 2");
        $finish;
        end

    #1

    a = 1;
    b = 1;

    #1

    if(out != 0)
        begin
        $display("Test Failed 3");
        $finish;
        end

    $display("Test Success");

end

endmodule