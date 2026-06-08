module top_module(
    input[3:0] a,
    input[3:0] b,
    input[2:0] op,
    output logic[3:0] out
);

    always_comb begin
        case(op)
            3'b000: out = a + b;    // add
            3'b001: out = a - b;    // sub
            3'b010: out = a & b;    // and
            3'b011: out = a | b;    // or
            3'b100: out = a ^ b;    // xor
            3'b101: out = a << 1;   // shl
            3'b110: out = a >> 1;   // shr
            3'b111: out = ~a;       // not
        endcase 
    end

endmodule