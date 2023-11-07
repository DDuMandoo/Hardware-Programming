`timescale 1ns / 1ps


module ApS(
    input a1, a2, a3, a4, b1, b2, b3, b4, b,
    output s1, s2, s3, s4, B
    );
    wire B1,B2,B3;
    
    assign s1 = a1^b1^b;
    assign B1 = (~a1&b1)|(b&~(a1^b1));
    assign s2 = a2^b2^B1;
    assign B2 = (~a2&b2)|(B1&~(a2^b2));
    assign s3 = a3^b3^B2;
    assign B3 = (~a3&b3)|(B2&~(a3^b3));
    assign s4 = a4^b4^B3;
    assign B = (~a4&b4)|(B3&~(a4^b4));
    
endmodule