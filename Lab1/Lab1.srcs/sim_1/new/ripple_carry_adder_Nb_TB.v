`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/09 14:11:14
// Design Name: 
// Module Name: ripple_carry_adder_Nb_TB
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


module ripple_carry_adder_Nb_TB;

    localparam ADDER_WIDTH_inst = 16;

    reg [ADDER_WIDTH_inst-1:0] r_iA, r_iB;
    reg r_iCarry;
    wire [ADDER_WIDTH_inst-1:0] w_oSum;
    wire w_oCarry;
    
    ripple_carry_adder_Nb #(.ADDER_WIDTH(ADDER_WIDTH_inst)) ripple_carry_adder_Nb_inst
    (.iA(r_iA), .iB(r_iB), .iCarry(r_iCarry), .oSum(w_oSum), .oCarry(w_oCarry));
    
    integer i;

    initial 
    begin
        $monitor("(%d + %d + %d) = %d", r_iA, r_iB, r_iCarry, {w_oCarry, w_oSum});  
        
        for (i = 0; i < 5; i = i + 1) 
        begin  
            #10 
            r_iA <= $random;  
            r_iB <= $random;  
            r_iCarry <= $random;  
        end  
        
        $stop;
    end 
   
endmodule
