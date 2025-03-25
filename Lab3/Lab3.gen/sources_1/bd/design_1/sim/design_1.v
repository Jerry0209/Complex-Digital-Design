//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Mar 25 22:23:57 2025
//Host        : DESKTOP-JERRY running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (iClk,
    iRst,
    iRx,
    oTx);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, CLK_DOMAIN design_1_i_Clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input iClk;
  input iRst;
  input iRx;
  output oTx;

  wire Debounce_Switch_0_o_Switch;
  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;

  design_1_Debounce_Switch_0_0 Debounce_Switch_0
       (.i_Clk(iClk),
        .i_Switch(iRst),
        .o_Switch(Debounce_Switch_0_o_Switch));
  design_1_uart_top_0_0 uart_top_0
       (.iClk(iClk),
        .iRst(Debounce_Switch_0_o_Switch),
        .iRx(iRx),
        .oTx(oTx));
endmodule
