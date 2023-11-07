`timescale 1ns / 1ps


module Mux41(
    input a, b, c, d, s1, s2,
    output A
    );
    
    assign A = (~s1&~s2&a)|(~s1&s2&b)|(s1&~s2&c)|(s1&s2&d);

    
endmodule