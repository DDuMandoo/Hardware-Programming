`timescale 1ns / 1ps


module Moore1101(clk, rst, data, out, temp);

    input clk, rst, data;
    output out;
    output [3:0] temp;
    reg [3:0] temp;
    reg out;
    
    
    initial temp = 4'b0000;
    initial out = 1'b0;
        
        always @(posedge clk)begin
        
        if(temp ==4'b1101) begin
        out =1'b1;
        temp =(temp << 1)+data;
                
        if(rst == 1'b1) begin
        temp = 4'b0000;
        out = 1'b0;
        end
        end
                
        else  begin
        out = 1'b0;
        temp =(temp << 1)+data;
        
        if(rst == 1'b1) begin
        temp = 4'b0000;
        out = 1'b0;
        end
        
        end
        
        end
        
    
endmodule
