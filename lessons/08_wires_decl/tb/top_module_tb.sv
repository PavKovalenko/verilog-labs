`timescale 1ns/100ps

module top_module_tb;

logic a;
logic b;
logic c;
logic d;
logic out;
logic out_n;

top_module uut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .out(out),
    .out_n(out_n)
);

initial begin
    
    a = 0;
    b = 0;
    c = 0;
    d = 0;

    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);
    
    #1

    if(out != 0 && out_n != 1)
        begin
        $display("Test Failed 1");
        $finish;
        end

    a = 1;
    b = 1;
    c = 1;
    d = 1;

    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);
    
    #1

    if(out != 1 && out_n != 0)
        begin
        $display("Test Failed 2");
        $finish;
        end

    a = 0;
    b = 1;
    c = 1;
    d = 0;

    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);
    
    #1

    if(out != 0 && out_n != 1)
        begin
        $display("Test Failed 2");
        $finish;
        end


    $display("Test Success");


end

endmodule