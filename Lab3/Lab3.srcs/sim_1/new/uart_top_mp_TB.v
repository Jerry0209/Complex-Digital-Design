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
// Description: Modified to test specific operands addition
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
  localparam OPERAND_WIDTH = 512;
  localparam NBYTES = OPERAND_WIDTH / 8;
  
  // Create registers to store operands and result
  reg [OPERAND_WIDTH-1:0] rOperandA;
  reg [OPERAND_WIDTH-1:0] rOperandB;
  reg [OPERAND_WIDTH:0] rExpectedResult; // One bit wider for carry
  
  // Buffer to store received result bytes
  reg [8*(NBYTES+1)-1:0] rReceivedResult;
  integer bytes_received = 0;
  
  // instantiate module UART_TX to send data
  uart_tx #( .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) ) 
  UART_TX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(wRx), // Connect to RX of DUT
     .oTxDone(wTxDone)
     );
     
  // Instantiate RX module to receive data from DUT
  uart_rx #( .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  UART_RX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iRxSerial(wTx), // Connect to TX of DUT
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );
  
  // Instantiate DUT with OPERAND_WIDTH and ADDER_WIDTH parameters  
  uart_top 
  #( .OPERAND_WIDTH(OPERAND_WIDTH),
     .ADDER_WIDTH(16),
     .CLK_FREQ(CLK_FREQ_inst), 
     .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(wRx), .oTx(wTx) );
  
  // Define clock signal
  localparam CLOCK_PERIOD = 5;
  
  always
    #(CLOCK_PERIOD/2) rClk <= !rClk; // Generate clock
    
  // Monitor RX data
  always @(posedge rClk) begin
    if (wRxDone) begin
      rReceivedResult <= (rReceivedResult << 8) | wRxByte;
      bytes_received <= bytes_received + 1;
      $display("Received byte %d: 0x%h", bytes_received, wRxByte);
    end
  end
 
  // Input stimulus
  initial
    begin : TEST_BLOCK
      integer i; // Loop variable
      
//      // Define test operands (from your provided values)
//      rOperandA = 512'he8c712f74cacc9c20dff9c3f2ea4eed7a4a62ba70d65d907b442e3701949bc1d25d4eed434ed278e148885ac099db43827a0e43e3c5b2e992f927f2d6719697c;
//      rOperandB = 512'ha6bc1a0e9a6edeb79e970bac4b299215c236adb5cfb10b623353b6c9f99def8807821ea93ede26330fd1e00769050db76c47c7a4cbd78d1381500f37b02cf20c;

//      // Define test operands that will generate a carry
//      rOperandA = 512'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF; // All 1's
//      rOperandB = 512'h0000000000000000000000000000000000000000000000000000000000000001; // Smallest non-zero number
      
      // Define test operands that will generate a carry
      rOperandA = 512'he2128da7d19caa8445b2a6765db5eacbe93532ed036a9c98cbfb8a564b916ad3ca13655ef24b7e71403a738b4c791789e33dc9172eafe6062dfea5aa9bf21c88; // All 1's
      rOperandB = 512'h95a0f6a6a84ba8635fd322ff54bc667cb8d098ee37f31f0a4beb9ddbc9c9b3839a6ce8ba2e5cba3bf1d4108f4986add3cbc4851dea887cda2759b23680b25e1b; // Smallest non-zero number
      
      // Calculate expected result
      rExpectedResult = rOperandA + rOperandB;
      
      $display("Test Operands:");
      $display("A     = 0x%h", rOperandA);
      $display("B     = 0x%h", rOperandB);
      $display("A + B = 0x%h", rExpectedResult);
      
      // Reset sequence
      rRst = 1;
      #(5*CLOCK_PERIOD);
      rRst = 0;
      #(5*CLOCK_PERIOD);
      
      // Send Operand A first (MSB first)
      $display("Sending Operand A...");
      for (i = NBYTES-1; i >= 0; i = i - 1) begin
          rTxByte = rOperandA[i*8 +: 8]; // Extract 8-bit chunks
          $display("Sending byte %d: 0x%h", NBYTES-1-i, rTxByte);
          rTxStart = 1;
          #(CLOCK_PERIOD);
          rTxStart = 0;
          wait (wTxDone);  // Wait for transmission to complete
          wait (!wTxDone); // Wait for TX to become ready again
      end
      
      // Send Operand B next (MSB first)
      $display("Sending Operand B...");
      for (i = NBYTES-1; i >= 0; i = i - 1) begin
          rTxByte = rOperandB[i*8 +: 8]; // Extract 8-bit chunks
          $display("Sending byte %d: 0x%h", NBYTES-1-i, rTxByte);
          rTxStart = 1;
          #(CLOCK_PERIOD);
          rTxStart = 0;
          wait (wTxDone);  // Wait for transmission to complete
          wait (!wTxDone); // Wait for TX to become ready again
      end
      
      // Wait for calculation and reception of result
      // The result is NBYTES+1 bytes long (to account for carry)
      wait (bytes_received == NBYTES+1);
      
      // Check results
      #(100*CLOCK_PERIOD); // Allow some time for final processing
      $display("Result verification:");
      $display("Expected = 0x%h", rExpectedResult);
      $display("Received = 0x%h", rReceivedResult);
      
      if (rReceivedResult == rExpectedResult)
        $display("TEST PASSED: Results match!");
      else
        $display("TEST FAILED: Results don't match!");
      
      // Run a bit longer to complete any pending transmissions
      #(1000*CLOCK_PERIOD);
            
      $stop;
    end
   
endmodule