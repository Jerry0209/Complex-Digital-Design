`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/24 11:17:29
// Design Name: 
// Module Name: full_adder_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_TB;
   reg r_iA, r_iB, r_iCarry;
   wire w_oSum, w_oCarry;
   
   full_adder full_adder_inst
   (.iA(r_iA), .iB(r_iB), .iCarry(r_iCarry), .oSum(w_oSum), .oCarry(w_oCarry));
   
   initial 
   begin
   
   r_iA = 0; r_iB = 0; r_iCarry = 0;
   # 10;
   
   r_iA = 0; r_iB = 0; r_iCarry = 1;
   # 10;
   
   r_iA = 0; r_iB = 1; r_iCarry = 0;
   # 10;
   
   r_iA = 0; r_iB = 1; r_iCarry = 1;
   # 10;
   
   r_iA = 1; r_iB = 0; r_iCarry = 0;
   # 10;
   
   r_iA = 1; r_iB = 0; r_iCarry = 1;
   # 10;
   
   r_iA = 1; r_iB = 1; r_iCarry = 0;
   # 10;
   
   r_iA = 1; r_iB = 1; r_iCarry = 1;
   # 10;
   
   $stop;
    
   end
   
endmodule
