--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Wed Mar 16 13:27:38 2022
--Host        : DESKTOP-S6T5VL6 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    BTN : in STD_LOGIC;
    LED_0 : out STD_LOGIC;
    LED_1 : out STD_LOGIC;
    LED_2 : out STD_LOGIC;
    LED_3 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_d_ff_rst_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC;
    q_bar : out STD_LOGIC
  );
  end component design_1_d_ff_rst_0_0;
  component design_1_d_ff_rst_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC;
    q_bar : out STD_LOGIC
  );
  end component design_1_d_ff_rst_0_1;
  component design_1_d_ff_rst_0_2 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC;
    q_bar : out STD_LOGIC
  );
  end component design_1_d_ff_rst_0_2;
  component design_1_d_ff_rst_0_3 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC;
    q_bar : out STD_LOGIC
  );
  end component design_1_d_ff_rst_0_3;
  signal BTN_1 : STD_LOGIC;
  signal Clk : STD_LOGIC;
  signal d_ff_rst_0_q : STD_LOGIC;
  signal d_ff_rst_1_q : STD_LOGIC;
  signal d_ff_rst_2_q : STD_LOGIC;
  signal d_ff_rst_3_q : STD_LOGIC;
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC;
  signal NLW_d_ff_rst_0_q_bar_UNCONNECTED : STD_LOGIC;
  signal NLW_d_ff_rst_1_q_bar_UNCONNECTED : STD_LOGIC;
  signal NLW_d_ff_rst_2_q_bar_UNCONNECTED : STD_LOGIC;
  signal NLW_d_ff_rst_3_q_bar_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in1 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN1 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in1 : signal is "XIL_INTERFACENAME CLK.CLK_IN1, ASSOCIATED_RESET reset, CLK_DOMAIN design_1_clk_in1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  BTN_1 <= BTN;
  Clk <= clk_in1;
  LED_0 <= d_ff_rst_0_q;
  LED_1 <= d_ff_rst_1_q;
  LED_2 <= d_ff_rst_2_q;
  LED_3 <= d_ff_rst_3_q;
  rst_clk_wiz_100M_peripheral_aresetn <= reset;
d_ff_rst_0: component design_1_d_ff_rst_0_0
     port map (
      clk => Clk,
      d => BTN_1,
      q => d_ff_rst_0_q,
      q_bar => NLW_d_ff_rst_0_q_bar_UNCONNECTED,
      rst => rst_clk_wiz_100M_peripheral_aresetn
    );
d_ff_rst_1: component design_1_d_ff_rst_0_1
     port map (
      clk => Clk,
      d => d_ff_rst_0_q,
      q => d_ff_rst_1_q,
      q_bar => NLW_d_ff_rst_1_q_bar_UNCONNECTED,
      rst => rst_clk_wiz_100M_peripheral_aresetn
    );
d_ff_rst_2: component design_1_d_ff_rst_0_2
     port map (
      clk => Clk,
      d => d_ff_rst_1_q,
      q => d_ff_rst_2_q,
      q_bar => NLW_d_ff_rst_2_q_bar_UNCONNECTED,
      rst => rst_clk_wiz_100M_peripheral_aresetn
    );
d_ff_rst_3: component design_1_d_ff_rst_0_3
     port map (
      clk => Clk,
      d => d_ff_rst_2_q,
      q => d_ff_rst_3_q,
      q_bar => NLW_d_ff_rst_3_q_bar_UNCONNECTED,
      rst => rst_clk_wiz_100M_peripheral_aresetn
    );
end STRUCTURE;
