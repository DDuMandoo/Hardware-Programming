`timescale 1ns / 1ps


module Adder(
    input a1, a2, a3, a4, b1, b2, b3, b4, c,
    output s1, s2, s3, s4, C
    );
    wire c1,c2,c3;
    
    assign s1 = a1^b1^c;
    assign c1 = (a1&b1)|(c&(a1^b1));
    assign s2 = a2^b2^c1;
    assign c2 = (a2&b2)|(c1&(a2^b2));
    assign s3 = a3^b3^c2;
    assign c3 = (a3&b3)|(c2&(a3^b3));
    assign s4 = a4^b4^c3;
    assign C = (a4&b4)|(c3&(a4^b4));
    
endmodule