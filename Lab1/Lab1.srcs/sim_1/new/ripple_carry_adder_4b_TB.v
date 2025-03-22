`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/24 12:00:39
// Design Name: 
// Module Name: ripple_carry_adder_4b_TB
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

module ripple_carry_adder_4b_TB;

    reg [3:0] r_iA, r_iB;
    reg r_iCarry;
    wire [3:0] w_oSum;
    wire w_oCarry;
    
    ripple_carry_adder_4b ripple_carry_adder_4b_inst
    (.iA(r_iA), .iB(r_iB), .iCarry(r_iCarry), .oSum(w_oSum), .oCarry(w_oCarry));
    
    integer i;

    initial 
    begin
        $monitor("(%d + %d + %d) = %d", r_iA, r_iB, r_iCarry, {w_oCarry, w_oSum});  
        
//        在 Verilog 中，花括号 {} 用于连接操作符，可以将多个信号连接成一个更大的信号。例如，如果 w_oCarry 是 1 位信号，而 w_oSum 是 4 位信号，那么 {w_oCarry, w_oSum} 将是一个 5 位信号，其中 w_oCarry 是最高位，w_oSum 是低 4 位。

//        举个例子：
        
//        如果 w_oCarry = 1，w_oSum = 4'b1010，那么 {w_oCarry, w_oSum} 将是 5'b11010。
//        如果 w_oCarry = 0，w_oSum = 4'b0111，那么 {w_oCarry, w_oSum} 将是 5'b00111。

        // 使用 for 循环为输入应用随机值
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

//module ripple_carry_adder_4b_TB;

//    reg [3:0] r_iA, r_iB;
//    reg r_iCarry;
//    wire [3:0] w_oSum; // 
//    wire w_oCarry;
    
//    //    reg r_iA[3:0], r_iB[3:0], r_iCarry;
//    //    wire w_oSum[3:0], w_oCarry;   // not like this!!!
    
//    ripple_carry_adder_4b ripple_carry_adder_4b_inst
//    (.iA(r_iA), .iB(r_iB), .iCarry(r_iCarry), .oSum(w_oSum), .oCarry(w_oCarry));
    
//    initial 
//    begin
//        r_iA = 4'b0000; r_iB = 4'b0000; r_iCarry = 1'b0;
//        #10;
        
//        r_iA = 4'b0000; r_iB = 4'b0000; r_iCarry = 1'b1;
//        #10;
        
//        r_iA = 4'b0000; r_iB = 4'b0001; r_iCarry = 1'b0;
//        #10;
        
//        r_iA = 4'b0000; r_iB = 4'b0001; r_iCarry = 1'b1;
//        #10;
        
//        r_iA = 4'b0001; r_iB = 4'b0000; r_iCarry = 1'b0;
//        #10;
        
//        r_iA = 4'b0001; r_iB = 4'b0000; r_iCarry = 1'b1;
//        #10;
        
//        r_iA = 4'b0001; r_iB = 4'b0001; r_iCarry = 1'b0;
//        #10;
        
//        r_iA = 4'b0001; r_iB = 4'b0001; r_iCarry = 1'b1;
//        #10;
        
//        r_iA = 4'b0111; r_iB = 4'b0111; r_iCarry = 1'b0;
//        #10;
        
//        r_iA = 4'b1110; r_iB = 4'b0001; r_iCarry = 1'b0;
//        #10;
        
//        r_iA = 4'b1110; r_iB = 4'b0001; r_iCarry = 1'b1;
//        #10;
        
//        $stop;
//    end 
   
//endmodule


