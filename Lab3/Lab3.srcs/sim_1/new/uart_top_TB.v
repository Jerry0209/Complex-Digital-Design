`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/10 10:03:29
// Design Name: 
// Module Name: uart_top_TB
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

module uart_top_TB ();
 
  // Define signals for module under test
  reg  rClk = 0;
  reg  rRst = 0;
  wire wRx, wTx;
  
    
  reg         rTxStart = 0;
  reg [7:0]   rTxByte = 0;
  
  // outputs (define as wire)
  wire        wTxSerial;
  wire        wTxDone;
  
  wire [7:0]  wRxByte;
  wire        wRxDone;

  
  // We downscale the values in the simulation
  // this will give CLKS_PER_BIT = 100 / 10 = 10
  localparam CLK_FREQ_inst  = 100;
  localparam BAUD_RATE_inst = 10;
  localparam NBYTES = 12;
  
  reg [NBYTES*8-1:0] rBuffer;
  
  
  // instantiate module UART_TX to send data
  uart_tx #( .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) ) 
  UART_TX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(wRx), //
     .oTxDone(wTxDone)
     );
     
  // Instantiate DUT  
  uart_top 
  #(  .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(wRx), .oTx(wTx) );
  
  // Define clock signal
  localparam CLOCK_PERIOD = 5;
  
  always
    #(CLOCK_PERIOD/2) rClk <= !rClk; // delay for half period
 
  // Input stimulus
  initial
    begin : TEST_BLOCK
      integer i; // Declare loop variable here
    
 
      rRst = 1;
      #(5*CLOCK_PERIOD);
      rRst =0;
      
      // Send "Hello world!" data
      rBuffer = "Hello world!"; // send the MSB first in top module
//      for (i = 0; i < NBYTES; i = i + 1) begin
//        rTxByte = rBuffer[i*8 +: 8];
//        rTxStart = 1;
//        #(CLOCK_PERIOD);
//        rTxStart = 0;
//        // Wait for transmission to complete
//        wait (wTxDone);
//      end
      
      for (i = NBYTES-1; i >= 0; i = i - 1) begin
          rTxByte = rBuffer[i*8 +: 8]; // 取 8-bit 数据
          rTxStart = 1;
          #(CLOCK_PERIOD);
          rTxStart = 0;
          wait (wTxDone);
          wait (!wTxDone);
          // 打印i的值
//        $display("Current value of i: %d", i);
      end
      
      // Let it run for a while
      #(10000*CLOCK_PERIOD);
            
      $stop;
           
    end
   
endmodule
