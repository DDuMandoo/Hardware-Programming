`timescale 1ns / 1ps


module decoder24(
    input a, b,
    output A, B, C, D
    );
    
    assign A = ~a&~b;
    assign B = ~a&b;
    assign C = a&~b;
    assign D = a&b;
    
endmodule