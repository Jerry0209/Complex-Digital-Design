// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 13 16:42:53 2025
// Host        : DESKTOP-JERRY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/ZYNQ_prj/pynq_z2/CDD/Lab2/Lab2.gen/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_stub.v
// Design      : design_1_uart_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_uart_top_0_0,uart_top,{}" *) (* CORE_GENERATION_INFO = "design_1_uart_top_0_0,uart_top,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=uart_top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,NBYTES=12,CLK_FREQ=125000000,BAUD_RATE=115200}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "uart_top,Vivado 2024.2" *) 
module design_1_uart_top_0_0(iClk, iRst, iRx, oTx)
/* synthesis syn_black_box black_box_pad_pin="iRst,iRx,oTx" */
/* synthesis syn_force_seq_prim="iClk" */;
  input iClk /* synthesis syn_isclock = 1 */;
  input iRst;
  input iRx;
  output oTx;
endmodule
