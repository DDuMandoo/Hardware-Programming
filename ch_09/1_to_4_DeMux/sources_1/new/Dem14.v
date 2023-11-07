`timescale 1ns / 1ps


module Dem14(
    input a, s1, s2,
    output A, B, C, D
    );
    
    assign A = a&~s1&~s2;
    assign B = a&~s1&s2;
    assign C = a&s1&~s2;
    assign D = a&s1&s2;
    
endmodule