`timescale 1ns/1ns

module top_module_tb;

logic [3:0] a,b;
logic [2:0] op;
logic [3:0] out;

top_module uut(
    .a(a),
    .b(b),
    .op(op),
    .out(out)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);

    $display("Sum verification");
    op = 3'b000;
    a = 3;
    b = 7;
    #1
    $display("0 + 1 = %d(%b)", out, out);
    if(out != 10)
        begin
        $display("Test Failed on sum operation");
        $finish;
        end

    $display("Minus verification");
    op = 3'b001;
    a = 6;
    b = 4;
    #1
    $display("6 - 4 = %d(%b)", out, out);
    if(out != 2)
        begin
        $display("Test Failed on minus operation");
        $finish;
        end
            
    $display("And verification");
    op = 3'b010;
    a = 4'b0101;
    b = 4'b1111;
    #1
    $display("4'b0101 & 4'b1111 = %d(%b)", out, out);
    if(out != 4'b0101)
        begin
        $display("Test Failed on and operation");
        $finish;
        end
            
    $display("Or verification");
    op = 3'b011;
    a = 1;
    b = 0;
    #1
    $display("1 | 0 = %d(%b)", out, out);
    if(out != 1)
        begin
        $display("Test Failed on OR operation");
        $finish;
        end
              
    $display("XOr verification");
    op = 3'b100;
    a = 4'b0110;
    b = 4'b1011;
    #1
    $display("4'b0110 xor 4'b1011 = %d(%b)", out, out);
    if(out != 4'b1101)
        begin
        $display("Test Failed on XOR operation");
        $finish;
        end
          
    $display("shl verification");
    op = 3'b101;
    a = 4'b0111;
    #1
    $display("4'b0111 shl = %d(%b)", out, out);
    if(out != 4'b1110)
        begin
        $display("Test Failed on shl operation");
        $finish;
        end
           
    $display("shr verification");
    op = 3'b110;
    a = 4'b1000;
    #1
    $display("4'b1000 shr = %d(%b)", out, out);
    if(out != 4'b0100)
        begin
        $display("Test Failed on shr operation");
        $finish;
        end
             
    $display("not verification");
    op = 3'b111;
    a = 4'b1001;
    #1
    $display("4'b1001 not = %d(%b)", out, out);
    if(out != 4'b0110)
        begin
        $display("Test Failed on NOT operation");
        $finish;
        end

    $display("All tests passed successfully");
                                                  
end

endmodule