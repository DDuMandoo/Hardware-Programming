`timescale 1ns / 1ps


module hs(
    input a, b,
    output s, bout
    );
    
    assign s = ((a&~b)|(~a&b));
    assign bout = (~a)&b;

    
endmodule
