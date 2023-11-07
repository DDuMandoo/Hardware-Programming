`timescale 1ns / 1ps


module C410(clk, rst, out);
input clk, rst;
output [3:0] out;
reg[3:0] out;

initial out = 4'b0000;

always @(posedge clk)begin

if(rst == 1'b1) out = 4'b0000;

else out = out + 4'b0001;
if(out == 4'b1010) out = 4'b0000;

end

endmodule
