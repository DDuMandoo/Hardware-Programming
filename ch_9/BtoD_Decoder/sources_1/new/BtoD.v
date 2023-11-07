`timescale 1ns / 1ps


module BtoD(
    input a, b, c, d,
    output A, B, C, D, E, F, G, H, I
    );
    
    assign A = ~a&~b&~c&d;
    assign B = ~a&~b&c&~d;
    assign C = ~a&~b&c&d;
    assign D = ~a&b&~c&~d;
    assign E = ~a&b&~c&d;
    assign F = ~a&b&c&~d;
    assign G = ~a&b&c&d;
    assign H = a&~b&~c&~d;
    assign I = a&~b&~c&d;
    
endmodule