// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Mar 16 13:24:41 2022
// Host        : DESKTOP-S6T5VL6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/DC_vivado_projects/flip_flops/flip_flops.gen/sources_1/bd/design_1/ip/design_1_d_ff_rst_0_0/design_1_d_ff_rst_0_0_sim_netlist.v
// Design      : design_1_d_ff_rst_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_d_ff_rst_0_0,d_ff_rst,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "d_ff_rst,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_d_ff_rst_0_0
   (clk,
    rst,
    d,
    q,
    q_bar);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input d;
  output q;
  output q_bar;

  wire clk;
  wire d;
  wire q;
  wire q_bar;
  wire rst;

  design_1_d_ff_rst_0_0_d_ff_rst U0
       (.clk(clk),
        .d(d),
        .q(q),
        .q_bar(q_bar),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "d_ff_rst" *) 
module design_1_d_ff_rst_0_0_d_ff_rst
   (q,
    q_bar,
    d,
    rst,
    clk);
  output q;
  output q_bar;
  input d;
  input rst;
  input clk;

  wire clk;
  wire d;
  wire q;
  wire q_bar;
  wire q_bar_i_1_n_0;
  wire q_i_1_n_0;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hD)) 
    q_bar_i_1
       (.I0(d),
        .I1(rst),
        .O(q_bar_i_1_n_0));
  FDRE q_bar_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_bar_i_1_n_0),
        .Q(q_bar),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q_i_1
       (.I0(d),
        .I1(rst),
        .O(q_i_1_n_0));
  FDRE q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1_n_0),
        .Q(q),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
