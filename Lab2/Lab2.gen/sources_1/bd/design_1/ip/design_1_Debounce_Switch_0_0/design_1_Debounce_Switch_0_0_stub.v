// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 10 10:11:11 2025
// Host        : DESKTOP-JERRY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/ZYNQ_prj/pynq_z2/CDD/Lab2/Lab2.gen/sources_1/bd/design_1/ip/design_1_Debounce_Switch_0_0/design_1_Debounce_Switch_0_0_stub.v
// Design      : design_1_Debounce_Switch_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_Debounce_Switch_0_0,Debounce_Switch,{}" *) (* CORE_GENERATION_INFO = "design_1_Debounce_Switch_0_0,Debounce_Switch,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Debounce_Switch,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,c_DEBOUNCE_LIMIT=250000}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "Debounce_Switch,Vivado 2024.2" *) 
module design_1_Debounce_Switch_0_0(i_Clk, i_Switch, o_Switch)
/* synthesis syn_black_box black_box_pad_pin="i_Switch,o_Switch" */
/* synthesis syn_force_seq_prim="i_Clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_Clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_i_Clk_0, INSERT_VIP 0" *) input i_Clk /* synthesis syn_isclock = 1 */;
  input i_Switch;
  output o_Switch;
endmodule
