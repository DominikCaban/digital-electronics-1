// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Mar 16 13:24:41 2022
// Host        : DESKTOP-S6T5VL6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_d_ff_rst_0_3_stub.v
// Design      : design_1_d_ff_rst_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "d_ff_rst,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, d, q, q_bar)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,d,q,q_bar" */;
  input clk;
  input rst;
  input d;
  output q;
  output q_bar;
endmodule
