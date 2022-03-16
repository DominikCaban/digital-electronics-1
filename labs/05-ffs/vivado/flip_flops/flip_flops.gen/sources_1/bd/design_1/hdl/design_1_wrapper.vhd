--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Wed Mar 16 13:27:38 2022
--Host        : DESKTOP-S6T5VL6 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    BTN : in STD_LOGIC;
    LED_0 : out STD_LOGIC;
    LED_1 : out STD_LOGIC;
    LED_2 : out STD_LOGIC;
    LED_3 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    LED_0 : out STD_LOGIC;
    LED_1 : out STD_LOGIC;
    LED_2 : out STD_LOGIC;
    LED_3 : out STD_LOGIC;
    BTN : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      BTN => BTN,
      LED_0 => LED_0,
      LED_1 => LED_1,
      LED_2 => LED_2,
      LED_3 => LED_3,
      clk_in1 => clk_in1,
      reset => reset
    );
end STRUCTURE;
