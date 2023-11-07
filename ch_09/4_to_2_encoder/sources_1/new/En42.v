`timescale 1ns / 1ps


module En42(
    input a, b, c, d,
    output A, B
    );
    
    assign A = a|b;
    assign B = a|(~b&c);
    
endmodule