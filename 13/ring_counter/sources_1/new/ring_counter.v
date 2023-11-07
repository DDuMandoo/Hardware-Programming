`timescale 1ns / 1ps


module ring_counter(clk, rst, out);

    input clk, rst;
    output [3:0] out;
    reg[3:0] out;
    reg[3:0] temp;
    
    initial begin
        out = 4'b1001;
    end    

    always @(posedge clk)begin
    
        if(rst == 1'b1) begin
            out = 4'b1001;
        end 
        
        else begin

        temp[0] = out[0];
        temp[1] = out[1];
        temp[2] = out[2];
        temp[3] = out[3];
                  
        out[3] = temp[0];
        out[2] = temp[3];
        out[1] = temp[2];
        out[0] = temp[1];
        end
    end
endmodule
