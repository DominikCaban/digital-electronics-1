-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Mar 16 13:24:41 2022
-- Host        : DESKTOP-S6T5VL6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/DC_vivado_projects/flip_flops/flip_flops.gen/sources_1/bd/design_1/ip/design_1_d_ff_rst_0_1/design_1_d_ff_rst_0_1_stub.vhdl
-- Design      : design_1_d_ff_rst_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_d_ff_rst_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC;
    q_bar : out STD_LOGIC
  );

end design_1_d_ff_rst_0_1;

architecture stub of design_1_d_ff_rst_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,d,q,q_bar";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "d_ff_rst,Vivado 2021.2";
begin
end;
