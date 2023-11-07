`timescale 1ns / 1ps


module BCD(
    input[3:0] a, b,
    input c,
    output [3:0] s,
    output C
    );
    wire c1, c2, c3, k, s0, s1, s2, s3, C1, C2, C3, t;
    
    assign s0 = a[0]^b[0]^c;
    assign c1 = (a[0]&b[0])|(c&(a[0]^b[0]));
    assign s1 = a[1]^b[1]^c1;
    assign c2 = (a[1]&b[1])|(c1&(a[1]^b[1]));
    assign s2 = a[2]^b[2]^c2;
    assign c3 = (a[2]&b[2])|(c2&(a[2]^b[2]));
    assign s3 = a[3]^b[3]^c3;
    assign k = (a[3]&b[3])|(c3&(a[3]^b[3]));
    assign C = (s3&s2)|(s3&s1)|k;
    assign t = 1'b0;
    assign s[0] = s0^t;
    assign s[1] = s1^C;
    assign C1 = (s1&C);
    assign s[2] = s2^C^C1;
    assign C2 = (s2&C)|(C1&(s2^C));
    assign s[3] = s3^t^C2;
    
endmodule
