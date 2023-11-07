`timescale 1ns / 1ps


module segm(
    input a, b, c, d,
    output A, B, C, D, E, F, G, Dp, digit
    );
    
    assign A = (c&~d)|(a&~b&~c)|(a&~c&~d)|(~a&b&d)|(~a&~b&c)|(a&b&c)|(~a&~b&~d);
    assign B = (~a&~b)|(~a&~c&~d)|(~a&c&d)|(a&~c&d)|(a&~b&~d);
    assign C = (~a&b)|(~c&d)|(a&~b)|(~a&~c&~d)|(~a&c&d);
    assign D = (~a&~b&c)|(b&c&~d)|(~b&c&d)|(~a&~b&~d)|(b&~c&d)|(a&~c&~d);
    assign E = (a&b)|(c&~d)|(a&~b&c)|(~b&~c&~d);
    assign F = (a&~b)|(b&c&~d)|(~c&~d)|(a&c&d)|(~a&b&~c);
    assign G = (a&~b)|(b&c&~d)|(a&b&d)|(~a&b&~c)|(~b&c&d)|(~a&~b&c);
    assign Dp = 1;
    
    assign digit = A|B|C|D|E|F|G|Dp;
    
endmodule