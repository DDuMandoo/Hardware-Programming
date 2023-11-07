`timescale 1ns / 1ps


module pbc(
    input a, b, c, d, p,
    output e
    );
    
    assign e = ~(a^b^c^d^p);
    
endmodule
