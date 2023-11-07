`timescale 1ns / 1ps


module bitc(
    input a, b, c, d,
    output e, f, g
    );
    
    assign e = (a&~c)|(b&~c&~d)|(a&b&~d);
    assign f = (~a&~b&~c&~d)|(~a&b&~c&d)|(a&b&c&d)|(a&~b&c&~d);
    assign g = (~a&c)|(~b&c&d)|(~a&~b&d);
endmodule
