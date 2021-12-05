-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "06/27/2019 15:47:10"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sistema IS
    PORT (
	S_SEG : OUT std_logic_vector(6 DOWNTO 0);
	clk_50Mhz : IN std_logic;
	rst : IN std_logic;
	S_SEG18 : OUT std_logic_vector(6 DOWNTO 0);
	S_SEG20 : OUT std_logic_vector(6 DOWNTO 0);
	S_SEG21 : OUT std_logic_vector(6 DOWNTO 0);
	S_SEG22 : OUT std_logic_vector(6 DOWNTO 0);
	countUp : IN std_logic;
	S_SEG23 : OUT std_logic_vector(6 DOWNTO 0);
	S_SEG24 : OUT std_logic_vector(6 DOWNTO 0);
	countUp3 : IN std_logic;
	S_SEG25 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Sistema;

-- Design Ports Information
-- S_SEG[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG18[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG18[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG18[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG18[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG18[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG18[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG18[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG20[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG20[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG20[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG20[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG20[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG20[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG20[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG21[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG21[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG21[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG21[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG21[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG21[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG21[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG22[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG22[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG22[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG22[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG22[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG22[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG22[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG23[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG23[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG23[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG23[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG23[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG23[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG23[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG24[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG24[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG24[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG24[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG24[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG24[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG24[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG25[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG25[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG25[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG25[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG25[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG25[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG25[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countUp	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countUp3	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sistema IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S_SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clk_50Mhz : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_S_SEG18 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S_SEG20 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S_SEG21 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S_SEG22 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_countUp : std_logic;
SIGNAL ww_S_SEG23 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S_SEG24 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_countUp3 : std_logic;
SIGNAL ww_S_SEG25 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|pulseOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clk_100Hz_i~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_SEG[6]~output_o\ : std_logic;
SIGNAL \S_SEG[5]~output_o\ : std_logic;
SIGNAL \S_SEG[4]~output_o\ : std_logic;
SIGNAL \S_SEG[3]~output_o\ : std_logic;
SIGNAL \S_SEG[2]~output_o\ : std_logic;
SIGNAL \S_SEG[1]~output_o\ : std_logic;
SIGNAL \S_SEG[0]~output_o\ : std_logic;
SIGNAL \S_SEG18[6]~output_o\ : std_logic;
SIGNAL \S_SEG18[5]~output_o\ : std_logic;
SIGNAL \S_SEG18[4]~output_o\ : std_logic;
SIGNAL \S_SEG18[3]~output_o\ : std_logic;
SIGNAL \S_SEG18[2]~output_o\ : std_logic;
SIGNAL \S_SEG18[1]~output_o\ : std_logic;
SIGNAL \S_SEG18[0]~output_o\ : std_logic;
SIGNAL \S_SEG20[6]~output_o\ : std_logic;
SIGNAL \S_SEG20[5]~output_o\ : std_logic;
SIGNAL \S_SEG20[4]~output_o\ : std_logic;
SIGNAL \S_SEG20[3]~output_o\ : std_logic;
SIGNAL \S_SEG20[2]~output_o\ : std_logic;
SIGNAL \S_SEG20[1]~output_o\ : std_logic;
SIGNAL \S_SEG20[0]~output_o\ : std_logic;
SIGNAL \S_SEG21[6]~output_o\ : std_logic;
SIGNAL \S_SEG21[5]~output_o\ : std_logic;
SIGNAL \S_SEG21[4]~output_o\ : std_logic;
SIGNAL \S_SEG21[3]~output_o\ : std_logic;
SIGNAL \S_SEG21[2]~output_o\ : std_logic;
SIGNAL \S_SEG21[1]~output_o\ : std_logic;
SIGNAL \S_SEG21[0]~output_o\ : std_logic;
SIGNAL \S_SEG22[6]~output_o\ : std_logic;
SIGNAL \S_SEG22[5]~output_o\ : std_logic;
SIGNAL \S_SEG22[4]~output_o\ : std_logic;
SIGNAL \S_SEG22[3]~output_o\ : std_logic;
SIGNAL \S_SEG22[2]~output_o\ : std_logic;
SIGNAL \S_SEG22[1]~output_o\ : std_logic;
SIGNAL \S_SEG22[0]~output_o\ : std_logic;
SIGNAL \S_SEG23[6]~output_o\ : std_logic;
SIGNAL \S_SEG23[5]~output_o\ : std_logic;
SIGNAL \S_SEG23[4]~output_o\ : std_logic;
SIGNAL \S_SEG23[3]~output_o\ : std_logic;
SIGNAL \S_SEG23[2]~output_o\ : std_logic;
SIGNAL \S_SEG23[1]~output_o\ : std_logic;
SIGNAL \S_SEG23[0]~output_o\ : std_logic;
SIGNAL \S_SEG24[6]~output_o\ : std_logic;
SIGNAL \S_SEG24[5]~output_o\ : std_logic;
SIGNAL \S_SEG24[4]~output_o\ : std_logic;
SIGNAL \S_SEG24[3]~output_o\ : std_logic;
SIGNAL \S_SEG24[2]~output_o\ : std_logic;
SIGNAL \S_SEG24[1]~output_o\ : std_logic;
SIGNAL \S_SEG24[0]~output_o\ : std_logic;
SIGNAL \S_SEG25[6]~output_o\ : std_logic;
SIGNAL \S_SEG25[5]~output_o\ : std_logic;
SIGNAL \S_SEG25[4]~output_o\ : std_logic;
SIGNAL \S_SEG25[3]~output_o\ : std_logic;
SIGNAL \S_SEG25[2]~output_o\ : std_logic;
SIGNAL \S_SEG25[1]~output_o\ : std_logic;
SIGNAL \S_SEG25[0]~output_o\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|prescaler~7_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|prescaler~6_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|prescaler~5_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|prescaler~4_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|prescaler~3_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|prescaler~1_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|prescaler~2_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|prescaler~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|clk_100Hz_i~0_combout\ : std_logic;
SIGNAL \inst|clk_100Hz_i~feeder_combout\ : std_logic;
SIGNAL \inst|clk_100Hz_i~q\ : std_logic;
SIGNAL \inst|clk_100Hz_i~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|counter[0]~3_combout\ : std_logic;
SIGNAL \inst2|counter~2_combout\ : std_logic;
SIGNAL \inst2|counter~0_combout\ : std_logic;
SIGNAL \inst2|counter[2]~1_combout\ : std_logic;
SIGNAL \inst16|Mux0~0_combout\ : std_logic;
SIGNAL \inst16|Mux1~0_combout\ : std_logic;
SIGNAL \inst16|Mux2~0_combout\ : std_logic;
SIGNAL \inst16|Mux3~0_combout\ : std_logic;
SIGNAL \inst16|Mux4~0_combout\ : std_logic;
SIGNAL \inst16|Mux5~0_combout\ : std_logic;
SIGNAL \inst16|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|pulse~q\ : std_logic;
SIGNAL \inst2|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|counter[0]~3_combout\ : std_logic;
SIGNAL \inst8|counter~2_combout\ : std_logic;
SIGNAL \inst8|counter~0_combout\ : std_logic;
SIGNAL \inst8|counter[2]~1_combout\ : std_logic;
SIGNAL \inst17|Mux0~0_combout\ : std_logic;
SIGNAL \inst17|Mux1~0_combout\ : std_logic;
SIGNAL \inst17|Mux2~0_combout\ : std_logic;
SIGNAL \inst17|Mux3~0_combout\ : std_logic;
SIGNAL \inst17|Mux4~0_combout\ : std_logic;
SIGNAL \inst17|Mux5~0_combout\ : std_logic;
SIGNAL \inst17|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|pulseOut~q\ : std_logic;
SIGNAL \inst8|pulseOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|Add0~1\ : std_logic;
SIGNAL \inst13|Add0~2_combout\ : std_logic;
SIGNAL \inst13|Add0~3\ : std_logic;
SIGNAL \inst13|Add0~5\ : std_logic;
SIGNAL \inst13|Add0~7\ : std_logic;
SIGNAL \inst13|Add0~8_combout\ : std_logic;
SIGNAL \inst13|counter~0_combout\ : std_logic;
SIGNAL \inst13|Add0~9\ : std_logic;
SIGNAL \inst13|Add0~10_combout\ : std_logic;
SIGNAL \inst13|counter~1_combout\ : std_logic;
SIGNAL \inst13|Add0~6_combout\ : std_logic;
SIGNAL \inst13|counter~2_combout\ : std_logic;
SIGNAL \inst13|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|Add0~4_combout\ : std_logic;
SIGNAL \inst13|counter~3_combout\ : std_logic;
SIGNAL \inst19|u11|Mux1~0_combout\ : std_logic;
SIGNAL \inst19|u11|Mux3~0_combout\ : std_logic;
SIGNAL \inst19|u11|Mux2~0_combout\ : std_logic;
SIGNAL \inst19|u14|Mux1~0_combout\ : std_logic;
SIGNAL \inst19|u14|Mux2~0_combout\ : std_logic;
SIGNAL \inst19|u14|Mux3~0_combout\ : std_logic;
SIGNAL \inst18|Mux0~0_combout\ : std_logic;
SIGNAL \inst18|Mux1~0_combout\ : std_logic;
SIGNAL \inst18|Mux2~0_combout\ : std_logic;
SIGNAL \inst18|Mux3~0_combout\ : std_logic;
SIGNAL \inst18|Mux4~0_combout\ : std_logic;
SIGNAL \inst18|Mux5~0_combout\ : std_logic;
SIGNAL \inst18|Mux6~0_combout\ : std_logic;
SIGNAL \inst20|Mux0~8_combout\ : std_logic;
SIGNAL \inst19|u8|Mux0~0_combout\ : std_logic;
SIGNAL \inst19|u14|Mux0~0_combout\ : std_logic;
SIGNAL \inst19|u11|Mux0~0_combout\ : std_logic;
SIGNAL \inst20|Mux1~0_combout\ : std_logic;
SIGNAL \inst20|Mux2~0_combout\ : std_logic;
SIGNAL \inst20|Mux3~0_combout\ : std_logic;
SIGNAL \inst20|Mux4~3_combout\ : std_logic;
SIGNAL \inst20|Mux4~6_combout\ : std_logic;
SIGNAL \inst20|Mux5~3_combout\ : std_logic;
SIGNAL \inst20|Mux5~9_combout\ : std_logic;
SIGNAL \inst20|Mux6~0_combout\ : std_logic;
SIGNAL \inst13|Equal0~1_combout\ : std_logic;
SIGNAL \inst13|pulseOut~q\ : std_logic;
SIGNAL \countUp~input_o\ : std_logic;
SIGNAL \inst7|pulse~combout\ : std_logic;
SIGNAL \inst7|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|counter~3_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|counter~2_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|counter~1_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|counter~0_combout\ : std_logic;
SIGNAL \inst21|u11|Mux2~0_combout\ : std_logic;
SIGNAL \inst21|u11|Mux1~0_combout\ : std_logic;
SIGNAL \inst21|u11|Mux3~0_combout\ : std_logic;
SIGNAL \inst21|u14|Mux1~0_combout\ : std_logic;
SIGNAL \inst21|u14|Mux2~0_combout\ : std_logic;
SIGNAL \inst21|u14|Mux3~0_combout\ : std_logic;
SIGNAL \inst22|Mux0~0_combout\ : std_logic;
SIGNAL \inst22|Mux1~0_combout\ : std_logic;
SIGNAL \inst22|Mux2~0_combout\ : std_logic;
SIGNAL \inst22|Mux3~0_combout\ : std_logic;
SIGNAL \inst22|Mux4~0_combout\ : std_logic;
SIGNAL \inst22|Mux5~0_combout\ : std_logic;
SIGNAL \inst22|Mux6~0_combout\ : std_logic;
SIGNAL \inst23|Mux0~8_combout\ : std_logic;
SIGNAL \inst21|u11|Mux0~0_combout\ : std_logic;
SIGNAL \inst21|u14|Mux0~0_combout\ : std_logic;
SIGNAL \inst21|u8|Mux0~0_combout\ : std_logic;
SIGNAL \inst23|Mux1~0_combout\ : std_logic;
SIGNAL \inst23|Mux2~0_combout\ : std_logic;
SIGNAL \inst23|Mux3~0_combout\ : std_logic;
SIGNAL \inst23|Mux4~3_combout\ : std_logic;
SIGNAL \inst23|Mux4~6_combout\ : std_logic;
SIGNAL \inst23|Mux5~3_combout\ : std_logic;
SIGNAL \inst23|Mux5~9_combout\ : std_logic;
SIGNAL \inst23|Mux6~0_combout\ : std_logic;
SIGNAL \countUp3~input_o\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|pulseOut~q\ : std_logic;
SIGNAL \inst9|pulse~combout\ : std_logic;
SIGNAL \inst9|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|Add0~0_combout\ : std_logic;
SIGNAL \inst9|Add0~1\ : std_logic;
SIGNAL \inst9|Add0~2_combout\ : std_logic;
SIGNAL \inst9|Add0~3\ : std_logic;
SIGNAL \inst9|Add0~4_combout\ : std_logic;
SIGNAL \inst9|Add0~5\ : std_logic;
SIGNAL \inst9|Add0~7\ : std_logic;
SIGNAL \inst9|Add0~8_combout\ : std_logic;
SIGNAL \inst9|counter~0_combout\ : std_logic;
SIGNAL \inst9|Add0~9\ : std_logic;
SIGNAL \inst9|Add0~10_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|Add0~6_combout\ : std_logic;
SIGNAL \inst9|counter~1_combout\ : std_logic;
SIGNAL \inst24|u11|Mux1~0_combout\ : std_logic;
SIGNAL \inst24|u11|Mux3~0_combout\ : std_logic;
SIGNAL \inst24|u11|Mux2~0_combout\ : std_logic;
SIGNAL \inst24|u14|Mux3~0_combout\ : std_logic;
SIGNAL \inst24|u14|Mux1~0_combout\ : std_logic;
SIGNAL \inst24|u14|Mux2~0_combout\ : std_logic;
SIGNAL \inst25|Mux0~0_combout\ : std_logic;
SIGNAL \inst25|Mux1~0_combout\ : std_logic;
SIGNAL \inst25|Mux2~0_combout\ : std_logic;
SIGNAL \inst25|Mux3~0_combout\ : std_logic;
SIGNAL \inst25|Mux4~0_combout\ : std_logic;
SIGNAL \inst25|Mux5~0_combout\ : std_logic;
SIGNAL \inst25|Mux6~0_combout\ : std_logic;
SIGNAL \inst26|Mux0~8_combout\ : std_logic;
SIGNAL \inst24|u14|Mux0~0_combout\ : std_logic;
SIGNAL \inst24|u8|Mux0~0_combout\ : std_logic;
SIGNAL \inst24|u11|Mux0~0_combout\ : std_logic;
SIGNAL \inst26|Mux1~0_combout\ : std_logic;
SIGNAL \inst26|Mux2~0_combout\ : std_logic;
SIGNAL \inst26|Mux3~0_combout\ : std_logic;
SIGNAL \inst26|Mux4~3_combout\ : std_logic;
SIGNAL \inst26|Mux4~6_combout\ : std_logic;
SIGNAL \inst26|Mux5~3_combout\ : std_logic;
SIGNAL \inst26|Mux5~9_combout\ : std_logic;
SIGNAL \inst26|Mux6~0_combout\ : std_logic;
SIGNAL \inst|prescaler\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst7|counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst26|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst25|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst25|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_clk_100Hz_i~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \inst26|ALT_INV_Mux5~9_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_Mux5~9_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux5~9_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S_SEG <= ww_S_SEG;
ww_clk_50Mhz <= clk_50Mhz;
ww_rst <= rst;
S_SEG18 <= ww_S_SEG18;
S_SEG20 <= ww_S_SEG20;
S_SEG21 <= ww_S_SEG21;
S_SEG22 <= ww_S_SEG22;
ww_countUp <= countUp;
S_SEG23 <= ww_S_SEG23;
S_SEG24 <= ww_S_SEG24;
ww_countUp3 <= countUp3;
S_SEG25 <= ww_S_SEG25;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);

\inst8|pulseOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst8|pulseOut~q\);

\inst7|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|pulse~combout\);

\inst9|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst9|pulse~combout\);

\inst2|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|pulse~q\);

\inst|clk_100Hz_i~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clk_100Hz_i~q\);
\inst26|ALT_INV_Mux6~0_combout\ <= NOT \inst26|Mux6~0_combout\;
\inst25|ALT_INV_Mux5~0_combout\ <= NOT \inst25|Mux5~0_combout\;
\inst25|ALT_INV_Mux0~0_combout\ <= NOT \inst25|Mux0~0_combout\;
\inst23|ALT_INV_Mux6~0_combout\ <= NOT \inst23|Mux6~0_combout\;
\inst22|ALT_INV_Mux5~0_combout\ <= NOT \inst22|Mux5~0_combout\;
\inst22|ALT_INV_Mux0~0_combout\ <= NOT \inst22|Mux0~0_combout\;
\inst20|ALT_INV_Mux6~0_combout\ <= NOT \inst20|Mux6~0_combout\;
\inst18|ALT_INV_Mux5~0_combout\ <= NOT \inst18|Mux5~0_combout\;
\inst|ALT_INV_clk_100Hz_i~clkctrl_outclk\ <= NOT \inst|clk_100Hz_i~clkctrl_outclk\;
\ALT_INV_clk_50Mhz~inputclkctrl_outclk\ <= NOT \clk_50Mhz~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\inst26|ALT_INV_Mux5~9_combout\ <= NOT \inst26|Mux5~9_combout\;
\inst23|ALT_INV_Mux5~9_combout\ <= NOT \inst23|Mux5~9_combout\;
\inst20|ALT_INV_Mux5~9_combout\ <= NOT \inst20|Mux5~9_combout\;
\inst18|ALT_INV_Mux0~0_combout\ <= NOT \inst18|Mux0~0_combout\;
\inst17|ALT_INV_Mux5~0_combout\ <= NOT \inst17|Mux5~0_combout\;
\inst17|ALT_INV_Mux0~0_combout\ <= NOT \inst17|Mux0~0_combout\;
\inst16|ALT_INV_Mux5~0_combout\ <= NOT \inst16|Mux5~0_combout\;
\inst16|ALT_INV_Mux0~0_combout\ <= NOT \inst16|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\S_SEG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\S_SEG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\S_SEG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\S_SEG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\S_SEG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\S_SEG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\S_SEG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\S_SEG18[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG18[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\S_SEG18[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG18[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\S_SEG18[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG18[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\S_SEG18[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG18[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\S_SEG18[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG18[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\S_SEG18[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG18[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\S_SEG18[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG18[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\S_SEG20[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG20[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\S_SEG20[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG20[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\S_SEG20[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG20[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\S_SEG20[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG20[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\S_SEG20[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG20[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\S_SEG20[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG20[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\S_SEG20[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG20[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\S_SEG21[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux0~8_combout\,
	devoe => ww_devoe,
	o => \S_SEG21[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\S_SEG21[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG21[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\S_SEG21[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG21[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\S_SEG21[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG21[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\S_SEG21[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|Mux4~6_combout\,
	devoe => ww_devoe,
	o => \S_SEG21[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\S_SEG21[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|ALT_INV_Mux5~9_combout\,
	devoe => ww_devoe,
	o => \S_SEG21[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\S_SEG21[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG21[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\S_SEG22[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG22[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\S_SEG22[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG22[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\S_SEG22[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG22[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\S_SEG22[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG22[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\S_SEG22[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG22[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\S_SEG22[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG22[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\S_SEG22[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG22[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\S_SEG23[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux0~8_combout\,
	devoe => ww_devoe,
	o => \S_SEG23[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\S_SEG23[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG23[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\S_SEG23[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG23[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\S_SEG23[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG23[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\S_SEG23[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux4~6_combout\,
	devoe => ww_devoe,
	o => \S_SEG23[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\S_SEG23[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|ALT_INV_Mux5~9_combout\,
	devoe => ww_devoe,
	o => \S_SEG23[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\S_SEG23[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG23[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\S_SEG24[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG24[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\S_SEG24[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG24[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\S_SEG24[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG24[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\S_SEG24[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG24[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\S_SEG24[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG24[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\S_SEG24[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG24[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\S_SEG24[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG24[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\S_SEG25[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Mux0~8_combout\,
	devoe => ww_devoe,
	o => \S_SEG25[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\S_SEG25[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG25[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\S_SEG25[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG25[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\S_SEG25[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG25[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\S_SEG25[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Mux4~6_combout\,
	devoe => ww_devoe,
	o => \S_SEG25[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\S_SEG25[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|ALT_INV_Mux5~9_combout\,
	devoe => ww_devoe,
	o => \S_SEG25[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\S_SEG25[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG25[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk_50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50Mhz,
	o => \clk_50Mhz~input_o\);

-- Location: CLKCTRL_G4
\clk_50Mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50Mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X113_Y17_N12
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|prescaler\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|prescaler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X113_Y17_N20
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|prescaler\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|prescaler\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|prescaler\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X113_Y17_N22
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|prescaler\(5) & (!\inst|Add0~9\)) # (!\inst|prescaler\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|prescaler\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: IOIBUF_X115_Y6_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X113_Y17_N23
\inst|prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(5));

-- Location: LCCOMB_X113_Y17_N24
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|prescaler\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|prescaler\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|prescaler\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: FF_X113_Y17_N25
\inst|prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(6));

-- Location: LCCOMB_X113_Y17_N26
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|prescaler\(7) & (!\inst|Add0~13\)) # (!\inst|prescaler\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|prescaler\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X113_Y17_N2
\inst|prescaler~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|prescaler~7_combout\ = (\inst|Add0~14_combout\ & ((!\inst|Equal0~5_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Add0~14_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|prescaler~7_combout\);

-- Location: FF_X113_Y17_N3
\inst|prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|prescaler~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(7));

-- Location: LCCOMB_X113_Y17_N28
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|prescaler\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|prescaler\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|prescaler\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X113_Y17_N29
\inst|prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(8));

-- Location: LCCOMB_X113_Y17_N8
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (!\inst|prescaler\(6) & (\inst|prescaler\(7) & (!\inst|prescaler\(5) & !\inst|prescaler\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(6),
	datab => \inst|prescaler\(7),
	datac => \inst|prescaler\(5),
	datad => \inst|prescaler\(8),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X113_Y17_N30
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|prescaler\(9) & (!\inst|Add0~17\)) # (!\inst|prescaler\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|prescaler\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X113_Y17_N31
\inst|prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(9));

-- Location: LCCOMB_X113_Y16_N0
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|prescaler\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|prescaler\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|prescaler\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X113_Y16_N1
\inst|prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(10));

-- Location: LCCOMB_X113_Y16_N2
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|prescaler\(11) & (!\inst|Add0~21\)) # (!\inst|prescaler\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|prescaler\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X113_Y16_N3
\inst|prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(11));

-- Location: LCCOMB_X113_Y16_N4
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|prescaler\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|prescaler\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|prescaler\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X113_Y16_N22
\inst|prescaler~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|prescaler~6_combout\ = (\inst|Add0~24_combout\ & ((!\inst|Equal0~5_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Add0~24_combout\,
	combout => \inst|prescaler~6_combout\);

-- Location: FF_X113_Y16_N23
\inst|prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|prescaler~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(12));

-- Location: LCCOMB_X113_Y16_N6
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|prescaler\(13) & (!\inst|Add0~25\)) # (!\inst|prescaler\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|prescaler\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: FF_X113_Y16_N7
\inst|prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(13));

-- Location: LCCOMB_X113_Y16_N8
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|prescaler\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|prescaler\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|prescaler\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X113_Y16_N30
\inst|prescaler~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|prescaler~5_combout\ = (\inst|Add0~28_combout\ & ((!\inst|Equal0~5_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Add0~28_combout\,
	combout => \inst|prescaler~5_combout\);

-- Location: FF_X113_Y16_N31
\inst|prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|prescaler~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(14));

-- Location: LCCOMB_X113_Y16_N10
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|prescaler\(15) & (!\inst|Add0~29\)) # (!\inst|prescaler\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|prescaler\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X113_Y16_N28
\inst|prescaler~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|prescaler~4_combout\ = (\inst|Add0~30_combout\ & ((!\inst|Equal0~5_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Add0~30_combout\,
	combout => \inst|prescaler~4_combout\);

-- Location: FF_X113_Y16_N29
\inst|prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|prescaler~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(15));

-- Location: LCCOMB_X113_Y16_N12
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|prescaler\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|prescaler\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|prescaler\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X113_Y16_N26
\inst|prescaler~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|prescaler~3_combout\ = (\inst|Add0~32_combout\ & ((!\inst|Equal0~5_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst|prescaler~3_combout\);

-- Location: FF_X113_Y16_N27
\inst|prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|prescaler~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(16));

-- Location: LCCOMB_X113_Y16_N14
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|prescaler\(17) & (!\inst|Add0~33\)) # (!\inst|prescaler\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|prescaler\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X113_Y16_N24
\inst|prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|prescaler~1_combout\ = (\inst|Add0~34_combout\ & ((!\inst|Equal0~5_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datac => \inst|Add0~34_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|prescaler~1_combout\);

-- Location: FF_X113_Y16_N25
\inst|prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|prescaler~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(17));

-- Location: LCCOMB_X113_Y16_N16
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|prescaler\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|prescaler\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|prescaler\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: FF_X113_Y16_N17
\inst|prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(18));

-- Location: LCCOMB_X113_Y16_N18
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = \inst|Add0~37\ $ (\inst|prescaler\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|prescaler\(19),
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\);

-- Location: FF_X113_Y16_N19
\inst|prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(19));

-- Location: LCCOMB_X113_Y17_N4
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|prescaler\(18) & (!\inst|prescaler\(0) & (\inst|prescaler\(17) & !\inst|prescaler\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(18),
	datab => \inst|prescaler\(0),
	datac => \inst|prescaler\(17),
	datad => \inst|prescaler\(19),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X113_Y16_N20
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|prescaler\(16) & (\inst|prescaler\(15) & (\inst|prescaler\(14) & !\inst|prescaler\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(16),
	datab => \inst|prescaler\(15),
	datac => \inst|prescaler\(14),
	datad => \inst|prescaler\(13),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X112_Y17_N24
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|prescaler\(9) & (!\inst|prescaler\(10) & (\inst|prescaler\(12) & !\inst|prescaler\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(9),
	datab => \inst|prescaler\(10),
	datac => \inst|prescaler\(12),
	datad => \inst|prescaler\(11),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X113_Y17_N6
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|Equal0~4_combout\ & (\inst|Equal0~1_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X113_Y17_N10
\inst|prescaler~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|prescaler~2_combout\ = (\inst|Add0~0_combout\ & ((!\inst|Equal0~5_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|prescaler~2_combout\);

-- Location: FF_X113_Y17_N11
\inst|prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|prescaler~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(0));

-- Location: LCCOMB_X113_Y17_N14
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|prescaler\(1) & (!\inst|Add0~1\)) # (!\inst|prescaler\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|prescaler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X113_Y17_N15
\inst|prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(1));

-- Location: LCCOMB_X113_Y17_N16
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|prescaler\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|prescaler\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|prescaler\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X113_Y17_N17
\inst|prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(2));

-- Location: LCCOMB_X113_Y17_N18
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|prescaler\(3) & (!\inst|Add0~5\)) # (!\inst|prescaler\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|prescaler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X113_Y17_N19
\inst|prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(3));

-- Location: LCCOMB_X113_Y17_N0
\inst|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|prescaler~0_combout\ = (\inst|Add0~8_combout\ & ((!\inst|Equal0~5_combout\) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|prescaler~0_combout\);

-- Location: FF_X113_Y17_N1
\inst|prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|prescaler~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler\(4));

-- Location: LCCOMB_X114_Y17_N18
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|prescaler\(4) & (!\inst|prescaler\(3) & (!\inst|prescaler\(2) & !\inst|prescaler\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler\(4),
	datab => \inst|prescaler\(3),
	datac => \inst|prescaler\(2),
	datad => \inst|prescaler\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y17_N16
\inst|clk_100Hz_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_100Hz_i~0_combout\ = \inst|clk_100Hz_i~q\ $ (((\inst|Equal0~0_combout\ & \inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|clk_100Hz_i~q\,
	combout => \inst|clk_100Hz_i~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\inst|clk_100Hz_i~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_100Hz_i~feeder_combout\ = \inst|clk_100Hz_i~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_100Hz_i~0_combout\,
	combout => \inst|clk_100Hz_i~feeder_combout\);

-- Location: FF_X114_Y17_N23
\inst|clk_100Hz_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50Mhz~inputclkctrl_outclk\,
	d => \inst|clk_100Hz_i~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_100Hz_i~q\);

-- Location: CLKCTRL_G7
\inst|clk_100Hz_i~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_100Hz_i~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_100Hz_i~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y71_N24
\inst2|counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[0]~3_combout\ = !\inst2|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter\(0),
	combout => \inst2|counter[0]~3_combout\);

-- Location: FF_X57_Y71_N25
\inst2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_100Hz_i~clkctrl_outclk\,
	d => \inst2|counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(0));

-- Location: LCCOMB_X57_Y71_N6
\inst2|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter~2_combout\ = (\inst2|counter\(1) & (\inst2|counter\(3) $ (((\inst2|counter\(0) & \inst2|counter\(2)))))) # (!\inst2|counter\(1) & (\inst2|counter\(3) & ((\inst2|counter\(2)) # (!\inst2|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(1),
	datab => \inst2|counter\(0),
	datac => \inst2|counter\(3),
	datad => \inst2|counter\(2),
	combout => \inst2|counter~2_combout\);

-- Location: FF_X57_Y71_N7
\inst2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_100Hz_i~clkctrl_outclk\,
	d => \inst2|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(3));

-- Location: LCCOMB_X57_Y71_N18
\inst2|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter~0_combout\ = (\inst2|counter\(1) & (((!\inst2|counter\(0))))) # (!\inst2|counter\(1) & (\inst2|counter\(0) & ((\inst2|counter\(2)) # (!\inst2|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datab => \inst2|counter\(3),
	datac => \inst2|counter\(1),
	datad => \inst2|counter\(0),
	combout => \inst2|counter~0_combout\);

-- Location: FF_X57_Y71_N19
\inst2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_100Hz_i~clkctrl_outclk\,
	d => \inst2|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(1));

-- Location: LCCOMB_X57_Y71_N10
\inst2|counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[2]~1_combout\ = \inst2|counter\(2) $ (((\inst2|counter\(1) & \inst2|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(1),
	datac => \inst2|counter\(2),
	datad => \inst2|counter\(0),
	combout => \inst2|counter[2]~1_combout\);

-- Location: FF_X57_Y71_N11
\inst2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_100Hz_i~clkctrl_outclk\,
	d => \inst2|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(2));

-- Location: LCCOMB_X57_Y71_N22
\inst16|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux0~0_combout\ = (\inst2|counter\(3)) # ((\inst2|counter\(2) & ((!\inst2|counter\(1)) # (!\inst2|counter\(0)))) # (!\inst2|counter\(2) & ((\inst2|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datab => \inst2|counter\(3),
	datac => \inst2|counter\(0),
	datad => \inst2|counter\(1),
	combout => \inst16|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y71_N16
\inst16|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux1~0_combout\ = (!\inst2|counter\(3) & ((\inst2|counter\(2) & (\inst2|counter\(0) & \inst2|counter\(1))) # (!\inst2|counter\(2) & ((\inst2|counter\(0)) # (\inst2|counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datab => \inst2|counter\(3),
	datac => \inst2|counter\(0),
	datad => \inst2|counter\(1),
	combout => \inst16|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y71_N12
\inst16|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux2~0_combout\ = (\inst2|counter\(0)) # ((!\inst2|counter\(1) & \inst2|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(1),
	datac => \inst2|counter\(2),
	datad => \inst2|counter\(0),
	combout => \inst16|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y71_N30
\inst16|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux3~0_combout\ = (\inst2|counter\(1) & (\inst2|counter\(2) & \inst2|counter\(0))) # (!\inst2|counter\(1) & (\inst2|counter\(2) $ (\inst2|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(1),
	datac => \inst2|counter\(2),
	datad => \inst2|counter\(0),
	combout => \inst16|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y71_N14
\inst16|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux4~0_combout\ = (\inst2|counter\(1) & (!\inst2|counter\(2) & !\inst2|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(1),
	datac => \inst2|counter\(2),
	datad => \inst2|counter\(0),
	combout => \inst16|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y71_N28
\inst16|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux5~0_combout\ = (\inst2|counter\(1) $ (!\inst2|counter\(0))) # (!\inst2|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(1),
	datac => \inst2|counter\(2),
	datad => \inst2|counter\(0),
	combout => \inst16|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y71_N0
\inst16|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux6~0_combout\ = (!\inst2|counter\(3) & (!\inst2|counter\(1) & (\inst2|counter\(2) $ (\inst2|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datab => \inst2|counter\(3),
	datac => \inst2|counter\(0),
	datad => \inst2|counter\(1),
	combout => \inst16|Mux6~0_combout\);

-- Location: LCCOMB_X57_Y71_N20
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|counter\(3) & (!\inst2|counter\(1) & (!\inst2|counter\(2) & \inst2|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(3),
	datab => \inst2|counter\(1),
	datac => \inst2|counter\(2),
	datad => \inst2|counter\(0),
	combout => \inst2|Equal0~0_combout\);

-- Location: FF_X57_Y71_N21
\inst2|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_100Hz_i~clkctrl_outclk\,
	d => \inst2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pulse~q\);

-- Location: CLKCTRL_G14
\inst2|pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|pulse~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N16
\inst8|counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[0]~3_combout\ = !\inst8|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|counter\(0),
	combout => \inst8|counter[0]~3_combout\);

-- Location: FF_X114_Y37_N17
\inst8|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulse~clkctrl_outclk\,
	d => \inst8|counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(0));

-- Location: LCCOMB_X114_Y37_N8
\inst8|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter~2_combout\ = (\inst8|counter\(1) & (\inst8|counter\(3) $ (((\inst8|counter\(0) & \inst8|counter\(2)))))) # (!\inst8|counter\(1) & (\inst8|counter\(3) & ((\inst8|counter\(2)) # (!\inst8|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(1),
	datab => \inst8|counter\(0),
	datac => \inst8|counter\(3),
	datad => \inst8|counter\(2),
	combout => \inst8|counter~2_combout\);

-- Location: FF_X114_Y37_N9
\inst8|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulse~clkctrl_outclk\,
	d => \inst8|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(3));

-- Location: LCCOMB_X114_Y37_N12
\inst8|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter~0_combout\ = (\inst8|counter\(1) & (((!\inst8|counter\(0))))) # (!\inst8|counter\(1) & (\inst8|counter\(0) & ((\inst8|counter\(2)) # (!\inst8|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(3),
	datab => \inst8|counter\(2),
	datac => \inst8|counter\(1),
	datad => \inst8|counter\(0),
	combout => \inst8|counter~0_combout\);

-- Location: FF_X114_Y37_N13
\inst8|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulse~clkctrl_outclk\,
	d => \inst8|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(1));

-- Location: LCCOMB_X114_Y37_N18
\inst8|counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[2]~1_combout\ = \inst8|counter\(2) $ (((\inst8|counter\(1) & \inst8|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(1),
	datac => \inst8|counter\(2),
	datad => \inst8|counter\(0),
	combout => \inst8|counter[2]~1_combout\);

-- Location: FF_X114_Y37_N19
\inst8|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulse~clkctrl_outclk\,
	d => \inst8|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(2));

-- Location: LCCOMB_X114_Y37_N14
\inst17|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux0~0_combout\ = (\inst8|counter\(3)) # ((\inst8|counter\(2) & ((!\inst8|counter\(0)) # (!\inst8|counter\(1)))) # (!\inst8|counter\(2) & (\inst8|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(2),
	datab => \inst8|counter\(1),
	datac => \inst8|counter\(3),
	datad => \inst8|counter\(0),
	combout => \inst17|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y37_N22
\inst17|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux1~0_combout\ = (!\inst8|counter\(3) & ((\inst8|counter\(2) & (\inst8|counter\(1) & \inst8|counter\(0))) # (!\inst8|counter\(2) & ((\inst8|counter\(1)) # (\inst8|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(2),
	datab => \inst8|counter\(1),
	datac => \inst8|counter\(3),
	datad => \inst8|counter\(0),
	combout => \inst17|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y37_N6
\inst17|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux2~0_combout\ = (\inst8|counter\(0)) # ((!\inst8|counter\(1) & \inst8|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(0),
	datac => \inst8|counter\(1),
	datad => \inst8|counter\(2),
	combout => \inst17|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y37_N28
\inst17|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux3~0_combout\ = (\inst8|counter\(0) & (\inst8|counter\(1) $ (!\inst8|counter\(2)))) # (!\inst8|counter\(0) & (!\inst8|counter\(1) & \inst8|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(0),
	datac => \inst8|counter\(1),
	datad => \inst8|counter\(2),
	combout => \inst17|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y37_N20
\inst17|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux4~0_combout\ = (!\inst8|counter\(0) & (\inst8|counter\(1) & !\inst8|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(0),
	datac => \inst8|counter\(1),
	datad => \inst8|counter\(2),
	combout => \inst17|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y37_N24
\inst17|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux5~0_combout\ = (\inst8|counter\(0) $ (!\inst8|counter\(1))) # (!\inst8|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(0),
	datac => \inst8|counter\(1),
	datad => \inst8|counter\(2),
	combout => \inst17|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y37_N30
\inst17|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux6~0_combout\ = (!\inst8|counter\(1) & (!\inst8|counter\(3) & (\inst8|counter\(2) $ (\inst8|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(2),
	datab => \inst8|counter\(1),
	datac => \inst8|counter\(3),
	datad => \inst8|counter\(0),
	combout => \inst17|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y37_N10
\inst8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (!\inst8|counter\(1) & (!\inst8|counter\(2) & (\inst8|counter\(3) & \inst8|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(1),
	datab => \inst8|counter\(2),
	datac => \inst8|counter\(3),
	datad => \inst8|counter\(0),
	combout => \inst8|Equal0~0_combout\);

-- Location: FF_X114_Y37_N11
\inst8|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulse~clkctrl_outclk\,
	d => \inst8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|pulseOut~q\);

-- Location: CLKCTRL_G5
\inst8|pulseOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|pulseOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|pulseOut~clkctrl_outclk\);

-- Location: LCCOMB_X113_Y37_N20
\inst13|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~0_combout\ = \inst13|counter\(0) $ (VCC)
-- \inst13|Add0~1\ = CARRY(\inst13|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|counter\(0),
	datad => VCC,
	combout => \inst13|Add0~0_combout\,
	cout => \inst13|Add0~1\);

-- Location: FF_X113_Y37_N21
\inst13|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|pulseOut~clkctrl_outclk\,
	d => \inst13|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(0));

-- Location: LCCOMB_X113_Y37_N22
\inst13|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~2_combout\ = (\inst13|counter\(1) & (!\inst13|Add0~1\)) # (!\inst13|counter\(1) & ((\inst13|Add0~1\) # (GND)))
-- \inst13|Add0~3\ = CARRY((!\inst13|Add0~1\) # (!\inst13|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(1),
	datad => VCC,
	cin => \inst13|Add0~1\,
	combout => \inst13|Add0~2_combout\,
	cout => \inst13|Add0~3\);

-- Location: FF_X113_Y37_N23
\inst13|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|pulseOut~clkctrl_outclk\,
	d => \inst13|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(1));

-- Location: LCCOMB_X113_Y37_N24
\inst13|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~4_combout\ = (\inst13|counter\(2) & (\inst13|Add0~3\ $ (GND))) # (!\inst13|counter\(2) & (!\inst13|Add0~3\ & VCC))
-- \inst13|Add0~5\ = CARRY((\inst13|counter\(2) & !\inst13|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(2),
	datad => VCC,
	cin => \inst13|Add0~3\,
	combout => \inst13|Add0~4_combout\,
	cout => \inst13|Add0~5\);

-- Location: LCCOMB_X113_Y37_N26
\inst13|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~6_combout\ = (\inst13|counter\(3) & (!\inst13|Add0~5\)) # (!\inst13|counter\(3) & ((\inst13|Add0~5\) # (GND)))
-- \inst13|Add0~7\ = CARRY((!\inst13|Add0~5\) # (!\inst13|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(3),
	datad => VCC,
	cin => \inst13|Add0~5\,
	combout => \inst13|Add0~6_combout\,
	cout => \inst13|Add0~7\);

-- Location: LCCOMB_X113_Y37_N28
\inst13|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~8_combout\ = (\inst13|counter\(4) & (\inst13|Add0~7\ $ (GND))) # (!\inst13|counter\(4) & (!\inst13|Add0~7\ & VCC))
-- \inst13|Add0~9\ = CARRY((\inst13|counter\(4) & !\inst13|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|counter\(4),
	datad => VCC,
	cin => \inst13|Add0~7\,
	combout => \inst13|Add0~8_combout\,
	cout => \inst13|Add0~9\);

-- Location: LCCOMB_X113_Y37_N14
\inst13|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|counter~0_combout\ = (\inst13|Add0~8_combout\ & (((!\inst13|counter\(4)) # (!\inst13|Equal0~0_combout\)) # (!\inst13|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(5),
	datab => \inst13|Equal0~0_combout\,
	datac => \inst13|counter\(4),
	datad => \inst13|Add0~8_combout\,
	combout => \inst13|counter~0_combout\);

-- Location: FF_X113_Y37_N15
\inst13|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|pulseOut~clkctrl_outclk\,
	d => \inst13|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(4));

-- Location: LCCOMB_X113_Y37_N30
\inst13|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~10_combout\ = \inst13|counter\(5) $ (\inst13|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|counter\(5),
	cin => \inst13|Add0~9\,
	combout => \inst13|Add0~10_combout\);

-- Location: LCCOMB_X113_Y37_N8
\inst13|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|counter~1_combout\ = (\inst13|Add0~10_combout\ & (((!\inst13|counter\(5)) # (!\inst13|Equal0~0_combout\)) # (!\inst13|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(4),
	datab => \inst13|Equal0~0_combout\,
	datac => \inst13|counter\(5),
	datad => \inst13|Add0~10_combout\,
	combout => \inst13|counter~1_combout\);

-- Location: FF_X113_Y37_N9
\inst13|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|pulseOut~clkctrl_outclk\,
	d => \inst13|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(5));

-- Location: LCCOMB_X113_Y37_N4
\inst13|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|counter~2_combout\ = (\inst13|Add0~6_combout\ & (((!\inst13|counter\(4)) # (!\inst13|counter\(5))) # (!\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst13|counter\(5),
	datac => \inst13|counter\(4),
	datad => \inst13|Add0~6_combout\,
	combout => \inst13|counter~2_combout\);

-- Location: FF_X113_Y37_N5
\inst13|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|pulseOut~clkctrl_outclk\,
	d => \inst13|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(3));

-- Location: LCCOMB_X113_Y37_N18
\inst13|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~0_combout\ = (\inst13|counter\(3) & (\inst13|counter\(0) & (\inst13|counter\(1) & !\inst13|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(3),
	datab => \inst13|counter\(0),
	datac => \inst13|counter\(1),
	datad => \inst13|counter\(2),
	combout => \inst13|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y37_N12
\inst13|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|counter~3_combout\ = (\inst13|Add0~4_combout\ & (((!\inst13|counter\(4)) # (!\inst13|counter\(5))) # (!\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst13|counter\(5),
	datac => \inst13|counter\(4),
	datad => \inst13|Add0~4_combout\,
	combout => \inst13|counter~3_combout\);

-- Location: FF_X113_Y37_N13
\inst13|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|pulseOut~clkctrl_outclk\,
	d => \inst13|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|counter\(2));

-- Location: LCCOMB_X113_Y23_N12
\inst19|u11|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|u11|Mux1~0_combout\ = (\inst13|counter\(2) & (!\inst13|counter\(4) & (!\inst13|counter\(3) & \inst13|counter\(5)))) # (!\inst13|counter\(2) & (\inst13|counter\(4) & (\inst13|counter\(3) $ (!\inst13|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(2),
	datab => \inst13|counter\(4),
	datac => \inst13|counter\(3),
	datad => \inst13|counter\(5),
	combout => \inst19|u11|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y23_N16
\inst19|u11|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|u11|Mux3~0_combout\ = (\inst13|counter\(2) & (\inst13|counter\(4) $ (((\inst13|counter\(3)) # (!\inst13|counter\(5)))))) # (!\inst13|counter\(2) & ((\inst13|counter\(4) & (\inst13|counter\(3) & !\inst13|counter\(5))) # (!\inst13|counter\(4) & 
-- (!\inst13|counter\(3) & \inst13|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(2),
	datab => \inst13|counter\(4),
	datac => \inst13|counter\(3),
	datad => \inst13|counter\(5),
	combout => \inst19|u11|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y23_N10
\inst19|u11|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|u11|Mux2~0_combout\ = (\inst13|counter\(3) & (!\inst13|counter\(5) & ((\inst13|counter\(2)) # (!\inst13|counter\(4))))) # (!\inst13|counter\(3) & (\inst13|counter\(5) & ((\inst13|counter\(4)) # (!\inst13|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(2),
	datab => \inst13|counter\(4),
	datac => \inst13|counter\(3),
	datad => \inst13|counter\(5),
	combout => \inst19|u11|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y23_N26
\inst19|u14|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|u14|Mux1~0_combout\ = (!\inst19|u11|Mux3~0_combout\ & ((\inst19|u11|Mux1~0_combout\ & (\inst13|counter\(1) & !\inst19|u11|Mux2~0_combout\)) # (!\inst19|u11|Mux1~0_combout\ & (!\inst13|counter\(1) & \inst19|u11|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|u11|Mux1~0_combout\,
	datab => \inst19|u11|Mux3~0_combout\,
	datac => \inst13|counter\(1),
	datad => \inst19|u11|Mux2~0_combout\,
	combout => \inst19|u14|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y23_N8
\inst19|u14|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|u14|Mux2~0_combout\ = (\inst13|counter\(1) & (!\inst19|u11|Mux1~0_combout\ & (\inst19|u11|Mux3~0_combout\))) # (!\inst13|counter\(1) & (!\inst19|u11|Mux2~0_combout\ & (\inst19|u11|Mux1~0_combout\ $ (\inst19|u11|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|u11|Mux1~0_combout\,
	datab => \inst19|u11|Mux3~0_combout\,
	datac => \inst13|counter\(1),
	datad => \inst19|u11|Mux2~0_combout\,
	combout => \inst19|u14|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y23_N2
\inst19|u14|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|u14|Mux3~0_combout\ = (\inst19|u11|Mux3~0_combout\ & (!\inst19|u11|Mux1~0_combout\ & (\inst13|counter\(1) $ (\inst19|u11|Mux2~0_combout\)))) # (!\inst19|u11|Mux3~0_combout\ & (!\inst19|u11|Mux2~0_combout\ & (\inst19|u11|Mux1~0_combout\ $ 
-- (\inst13|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|u11|Mux1~0_combout\,
	datab => \inst19|u11|Mux3~0_combout\,
	datac => \inst13|counter\(1),
	datad => \inst19|u11|Mux2~0_combout\,
	combout => \inst19|u14|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y19_N28
\inst18|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux0~0_combout\ = (\inst19|u14|Mux1~0_combout\) # ((\inst19|u14|Mux2~0_combout\ & ((!\inst19|u14|Mux3~0_combout\) # (!\inst13|counter\(0)))) # (!\inst19|u14|Mux2~0_combout\ & ((\inst19|u14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|u14|Mux1~0_combout\,
	datab => \inst19|u14|Mux2~0_combout\,
	datac => \inst13|counter\(0),
	datad => \inst19|u14|Mux3~0_combout\,
	combout => \inst18|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y19_N10
\inst18|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux1~0_combout\ = (!\inst19|u14|Mux1~0_combout\ & ((\inst19|u14|Mux2~0_combout\ & (\inst13|counter\(0) & \inst19|u14|Mux3~0_combout\)) # (!\inst19|u14|Mux2~0_combout\ & ((\inst13|counter\(0)) # (\inst19|u14|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|u14|Mux1~0_combout\,
	datab => \inst19|u14|Mux2~0_combout\,
	datac => \inst13|counter\(0),
	datad => \inst19|u14|Mux3~0_combout\,
	combout => \inst18|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y19_N8
\inst18|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux2~0_combout\ = (\inst13|counter\(0)) # ((\inst19|u14|Mux2~0_combout\ & !\inst19|u14|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|u14|Mux2~0_combout\,
	datac => \inst13|counter\(0),
	datad => \inst19|u14|Mux3~0_combout\,
	combout => \inst18|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y19_N26
\inst18|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux3~0_combout\ = (\inst19|u14|Mux2~0_combout\ & (\inst13|counter\(0) $ (!\inst19|u14|Mux3~0_combout\))) # (!\inst19|u14|Mux2~0_combout\ & (\inst13|counter\(0) & !\inst19|u14|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|u14|Mux2~0_combout\,
	datac => \inst13|counter\(0),
	datad => \inst19|u14|Mux3~0_combout\,
	combout => \inst18|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y19_N4
\inst18|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux4~0_combout\ = (!\inst19|u14|Mux2~0_combout\ & (!\inst13|counter\(0) & \inst19|u14|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|u14|Mux2~0_combout\,
	datac => \inst13|counter\(0),
	datad => \inst19|u14|Mux3~0_combout\,
	combout => \inst18|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y19_N14
\inst18|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux5~0_combout\ = (\inst13|counter\(0) $ (!\inst19|u14|Mux3~0_combout\)) # (!\inst19|u14|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|u14|Mux2~0_combout\,
	datac => \inst13|counter\(0),
	datad => \inst19|u14|Mux3~0_combout\,
	combout => \inst18|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y19_N20
\inst18|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux6~0_combout\ = (!\inst19|u14|Mux1~0_combout\ & (!\inst19|u14|Mux3~0_combout\ & (\inst19|u14|Mux2~0_combout\ $ (\inst13|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|u14|Mux1~0_combout\,
	datab => \inst19|u14|Mux2~0_combout\,
	datac => \inst13|counter\(0),
	datad => \inst19|u14|Mux3~0_combout\,
	combout => \inst18|Mux6~0_combout\);

-- Location: LCCOMB_X113_Y23_N0
\inst20|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux0~8_combout\ = (!\inst13|counter\(5) & (((!\inst13|counter\(2) & !\inst13|counter\(3))) # (!\inst13|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(2),
	datab => \inst13|counter\(4),
	datac => \inst13|counter\(3),
	datad => \inst13|counter\(5),
	combout => \inst20|Mux0~8_combout\);

-- Location: LCCOMB_X113_Y23_N6
\inst19|u8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|u8|Mux0~0_combout\ = ((!\inst13|counter\(4) & !\inst13|counter\(3))) # (!\inst13|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|counter\(4),
	datac => \inst13|counter\(3),
	datad => \inst13|counter\(5),
	combout => \inst19|u8|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y23_N28
\inst19|u14|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|u14|Mux0~0_combout\ = (\inst19|u11|Mux1~0_combout\ & (!\inst19|u11|Mux3~0_combout\ & ((!\inst19|u11|Mux2~0_combout\)))) # (!\inst19|u11|Mux1~0_combout\ & (\inst19|u11|Mux2~0_combout\ & ((\inst19|u11|Mux3~0_combout\) # (\inst13|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|u11|Mux1~0_combout\,
	datab => \inst19|u11|Mux3~0_combout\,
	datac => \inst13|counter\(1),
	datad => \inst19|u11|Mux2~0_combout\,
	combout => \inst19|u14|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y23_N20
\inst19|u11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|u11|Mux0~0_combout\ = (\inst13|counter\(4) & ((\inst13|counter\(2) & ((\inst13|counter\(3)) # (!\inst13|counter\(5)))) # (!\inst13|counter\(2) & (\inst13|counter\(3) & !\inst13|counter\(5))))) # (!\inst13|counter\(4) & (((!\inst13|counter\(3) & 
-- \inst13|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(2),
	datab => \inst13|counter\(4),
	datac => \inst13|counter\(3),
	datad => \inst13|counter\(5),
	combout => \inst19|u11|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y23_N30
\inst20|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux1~0_combout\ = (\inst19|u8|Mux0~0_combout\ & ((\inst19|u14|Mux0~0_combout\) # (\inst19|u11|Mux0~0_combout\))) # (!\inst19|u8|Mux0~0_combout\ & (\inst19|u14|Mux0~0_combout\ & \inst19|u11|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|u8|Mux0~0_combout\,
	datab => \inst19|u14|Mux0~0_combout\,
	datad => \inst19|u11|Mux0~0_combout\,
	combout => \inst20|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y23_N4
\inst20|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux2~0_combout\ = (\inst19|u14|Mux0~0_combout\) # ((!\inst19|u8|Mux0~0_combout\ & !\inst19|u11|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|u8|Mux0~0_combout\,
	datab => \inst19|u14|Mux0~0_combout\,
	datad => \inst19|u11|Mux0~0_combout\,
	combout => \inst20|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y23_N18
\inst20|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux3~0_combout\ = (\inst19|u8|Mux0~0_combout\ & (\inst19|u14|Mux0~0_combout\ & !\inst19|u11|Mux0~0_combout\)) # (!\inst19|u8|Mux0~0_combout\ & (\inst19|u14|Mux0~0_combout\ $ (!\inst19|u11|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|u8|Mux0~0_combout\,
	datab => \inst19|u14|Mux0~0_combout\,
	datad => \inst19|u11|Mux0~0_combout\,
	combout => \inst20|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y23_N22
\inst20|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux4~3_combout\ = (\inst13|counter\(2) & ((!\inst13|counter\(1)) # (!\inst13|counter\(3)))) # (!\inst13|counter\(2) & (\inst13|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(2),
	datac => \inst13|counter\(3),
	datad => \inst13|counter\(1),
	combout => \inst20|Mux4~3_combout\);

-- Location: LCCOMB_X113_Y23_N24
\inst20|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux4~6_combout\ = (\inst20|Mux4~3_combout\ & (\inst13|counter\(4) & !\inst13|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux4~3_combout\,
	datac => \inst13|counter\(4),
	datad => \inst13|counter\(5),
	combout => \inst20|Mux4~6_combout\);

-- Location: LCCOMB_X113_Y37_N16
\inst20|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux5~3_combout\ = (!\inst13|counter\(2) & !\inst13|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|counter\(2),
	datad => \inst13|counter\(1),
	combout => \inst20|Mux5~3_combout\);

-- Location: LCCOMB_X113_Y37_N10
\inst20|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux5~9_combout\ = (((!\inst13|counter\(3) & \inst20|Mux5~3_combout\)) # (!\inst13|counter\(5))) # (!\inst13|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|counter\(3),
	datab => \inst13|counter\(4),
	datac => \inst13|counter\(5),
	datad => \inst20|Mux5~3_combout\,
	combout => \inst20|Mux5~9_combout\);

-- Location: LCCOMB_X114_Y23_N28
\inst20|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux6~0_combout\ = (\inst19|u11|Mux0~0_combout\) # (\inst19|u14|Mux0~0_combout\ $ (\inst19|u8|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|u14|Mux0~0_combout\,
	datac => \inst19|u8|Mux0~0_combout\,
	datad => \inst19|u11|Mux0~0_combout\,
	combout => \inst20|Mux6~0_combout\);

-- Location: LCCOMB_X113_Y37_N6
\inst13|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~1_combout\ = (\inst13|counter\(5) & (\inst13|counter\(4) & \inst13|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|counter\(5),
	datac => \inst13|counter\(4),
	datad => \inst13|Equal0~0_combout\,
	combout => \inst13|Equal0~1_combout\);

-- Location: FF_X113_Y37_N7
\inst13|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|pulseOut~q\,
	d => \inst13|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|pulseOut~q\);

-- Location: IOIBUF_X115_Y40_N8
\countUp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countUp,
	o => \countUp~input_o\);

-- Location: LCCOMB_X114_Y37_N26
\inst7|pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|pulse~combout\ = LCELL((\inst13|pulseOut~q\) # (!\countUp~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|pulseOut~q\,
	datad => \countUp~input_o\,
	combout => \inst7|pulse~combout\);

-- Location: CLKCTRL_G6
\inst7|pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|pulse~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y36_N4
\inst7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|counter\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: FF_X114_Y36_N5
\inst7|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse~clkctrl_outclk\,
	d => \inst7|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(0));

-- Location: LCCOMB_X114_Y36_N6
\inst7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|counter\(1) & (!\inst7|Add0~1\)) # (!\inst7|counter\(1) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: FF_X114_Y36_N7
\inst7|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse~clkctrl_outclk\,
	d => \inst7|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(1));

-- Location: LCCOMB_X114_Y36_N8
\inst7|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|counter\(2) & (\inst7|Add0~3\ $ (GND))) # (!\inst7|counter\(2) & (!\inst7|Add0~3\ & VCC))
-- \inst7|Add0~5\ = CARRY((\inst7|counter\(2) & !\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: LCCOMB_X114_Y36_N28
\inst7|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~3_combout\ = (\inst7|Add0~4_combout\ & (((!\inst7|counter\(0)) # (!\inst7|counter\(1))) # (!\inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|counter\(1),
	datac => \inst7|Add0~4_combout\,
	datad => \inst7|counter\(0),
	combout => \inst7|counter~3_combout\);

-- Location: FF_X114_Y36_N29
\inst7|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse~clkctrl_outclk\,
	d => \inst7|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(2));

-- Location: LCCOMB_X114_Y36_N10
\inst7|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|counter\(3) & (!\inst7|Add0~5\)) # (!\inst7|counter\(3) & ((\inst7|Add0~5\) # (GND)))
-- \inst7|Add0~7\ = CARRY((!\inst7|Add0~5\) # (!\inst7|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: LCCOMB_X114_Y36_N26
\inst7|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~2_combout\ = (\inst7|Add0~6_combout\ & (((!\inst7|Equal0~0_combout\) # (!\inst7|counter\(1))) # (!\inst7|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(0),
	datab => \inst7|counter\(1),
	datac => \inst7|Equal0~0_combout\,
	datad => \inst7|Add0~6_combout\,
	combout => \inst7|counter~2_combout\);

-- Location: FF_X114_Y36_N27
\inst7|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse~clkctrl_outclk\,
	d => \inst7|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(3));

-- Location: LCCOMB_X114_Y36_N12
\inst7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|counter\(4) & (\inst7|Add0~7\ $ (GND))) # (!\inst7|counter\(4) & (!\inst7|Add0~7\ & VCC))
-- \inst7|Add0~9\ = CARRY((\inst7|counter\(4) & !\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: LCCOMB_X114_Y36_N14
\inst7|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = \inst7|Add0~9\ $ (\inst7|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|counter\(5),
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\);

-- Location: LCCOMB_X114_Y36_N22
\inst7|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~1_combout\ = (\inst7|Add0~10_combout\ & (((!\inst7|counter\(0)) # (!\inst7|counter\(1))) # (!\inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|counter\(1),
	datac => \inst7|Add0~10_combout\,
	datad => \inst7|counter\(0),
	combout => \inst7|counter~1_combout\);

-- Location: FF_X114_Y36_N23
\inst7|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse~clkctrl_outclk\,
	d => \inst7|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(5));

-- Location: LCCOMB_X114_Y36_N18
\inst7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|counter\(4) & (\inst7|counter\(5) & (\inst7|counter\(3) & !\inst7|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datab => \inst7|counter\(5),
	datac => \inst7|counter\(3),
	datad => \inst7|counter\(2),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y36_N30
\inst7|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~0_combout\ = (\inst7|Add0~8_combout\ & (((!\inst7|Equal0~0_combout\) # (!\inst7|counter\(1))) # (!\inst7|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(0),
	datab => \inst7|counter\(1),
	datac => \inst7|Equal0~0_combout\,
	datad => \inst7|Add0~8_combout\,
	combout => \inst7|counter~0_combout\);

-- Location: FF_X114_Y36_N31
\inst7|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse~clkctrl_outclk\,
	d => \inst7|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(4));

-- Location: LCCOMB_X88_Y4_N30
\inst21|u11|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|u11|Mux2~0_combout\ = (\inst7|counter\(3) & (!\inst7|counter\(5) & ((\inst7|counter\(2)) # (!\inst7|counter\(4))))) # (!\inst7|counter\(3) & (\inst7|counter\(5) & ((\inst7|counter\(4)) # (!\inst7|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datab => \inst7|counter\(2),
	datac => \inst7|counter\(3),
	datad => \inst7|counter\(5),
	combout => \inst21|u11|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y4_N28
\inst21|u11|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|u11|Mux1~0_combout\ = (\inst7|counter\(4) & (!\inst7|counter\(2) & (\inst7|counter\(3) $ (!\inst7|counter\(5))))) # (!\inst7|counter\(4) & (\inst7|counter\(2) & (!\inst7|counter\(3) & \inst7|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datab => \inst7|counter\(2),
	datac => \inst7|counter\(3),
	datad => \inst7|counter\(5),
	combout => \inst21|u11|Mux1~0_combout\);

-- Location: LCCOMB_X88_Y4_N24
\inst21|u11|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|u11|Mux3~0_combout\ = (\inst7|counter\(4) & ((\inst7|counter\(2) & (!\inst7|counter\(3) & \inst7|counter\(5))) # (!\inst7|counter\(2) & (\inst7|counter\(3) & !\inst7|counter\(5))))) # (!\inst7|counter\(4) & (\inst7|counter\(2) $ 
-- (((!\inst7|counter\(3) & \inst7|counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datab => \inst7|counter\(2),
	datac => \inst7|counter\(3),
	datad => \inst7|counter\(5),
	combout => \inst21|u11|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y4_N12
\inst21|u14|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|u14|Mux1~0_combout\ = (!\inst21|u11|Mux3~0_combout\ & ((\inst21|u11|Mux2~0_combout\ & (!\inst21|u11|Mux1~0_combout\ & !\inst7|counter\(1))) # (!\inst21|u11|Mux2~0_combout\ & (\inst21|u11|Mux1~0_combout\ & \inst7|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u11|Mux2~0_combout\,
	datab => \inst21|u11|Mux1~0_combout\,
	datac => \inst7|counter\(1),
	datad => \inst21|u11|Mux3~0_combout\,
	combout => \inst21|u14|Mux1~0_combout\);

-- Location: LCCOMB_X87_Y4_N18
\inst21|u14|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|u14|Mux2~0_combout\ = (\inst7|counter\(1) & (((!\inst21|u11|Mux1~0_combout\ & \inst21|u11|Mux3~0_combout\)))) # (!\inst7|counter\(1) & (!\inst21|u11|Mux2~0_combout\ & (\inst21|u11|Mux1~0_combout\ $ (\inst21|u11|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u11|Mux2~0_combout\,
	datab => \inst21|u11|Mux1~0_combout\,
	datac => \inst7|counter\(1),
	datad => \inst21|u11|Mux3~0_combout\,
	combout => \inst21|u14|Mux2~0_combout\);

-- Location: LCCOMB_X87_Y4_N24
\inst21|u14|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|u14|Mux3~0_combout\ = (\inst21|u11|Mux3~0_combout\ & (!\inst21|u11|Mux1~0_combout\ & (\inst21|u11|Mux2~0_combout\ $ (\inst7|counter\(1))))) # (!\inst21|u11|Mux3~0_combout\ & (!\inst21|u11|Mux2~0_combout\ & (\inst21|u11|Mux1~0_combout\ $ 
-- (\inst7|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u11|Mux2~0_combout\,
	datab => \inst21|u11|Mux1~0_combout\,
	datac => \inst7|counter\(1),
	datad => \inst21|u11|Mux3~0_combout\,
	combout => \inst21|u14|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y4_N26
\inst22|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux0~0_combout\ = (\inst21|u14|Mux1~0_combout\) # ((\inst21|u14|Mux2~0_combout\ & ((!\inst21|u14|Mux3~0_combout\) # (!\inst7|counter\(0)))) # (!\inst21|u14|Mux2~0_combout\ & ((\inst21|u14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u14|Mux1~0_combout\,
	datab => \inst21|u14|Mux2~0_combout\,
	datac => \inst7|counter\(0),
	datad => \inst21|u14|Mux3~0_combout\,
	combout => \inst22|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y4_N28
\inst22|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux1~0_combout\ = (!\inst21|u14|Mux1~0_combout\ & ((\inst21|u14|Mux2~0_combout\ & (\inst7|counter\(0) & \inst21|u14|Mux3~0_combout\)) # (!\inst21|u14|Mux2~0_combout\ & ((\inst7|counter\(0)) # (\inst21|u14|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u14|Mux1~0_combout\,
	datab => \inst21|u14|Mux2~0_combout\,
	datac => \inst7|counter\(0),
	datad => \inst21|u14|Mux3~0_combout\,
	combout => \inst22|Mux1~0_combout\);

-- Location: LCCOMB_X87_Y4_N6
\inst22|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux2~0_combout\ = (\inst7|counter\(0)) # ((\inst21|u14|Mux2~0_combout\ & !\inst21|u14|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|u14|Mux2~0_combout\,
	datac => \inst7|counter\(0),
	datad => \inst21|u14|Mux3~0_combout\,
	combout => \inst22|Mux2~0_combout\);

-- Location: LCCOMB_X87_Y4_N4
\inst22|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux3~0_combout\ = (\inst21|u14|Mux2~0_combout\ & (\inst7|counter\(0) $ (!\inst21|u14|Mux3~0_combout\))) # (!\inst21|u14|Mux2~0_combout\ & (\inst7|counter\(0) & !\inst21|u14|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|u14|Mux2~0_combout\,
	datac => \inst7|counter\(0),
	datad => \inst21|u14|Mux3~0_combout\,
	combout => \inst22|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y4_N14
\inst22|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux4~0_combout\ = (!\inst21|u14|Mux2~0_combout\ & (!\inst7|counter\(0) & \inst21|u14|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|u14|Mux2~0_combout\,
	datac => \inst7|counter\(0),
	datad => \inst21|u14|Mux3~0_combout\,
	combout => \inst22|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y4_N0
\inst22|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux5~0_combout\ = (\inst7|counter\(0) $ (!\inst21|u14|Mux3~0_combout\)) # (!\inst21|u14|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|u14|Mux2~0_combout\,
	datac => \inst7|counter\(0),
	datad => \inst21|u14|Mux3~0_combout\,
	combout => \inst22|Mux5~0_combout\);

-- Location: LCCOMB_X87_Y4_N30
\inst22|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~0_combout\ = (!\inst21|u14|Mux1~0_combout\ & (!\inst21|u14|Mux3~0_combout\ & (\inst21|u14|Mux2~0_combout\ $ (\inst7|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u14|Mux1~0_combout\,
	datab => \inst21|u14|Mux2~0_combout\,
	datac => \inst7|counter\(0),
	datad => \inst21|u14|Mux3~0_combout\,
	combout => \inst22|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y4_N10
\inst23|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux0~8_combout\ = (!\inst7|counter\(5) & (((!\inst7|counter\(2) & !\inst7|counter\(3))) # (!\inst7|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datab => \inst7|counter\(2),
	datac => \inst7|counter\(3),
	datad => \inst7|counter\(5),
	combout => \inst23|Mux0~8_combout\);

-- Location: LCCOMB_X88_Y4_N4
\inst21|u11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|u11|Mux0~0_combout\ = (\inst7|counter\(4) & ((\inst7|counter\(2) & ((\inst7|counter\(3)) # (!\inst7|counter\(5)))) # (!\inst7|counter\(2) & (\inst7|counter\(3) & !\inst7|counter\(5))))) # (!\inst7|counter\(4) & (((!\inst7|counter\(3) & 
-- \inst7|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datab => \inst7|counter\(2),
	datac => \inst7|counter\(3),
	datad => \inst7|counter\(5),
	combout => \inst21|u11|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y4_N8
\inst21|u14|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|u14|Mux0~0_combout\ = (\inst21|u11|Mux2~0_combout\ & (!\inst21|u11|Mux1~0_combout\ & ((\inst7|counter\(1)) # (\inst21|u11|Mux3~0_combout\)))) # (!\inst21|u11|Mux2~0_combout\ & (\inst21|u11|Mux1~0_combout\ & ((!\inst21|u11|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u11|Mux2~0_combout\,
	datab => \inst21|u11|Mux1~0_combout\,
	datac => \inst7|counter\(1),
	datad => \inst21|u11|Mux3~0_combout\,
	combout => \inst21|u14|Mux0~0_combout\);

-- Location: LCCOMB_X88_Y4_N6
\inst21|u8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|u8|Mux0~0_combout\ = ((!\inst7|counter\(4) & !\inst7|counter\(3))) # (!\inst7|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datac => \inst7|counter\(3),
	datad => \inst7|counter\(5),
	combout => \inst21|u8|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y4_N10
\inst23|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux1~0_combout\ = (\inst21|u11|Mux0~0_combout\ & ((\inst21|u14|Mux0~0_combout\) # (\inst21|u8|Mux0~0_combout\))) # (!\inst21|u11|Mux0~0_combout\ & (\inst21|u14|Mux0~0_combout\ & \inst21|u8|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u11|Mux0~0_combout\,
	datac => \inst21|u14|Mux0~0_combout\,
	datad => \inst21|u8|Mux0~0_combout\,
	combout => \inst23|Mux1~0_combout\);

-- Location: LCCOMB_X87_Y4_N20
\inst23|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux2~0_combout\ = (\inst21|u14|Mux0~0_combout\) # ((!\inst21|u11|Mux0~0_combout\ & !\inst21|u8|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u11|Mux0~0_combout\,
	datac => \inst21|u14|Mux0~0_combout\,
	datad => \inst21|u8|Mux0~0_combout\,
	combout => \inst23|Mux2~0_combout\);

-- Location: LCCOMB_X87_Y4_N22
\inst23|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux3~0_combout\ = (\inst21|u11|Mux0~0_combout\ & (\inst21|u14|Mux0~0_combout\ & !\inst21|u8|Mux0~0_combout\)) # (!\inst21|u11|Mux0~0_combout\ & (\inst21|u14|Mux0~0_combout\ $ (!\inst21|u8|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u11|Mux0~0_combout\,
	datac => \inst21|u14|Mux0~0_combout\,
	datad => \inst21|u8|Mux0~0_combout\,
	combout => \inst23|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y4_N12
\inst23|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux4~3_combout\ = (\inst7|counter\(3) & ((!\inst7|counter\(1)) # (!\inst7|counter\(2)))) # (!\inst7|counter\(3) & (\inst7|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(3),
	datab => \inst7|counter\(2),
	datad => \inst7|counter\(1),
	combout => \inst23|Mux4~3_combout\);

-- Location: LCCOMB_X88_Y4_N22
\inst23|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux4~6_combout\ = (\inst23|Mux4~3_combout\ & (\inst7|counter\(4) & !\inst7|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux4~3_combout\,
	datac => \inst7|counter\(4),
	datad => \inst7|counter\(5),
	combout => \inst23|Mux4~6_combout\);

-- Location: LCCOMB_X88_Y4_N20
\inst23|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux5~3_combout\ = (!\inst7|counter\(2) & !\inst7|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(2),
	datad => \inst7|counter\(1),
	combout => \inst23|Mux5~3_combout\);

-- Location: LCCOMB_X88_Y4_N18
\inst23|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux5~9_combout\ = (((\inst23|Mux5~3_combout\ & !\inst7|counter\(3))) # (!\inst7|counter\(5))) # (!\inst7|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datab => \inst23|Mux5~3_combout\,
	datac => \inst7|counter\(3),
	datad => \inst7|counter\(5),
	combout => \inst23|Mux5~9_combout\);

-- Location: LCCOMB_X87_Y4_N16
\inst23|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux6~0_combout\ = (\inst21|u11|Mux0~0_combout\) # (\inst21|u14|Mux0~0_combout\ $ (\inst21|u8|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|u11|Mux0~0_combout\,
	datac => \inst21|u14|Mux0~0_combout\,
	datad => \inst21|u8|Mux0~0_combout\,
	combout => \inst23|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\countUp3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countUp3,
	o => \countUp3~input_o\);

-- Location: LCCOMB_X114_Y36_N24
\inst7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (\inst7|counter\(1) & (\inst7|counter\(0) & \inst7|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(1),
	datac => \inst7|counter\(0),
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|Equal0~1_combout\);

-- Location: FF_X114_Y36_N25
\inst7|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse~combout\,
	d => \inst7|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|pulseOut~q\);

-- Location: LCCOMB_X114_Y36_N16
\inst9|pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|pulse~combout\ = LCELL((\inst7|pulseOut~q\) # (!\countUp3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \countUp3~input_o\,
	datad => \inst7|pulseOut~q\,
	combout => \inst9|pulse~combout\);

-- Location: CLKCTRL_G9
\inst9|pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst9|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst9|pulse~clkctrl_outclk\);

-- Location: LCCOMB_X68_Y1_N12
\inst9|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~0_combout\ = \inst9|counter\(0) $ (VCC)
-- \inst9|Add0~1\ = CARRY(\inst9|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(0),
	datad => VCC,
	combout => \inst9|Add0~0_combout\,
	cout => \inst9|Add0~1\);

-- Location: FF_X68_Y1_N13
\inst9|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|pulse~clkctrl_outclk\,
	d => \inst9|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(0));

-- Location: LCCOMB_X68_Y1_N14
\inst9|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~2_combout\ = (\inst9|counter\(1) & (!\inst9|Add0~1\)) # (!\inst9|counter\(1) & ((\inst9|Add0~1\) # (GND)))
-- \inst9|Add0~3\ = CARRY((!\inst9|Add0~1\) # (!\inst9|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(1),
	datad => VCC,
	cin => \inst9|Add0~1\,
	combout => \inst9|Add0~2_combout\,
	cout => \inst9|Add0~3\);

-- Location: FF_X68_Y1_N15
\inst9|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|pulse~clkctrl_outclk\,
	d => \inst9|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(1));

-- Location: LCCOMB_X68_Y1_N16
\inst9|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~4_combout\ = (\inst9|counter\(2) & (\inst9|Add0~3\ $ (GND))) # (!\inst9|counter\(2) & (!\inst9|Add0~3\ & VCC))
-- \inst9|Add0~5\ = CARRY((\inst9|counter\(2) & !\inst9|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(2),
	datad => VCC,
	cin => \inst9|Add0~3\,
	combout => \inst9|Add0~4_combout\,
	cout => \inst9|Add0~5\);

-- Location: FF_X68_Y1_N17
\inst9|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|pulse~clkctrl_outclk\,
	d => \inst9|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(2));

-- Location: LCCOMB_X68_Y1_N18
\inst9|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~6_combout\ = (\inst9|counter\(3) & (!\inst9|Add0~5\)) # (!\inst9|counter\(3) & ((\inst9|Add0~5\) # (GND)))
-- \inst9|Add0~7\ = CARRY((!\inst9|Add0~5\) # (!\inst9|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(3),
	datad => VCC,
	cin => \inst9|Add0~5\,
	combout => \inst9|Add0~6_combout\,
	cout => \inst9|Add0~7\);

-- Location: LCCOMB_X68_Y1_N20
\inst9|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~8_combout\ = (\inst9|counter\(4) & (\inst9|Add0~7\ $ (GND))) # (!\inst9|counter\(4) & (!\inst9|Add0~7\ & VCC))
-- \inst9|Add0~9\ = CARRY((\inst9|counter\(4) & !\inst9|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(4),
	datad => VCC,
	cin => \inst9|Add0~7\,
	combout => \inst9|Add0~8_combout\,
	cout => \inst9|Add0~9\);

-- Location: LCCOMB_X68_Y1_N24
\inst9|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter~0_combout\ = (\inst9|Add0~8_combout\ & (((!\inst9|Equal0~0_combout\) # (!\inst9|counter\(2))) # (!\inst9|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(1),
	datab => \inst9|counter\(2),
	datac => \inst9|Equal0~0_combout\,
	datad => \inst9|Add0~8_combout\,
	combout => \inst9|counter~0_combout\);

-- Location: FF_X68_Y1_N25
\inst9|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|pulse~clkctrl_outclk\,
	d => \inst9|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(4));

-- Location: LCCOMB_X68_Y1_N22
\inst9|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~10_combout\ = \inst9|counter\(5) $ (\inst9|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(5),
	cin => \inst9|Add0~9\,
	combout => \inst9|Add0~10_combout\);

-- Location: FF_X68_Y1_N23
\inst9|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|pulse~clkctrl_outclk\,
	d => \inst9|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(5));

-- Location: LCCOMB_X68_Y1_N8
\inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (!\inst9|counter\(5) & (!\inst9|counter\(3) & (\inst9|counter\(0) & \inst9|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(5),
	datab => \inst9|counter\(3),
	datac => \inst9|counter\(0),
	datad => \inst9|counter\(4),
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X68_Y1_N2
\inst9|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter~1_combout\ = (\inst9|Add0~6_combout\ & (((!\inst9|Equal0~0_combout\) # (!\inst9|counter\(2))) # (!\inst9|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(1),
	datab => \inst9|counter\(2),
	datac => \inst9|Equal0~0_combout\,
	datad => \inst9|Add0~6_combout\,
	combout => \inst9|counter~1_combout\);

-- Location: FF_X68_Y1_N3
\inst9|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|pulse~clkctrl_outclk\,
	d => \inst9|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(3));

-- Location: LCCOMB_X68_Y1_N4
\inst24|u11|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|u11|Mux1~0_combout\ = (\inst9|counter\(2) & (!\inst9|counter\(3) & (\inst9|counter\(5) & !\inst9|counter\(4)))) # (!\inst9|counter\(2) & (\inst9|counter\(4) & (\inst9|counter\(3) $ (!\inst9|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(3),
	datab => \inst9|counter\(2),
	datac => \inst9|counter\(5),
	datad => \inst9|counter\(4),
	combout => \inst24|u11|Mux1~0_combout\);

-- Location: LCCOMB_X68_Y1_N0
\inst24|u11|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|u11|Mux3~0_combout\ = (\inst9|counter\(2) & (\inst9|counter\(4) $ (((\inst9|counter\(3)) # (!\inst9|counter\(5)))))) # (!\inst9|counter\(2) & ((\inst9|counter\(3) & (!\inst9|counter\(5) & \inst9|counter\(4))) # (!\inst9|counter\(3) & 
-- (\inst9|counter\(5) & !\inst9|counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(3),
	datab => \inst9|counter\(2),
	datac => \inst9|counter\(5),
	datad => \inst9|counter\(4),
	combout => \inst24|u11|Mux3~0_combout\);

-- Location: LCCOMB_X68_Y1_N6
\inst24|u11|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|u11|Mux2~0_combout\ = (\inst9|counter\(3) & (!\inst9|counter\(5) & ((\inst9|counter\(2)) # (!\inst9|counter\(4))))) # (!\inst9|counter\(3) & (\inst9|counter\(5) & ((\inst9|counter\(4)) # (!\inst9|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(3),
	datab => \inst9|counter\(2),
	datac => \inst9|counter\(5),
	datad => \inst9|counter\(4),
	combout => \inst24|u11|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y1_N12
\inst24|u14|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|u14|Mux3~0_combout\ = (\inst24|u11|Mux3~0_combout\ & (!\inst24|u11|Mux1~0_combout\ & (\inst9|counter\(1) $ (\inst24|u11|Mux2~0_combout\)))) # (!\inst24|u11|Mux3~0_combout\ & (!\inst24|u11|Mux2~0_combout\ & (\inst24|u11|Mux1~0_combout\ $ 
-- (\inst9|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u11|Mux1~0_combout\,
	datab => \inst9|counter\(1),
	datac => \inst24|u11|Mux3~0_combout\,
	datad => \inst24|u11|Mux2~0_combout\,
	combout => \inst24|u14|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y1_N28
\inst24|u14|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|u14|Mux1~0_combout\ = (!\inst24|u11|Mux3~0_combout\ & ((\inst24|u11|Mux1~0_combout\ & (\inst9|counter\(1) & !\inst24|u11|Mux2~0_combout\)) # (!\inst24|u11|Mux1~0_combout\ & (!\inst9|counter\(1) & \inst24|u11|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u11|Mux1~0_combout\,
	datab => \inst9|counter\(1),
	datac => \inst24|u11|Mux3~0_combout\,
	datad => \inst24|u11|Mux2~0_combout\,
	combout => \inst24|u14|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y1_N10
\inst24|u14|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|u14|Mux2~0_combout\ = (\inst9|counter\(1) & (!\inst24|u11|Mux1~0_combout\ & (\inst24|u11|Mux3~0_combout\))) # (!\inst9|counter\(1) & (!\inst24|u11|Mux2~0_combout\ & (\inst24|u11|Mux1~0_combout\ $ (\inst24|u11|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u11|Mux1~0_combout\,
	datab => \inst9|counter\(1),
	datac => \inst24|u11|Mux3~0_combout\,
	datad => \inst24|u11|Mux2~0_combout\,
	combout => \inst24|u14|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y1_N18
\inst25|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux0~0_combout\ = (\inst24|u14|Mux1~0_combout\) # ((\inst24|u14|Mux3~0_combout\ & ((!\inst24|u14|Mux2~0_combout\) # (!\inst9|counter\(0)))) # (!\inst24|u14|Mux3~0_combout\ & ((\inst24|u14|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux3~0_combout\,
	datab => \inst24|u14|Mux1~0_combout\,
	datac => \inst9|counter\(0),
	datad => \inst24|u14|Mux2~0_combout\,
	combout => \inst25|Mux0~0_combout\);

-- Location: LCCOMB_X67_Y1_N20
\inst25|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux1~0_combout\ = (!\inst24|u14|Mux1~0_combout\ & ((\inst24|u14|Mux3~0_combout\ & ((\inst9|counter\(0)) # (!\inst24|u14|Mux2~0_combout\))) # (!\inst24|u14|Mux3~0_combout\ & (\inst9|counter\(0) & !\inst24|u14|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux3~0_combout\,
	datab => \inst24|u14|Mux1~0_combout\,
	datac => \inst9|counter\(0),
	datad => \inst24|u14|Mux2~0_combout\,
	combout => \inst25|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y1_N30
\inst25|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux2~0_combout\ = (\inst9|counter\(0)) # ((!\inst24|u14|Mux3~0_combout\ & \inst24|u14|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux3~0_combout\,
	datac => \inst9|counter\(0),
	datad => \inst24|u14|Mux2~0_combout\,
	combout => \inst25|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y1_N4
\inst25|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux3~0_combout\ = (\inst24|u14|Mux3~0_combout\ & (\inst9|counter\(0) & \inst24|u14|Mux2~0_combout\)) # (!\inst24|u14|Mux3~0_combout\ & (\inst9|counter\(0) $ (\inst24|u14|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux3~0_combout\,
	datac => \inst9|counter\(0),
	datad => \inst24|u14|Mux2~0_combout\,
	combout => \inst25|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y1_N26
\inst25|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux4~0_combout\ = (\inst24|u14|Mux3~0_combout\ & (!\inst9|counter\(0) & !\inst24|u14|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux3~0_combout\,
	datac => \inst9|counter\(0),
	datad => \inst24|u14|Mux2~0_combout\,
	combout => \inst25|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y1_N24
\inst25|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux5~0_combout\ = (\inst24|u14|Mux3~0_combout\ $ (!\inst9|counter\(0))) # (!\inst24|u14|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux3~0_combout\,
	datac => \inst9|counter\(0),
	datad => \inst24|u14|Mux2~0_combout\,
	combout => \inst25|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y1_N14
\inst25|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mux6~0_combout\ = (!\inst24|u14|Mux3~0_combout\ & (!\inst24|u14|Mux1~0_combout\ & (\inst9|counter\(0) $ (\inst24|u14|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux3~0_combout\,
	datab => \inst24|u14|Mux1~0_combout\,
	datac => \inst9|counter\(0),
	datad => \inst24|u14|Mux2~0_combout\,
	combout => \inst25|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y1_N12
\inst26|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux0~8_combout\ = (!\inst9|counter\(5) & (((!\inst9|counter\(3) & !\inst9|counter\(2))) # (!\inst9|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(3),
	datab => \inst9|counter\(4),
	datac => \inst9|counter\(2),
	datad => \inst9|counter\(5),
	combout => \inst26|Mux0~8_combout\);

-- Location: LCCOMB_X68_Y1_N10
\inst24|u14|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|u14|Mux0~0_combout\ = (\inst24|u11|Mux1~0_combout\ & (((!\inst24|u11|Mux2~0_combout\ & !\inst24|u11|Mux3~0_combout\)))) # (!\inst24|u11|Mux1~0_combout\ & (\inst24|u11|Mux2~0_combout\ & ((\inst9|counter\(1)) # (\inst24|u11|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(1),
	datab => \inst24|u11|Mux1~0_combout\,
	datac => \inst24|u11|Mux2~0_combout\,
	datad => \inst24|u11|Mux3~0_combout\,
	combout => \inst24|u14|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y1_N28
\inst24|u8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|u8|Mux0~0_combout\ = ((!\inst9|counter\(3) & !\inst9|counter\(4))) # (!\inst9|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(3),
	datab => \inst9|counter\(4),
	datad => \inst9|counter\(5),
	combout => \inst24|u8|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y1_N18
\inst24|u11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|u11|Mux0~0_combout\ = (\inst9|counter\(3) & (\inst9|counter\(4) & ((\inst9|counter\(2)) # (!\inst9|counter\(5))))) # (!\inst9|counter\(3) & ((\inst9|counter\(4) & (\inst9|counter\(2) & !\inst9|counter\(5))) # (!\inst9|counter\(4) & 
-- ((\inst9|counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(3),
	datab => \inst9|counter\(4),
	datac => \inst9|counter\(2),
	datad => \inst9|counter\(5),
	combout => \inst24|u11|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y1_N24
\inst26|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux1~0_combout\ = (\inst24|u14|Mux0~0_combout\ & ((\inst24|u8|Mux0~0_combout\) # (\inst24|u11|Mux0~0_combout\))) # (!\inst24|u14|Mux0~0_combout\ & (\inst24|u8|Mux0~0_combout\ & \inst24|u11|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux0~0_combout\,
	datab => \inst24|u8|Mux0~0_combout\,
	datad => \inst24|u11|Mux0~0_combout\,
	combout => \inst26|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y1_N30
\inst26|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux2~0_combout\ = (\inst24|u14|Mux0~0_combout\) # ((!\inst24|u8|Mux0~0_combout\ & !\inst24|u11|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux0~0_combout\,
	datab => \inst24|u8|Mux0~0_combout\,
	datad => \inst24|u11|Mux0~0_combout\,
	combout => \inst26|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y1_N4
\inst26|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux3~0_combout\ = (\inst24|u14|Mux0~0_combout\ & (\inst24|u8|Mux0~0_combout\ $ (\inst24|u11|Mux0~0_combout\))) # (!\inst24|u14|Mux0~0_combout\ & (!\inst24|u8|Mux0~0_combout\ & !\inst24|u11|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux0~0_combout\,
	datab => \inst24|u8|Mux0~0_combout\,
	datad => \inst24|u11|Mux0~0_combout\,
	combout => \inst26|Mux3~0_combout\);

-- Location: LCCOMB_X68_Y1_N26
\inst26|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux4~3_combout\ = (\inst9|counter\(3) & ((!\inst9|counter\(2)) # (!\inst9|counter\(1)))) # (!\inst9|counter\(3) & ((\inst9|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(1),
	datab => \inst9|counter\(3),
	datad => \inst9|counter\(2),
	combout => \inst26|Mux4~3_combout\);

-- Location: LCCOMB_X69_Y1_N6
\inst26|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux4~6_combout\ = (\inst9|counter\(4) & (\inst26|Mux4~3_combout\ & !\inst9|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(4),
	datac => \inst26|Mux4~3_combout\,
	datad => \inst9|counter\(5),
	combout => \inst26|Mux4~6_combout\);

-- Location: LCCOMB_X68_Y1_N28
\inst26|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux5~3_combout\ = (!\inst9|counter\(1) & !\inst9|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(1),
	datad => \inst9|counter\(2),
	combout => \inst26|Mux5~3_combout\);

-- Location: LCCOMB_X68_Y1_N30
\inst26|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux5~9_combout\ = (((!\inst9|counter\(3) & \inst26|Mux5~3_combout\)) # (!\inst9|counter\(4))) # (!\inst9|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(3),
	datab => \inst26|Mux5~3_combout\,
	datac => \inst9|counter\(5),
	datad => \inst9|counter\(4),
	combout => \inst26|Mux5~9_combout\);

-- Location: LCCOMB_X69_Y1_N26
\inst26|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux6~0_combout\ = (\inst24|u11|Mux0~0_combout\) # (\inst24|u14|Mux0~0_combout\ $ (\inst24|u8|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|u14|Mux0~0_combout\,
	datab => \inst24|u8|Mux0~0_combout\,
	datad => \inst24|u11|Mux0~0_combout\,
	combout => \inst26|Mux6~0_combout\);

ww_S_SEG(6) <= \S_SEG[6]~output_o\;

ww_S_SEG(5) <= \S_SEG[5]~output_o\;

ww_S_SEG(4) <= \S_SEG[4]~output_o\;

ww_S_SEG(3) <= \S_SEG[3]~output_o\;

ww_S_SEG(2) <= \S_SEG[2]~output_o\;

ww_S_SEG(1) <= \S_SEG[1]~output_o\;

ww_S_SEG(0) <= \S_SEG[0]~output_o\;

ww_S_SEG18(6) <= \S_SEG18[6]~output_o\;

ww_S_SEG18(5) <= \S_SEG18[5]~output_o\;

ww_S_SEG18(4) <= \S_SEG18[4]~output_o\;

ww_S_SEG18(3) <= \S_SEG18[3]~output_o\;

ww_S_SEG18(2) <= \S_SEG18[2]~output_o\;

ww_S_SEG18(1) <= \S_SEG18[1]~output_o\;

ww_S_SEG18(0) <= \S_SEG18[0]~output_o\;

ww_S_SEG20(6) <= \S_SEG20[6]~output_o\;

ww_S_SEG20(5) <= \S_SEG20[5]~output_o\;

ww_S_SEG20(4) <= \S_SEG20[4]~output_o\;

ww_S_SEG20(3) <= \S_SEG20[3]~output_o\;

ww_S_SEG20(2) <= \S_SEG20[2]~output_o\;

ww_S_SEG20(1) <= \S_SEG20[1]~output_o\;

ww_S_SEG20(0) <= \S_SEG20[0]~output_o\;

ww_S_SEG21(6) <= \S_SEG21[6]~output_o\;

ww_S_SEG21(5) <= \S_SEG21[5]~output_o\;

ww_S_SEG21(4) <= \S_SEG21[4]~output_o\;

ww_S_SEG21(3) <= \S_SEG21[3]~output_o\;

ww_S_SEG21(2) <= \S_SEG21[2]~output_o\;

ww_S_SEG21(1) <= \S_SEG21[1]~output_o\;

ww_S_SEG21(0) <= \S_SEG21[0]~output_o\;

ww_S_SEG22(6) <= \S_SEG22[6]~output_o\;

ww_S_SEG22(5) <= \S_SEG22[5]~output_o\;

ww_S_SEG22(4) <= \S_SEG22[4]~output_o\;

ww_S_SEG22(3) <= \S_SEG22[3]~output_o\;

ww_S_SEG22(2) <= \S_SEG22[2]~output_o\;

ww_S_SEG22(1) <= \S_SEG22[1]~output_o\;

ww_S_SEG22(0) <= \S_SEG22[0]~output_o\;

ww_S_SEG23(6) <= \S_SEG23[6]~output_o\;

ww_S_SEG23(5) <= \S_SEG23[5]~output_o\;

ww_S_SEG23(4) <= \S_SEG23[4]~output_o\;

ww_S_SEG23(3) <= \S_SEG23[3]~output_o\;

ww_S_SEG23(2) <= \S_SEG23[2]~output_o\;

ww_S_SEG23(1) <= \S_SEG23[1]~output_o\;

ww_S_SEG23(0) <= \S_SEG23[0]~output_o\;

ww_S_SEG24(6) <= \S_SEG24[6]~output_o\;

ww_S_SEG24(5) <= \S_SEG24[5]~output_o\;

ww_S_SEG24(4) <= \S_SEG24[4]~output_o\;

ww_S_SEG24(3) <= \S_SEG24[3]~output_o\;

ww_S_SEG24(2) <= \S_SEG24[2]~output_o\;

ww_S_SEG24(1) <= \S_SEG24[1]~output_o\;

ww_S_SEG24(0) <= \S_SEG24[0]~output_o\;

ww_S_SEG25(6) <= \S_SEG25[6]~output_o\;

ww_S_SEG25(5) <= \S_SEG25[5]~output_o\;

ww_S_SEG25(4) <= \S_SEG25[4]~output_o\;

ww_S_SEG25(3) <= \S_SEG25[3]~output_o\;

ww_S_SEG25(2) <= \S_SEG25[2]~output_o\;

ww_S_SEG25(1) <= \S_SEG25[1]~output_o\;

ww_S_SEG25(0) <= \S_SEG25[0]~output_o\;
END structure;


