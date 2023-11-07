`timescale 1ns / 1ps


module fs(
    input a, b, bin,
    output s, bout
    );
    
    assign s = ((a&~b)|(~a&b))&(~bin)|(~((a&~b)|(~a&b)))&bin;
    assign bout = (~a&b)|(~((a&~b)|(~a&b)))&bin;

    
endmodule
