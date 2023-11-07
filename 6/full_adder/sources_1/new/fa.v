`timescale 1ns / 1ps


module fa(
    input a, b, cin,
    output s, cout
    );
    
    assign s = ((a&~b)|(~a&b))&(~cin)|(~((a&~b)|(~a&b)))&cin;
    assign cout = (a&b)|((a&~b)|(~a&b))&cin;

    
endmodule
