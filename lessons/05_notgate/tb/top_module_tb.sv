module top_module_tb;

logic in;
logic out;

top_module uut(
    .in(in),
    .out(out)
);

initial begin
    in = 0;
    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);

    if(out != 0) begin
        $display("Test Failed");
        $finish;
    end

    #1
    in = 1;

    if(out != 1) begin
        $display("Test Failed");
        $finish;
    end

    $display("Success");

end

endmodule