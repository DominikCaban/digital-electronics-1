// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Mar 16 13:24:41 2022
// Host        : DESKTOP-S6T5VL6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/DC_vivado_projects/flip_flops/flip_flops.gen/sources_1/bd/design_1/ip/design_1_d_ff_rst_0_0/design_1_d_ff_rst_0_0_stub.v
// Design      : design_1_d_ff_rst_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "d_ff_rst,Vivado 2021.2" *)
module design_1_d_ff_rst_0_0(clk, rst, d, q, q_bar)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,d,q,q_bar" */;
  input clk;
  input rst;
  input d;
  output q;
  output q_bar;
endmodule
