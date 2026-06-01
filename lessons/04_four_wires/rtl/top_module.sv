module top_module(
    input [1:0] a,b,c,
    output [1:0] w,x,y,z
);

    assign w = a;
    assign x = b;
    assign y = b;
    assign z = c;

endmodule