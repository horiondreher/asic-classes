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

-- DATE "06/04/2019 12:05:41"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	GrayCode IS
    PORT (
	S_LED : OUT std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(15 DOWNTO 0);
	S_SEG0 : OUT std_logic_vector(6 DOWNTO 0);
	S_SEG1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END GrayCode;

-- Design Ports Information
-- S_LED[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_LED[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_LED[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_LED[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_SEG1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GrayCode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_S_SEG0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S_SEG1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \S_LED[3]~output_o\ : std_logic;
SIGNAL \S_LED[2]~output_o\ : std_logic;
SIGNAL \S_LED[1]~output_o\ : std_logic;
SIGNAL \S_LED[0]~output_o\ : std_logic;
SIGNAL \S_SEG0[6]~output_o\ : std_logic;
SIGNAL \S_SEG0[5]~output_o\ : std_logic;
SIGNAL \S_SEG0[4]~output_o\ : std_logic;
SIGNAL \S_SEG0[3]~output_o\ : std_logic;
SIGNAL \S_SEG0[2]~output_o\ : std_logic;
SIGNAL \S_SEG0[1]~output_o\ : std_logic;
SIGNAL \S_SEG0[0]~output_o\ : std_logic;
SIGNAL \S_SEG1[6]~output_o\ : std_logic;
SIGNAL \S_SEG1[5]~output_o\ : std_logic;
SIGNAL \S_SEG1[4]~output_o\ : std_logic;
SIGNAL \S_SEG1[3]~output_o\ : std_logic;
SIGNAL \S_SEG1[2]~output_o\ : std_logic;
SIGNAL \S_SEG1[1]~output_o\ : std_logic;
SIGNAL \S_SEG1[0]~output_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \inst|inst|Equal13~0_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|inst|Equal4~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|inst|Equal10~1_combout\ : std_logic;
SIGNAL \inst|inst|Equal10~2_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|inst|Equal12~0_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \inst|inst|Equal13~1_combout\ : std_logic;
SIGNAL \inst|inst|Equal10~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal11~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal11~1_combout\ : std_logic;
SIGNAL \inst|inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal15~0_combout\ : std_logic;
SIGNAL \inst|inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal10~3_combout\ : std_logic;
SIGNAL \inst|inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal8~1_combout\ : std_logic;
SIGNAL \inst|inst|WideOr1~1_combout\ : std_logic;
SIGNAL \inst|inst|Equal12~1_combout\ : std_logic;
SIGNAL \inst|inst|Equal14~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal12~2_combout\ : std_logic;
SIGNAL \inst|inst|WideOr1~combout\ : std_logic;
SIGNAL \inst|inst|Equal4~1_combout\ : std_logic;
SIGNAL \inst|inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal7~1_combout\ : std_logic;
SIGNAL \inst|inst|Equal6~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal6~1_combout\ : std_logic;
SIGNAL \inst|inst|WideOr3~1_combout\ : std_logic;
SIGNAL \inst|inst|WideOr3~2_combout\ : std_logic;
SIGNAL \inst|inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|inst|WideOr5~0_combout\ : std_logic;
SIGNAL \inst|inst|WideOr5~combout\ : std_logic;
SIGNAL \inst|inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|inst|WideOr7~0_combout\ : std_logic;
SIGNAL \inst|inst|WideOr7~combout\ : std_logic;
SIGNAL \inst4|inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|inst|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst2|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst4|inst2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst4|inst2|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S_LED <= ww_S_LED;
ww_SW <= SW;
S_SEG0 <= ww_S_SEG0;
S_SEG1 <= ww_S_SEG1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst4|inst2|ALT_INV_Mux7~0_combout\ <= NOT \inst4|inst2|Mux7~0_combout\;
\inst4|inst2|ALT_INV_Mux6~0_combout\ <= NOT \inst4|inst2|Mux6~0_combout\;
\inst4|inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst4|inst2|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N16
\S_LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|WideOr1~combout\,
	devoe => ww_devoe,
	o => \S_LED[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\S_LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|S\(2),
	devoe => ww_devoe,
	o => \S_LED[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\S_LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|S\(1),
	devoe => ww_devoe,
	o => \S_LED[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\S_LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|S\(0),
	devoe => ww_devoe,
	o => \S_LED[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\S_SEG0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\S_SEG0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\S_SEG0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\S_SEG0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\S_SEG0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\S_SEG0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\S_SEG0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\S_SEG1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \S_SEG1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\S_SEG1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\S_SEG1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\S_SEG1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\S_SEG1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_SEG1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\S_SEG1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_SEG1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\S_SEG1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \S_SEG1[0]~output_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X114_Y10_N10
\inst|inst|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal13~0_combout\ = (!\SW[12]~input_o\ & !\SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|inst|Equal13~0_combout\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X114_Y13_N0
\inst|inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal4~0_combout\ = (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & !\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|inst|Equal4~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y14_N22
\inst|inst|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal10~1_combout\ = (!\SW[7]~input_o\ & (\inst|inst|Equal4~0_combout\ & (!\SW[8]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|inst|Equal4~0_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|inst|Equal10~1_combout\);

-- Location: LCCOMB_X114_Y14_N24
\inst|inst|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal10~2_combout\ = (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (!\SW[2]~input_o\ & \inst|inst|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst|inst|Equal10~1_combout\,
	combout => \inst|inst|Equal10~2_combout\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X114_Y10_N0
\inst|inst|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal12~0_combout\ = (!\SW[11]~input_o\ & (!\SW[10]~input_o\ & (\inst|inst|Equal10~2_combout\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst|inst|Equal10~2_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst|inst|Equal12~0_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X114_Y10_N26
\inst|inst|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal13~1_combout\ = (\inst|inst|Equal13~0_combout\ & (\inst|inst|Equal12~0_combout\ & (!\SW[15]~input_o\ & \SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal13~0_combout\,
	datab => \inst|inst|Equal12~0_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst|inst|Equal13~1_combout\);

-- Location: LCCOMB_X114_Y10_N8
\inst|inst|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal10~0_combout\ = (!\SW[13]~input_o\ & (!\SW[12]~input_o\ & (!\SW[15]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|inst|Equal10~0_combout\);

-- Location: LCCOMB_X114_Y10_N20
\inst|inst|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal11~0_combout\ = (\inst|inst|Equal10~2_combout\ & !\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|Equal10~2_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst|inst|Equal11~0_combout\);

-- Location: LCCOMB_X114_Y10_N16
\inst|inst|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal11~1_combout\ = (\SW[11]~input_o\ & (\inst|inst|Equal10~0_combout\ & (!\SW[10]~input_o\ & \inst|inst|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \inst|inst|Equal10~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \inst|inst|Equal11~0_combout\,
	combout => \inst|inst|Equal11~1_combout\);

-- Location: LCCOMB_X114_Y10_N2
\inst|inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal1~0_combout\ = (\inst|inst|Equal10~0_combout\ & (!\SW[10]~input_o\ & !\SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal10~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \inst|inst|Equal1~0_combout\);

-- Location: LCCOMB_X114_Y10_N30
\inst|inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal9~0_combout\ = (\inst|inst|Equal1~0_combout\ & (\inst|inst|Equal10~2_combout\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal1~0_combout\,
	datac => \inst|inst|Equal10~2_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst|inst|Equal9~0_combout\);

-- Location: LCCOMB_X114_Y10_N12
\inst|inst|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal15~0_combout\ = (\inst|inst|Equal13~0_combout\ & (\inst|inst|Equal12~0_combout\ & (\SW[15]~input_o\ & !\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal13~0_combout\,
	datab => \inst|inst|Equal12~0_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst|inst|Equal15~0_combout\);

-- Location: LCCOMB_X114_Y10_N28
\inst|inst|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|WideOr1~0_combout\ = (!\inst|inst|Equal13~1_combout\ & (!\inst|inst|Equal11~1_combout\ & (!\inst|inst|Equal9~0_combout\ & !\inst|inst|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal13~1_combout\,
	datab => \inst|inst|Equal11~1_combout\,
	datac => \inst|inst|Equal9~0_combout\,
	datad => \inst|inst|Equal15~0_combout\,
	combout => \inst|inst|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y10_N14
\inst|inst|Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal10~3_combout\ = (!\SW[11]~input_o\ & (\inst|inst|Equal10~0_combout\ & (\SW[10]~input_o\ & \inst|inst|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \inst|inst|Equal10~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \inst|inst|Equal11~0_combout\,
	combout => \inst|inst|Equal10~3_combout\);

-- Location: LCCOMB_X114_Y14_N26
\inst|inst|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal8~0_combout\ = (!\SW[7]~input_o\ & (\inst|inst|Equal4~0_combout\ & (\SW[8]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|inst|Equal4~0_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|inst|Equal8~0_combout\);

-- Location: LCCOMB_X114_Y14_N16
\inst|inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal2~0_combout\ = (!\SW[1]~input_o\ & (!\SW[9]~input_o\ & (\inst|inst|Equal1~0_combout\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \inst|inst|Equal1~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|inst|Equal2~0_combout\);

-- Location: LCCOMB_X114_Y14_N28
\inst|inst|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal8~1_combout\ = (!\SW[2]~input_o\ & (\inst|inst|Equal8~0_combout\ & \inst|inst|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \inst|inst|Equal8~0_combout\,
	datad => \inst|inst|Equal2~0_combout\,
	combout => \inst|inst|Equal8~1_combout\);

-- Location: LCCOMB_X114_Y13_N26
\inst|inst|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|WideOr1~1_combout\ = ((\inst|inst|Equal10~3_combout\) # (\inst|inst|Equal8~1_combout\)) # (!\inst|inst|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr1~0_combout\,
	datab => \inst|inst|Equal10~3_combout\,
	datad => \inst|inst|Equal8~1_combout\,
	combout => \inst|inst|WideOr1~1_combout\);

-- Location: LCCOMB_X114_Y10_N6
\inst|inst|Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal12~1_combout\ = (\inst|inst|Equal12~0_combout\ & (!\SW[15]~input_o\ & !\SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal12~0_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst|inst|Equal12~1_combout\);

-- Location: LCCOMB_X114_Y10_N18
\inst|inst|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal14~0_combout\ = (\inst|inst|Equal12~1_combout\ & (!\SW[12]~input_o\ & \SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal12~1_combout\,
	datab => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|inst|Equal14~0_combout\);

-- Location: LCCOMB_X114_Y10_N24
\inst|inst|Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal12~2_combout\ = (\inst|inst|Equal12~1_combout\ & (\SW[12]~input_o\ & !\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal12~1_combout\,
	datab => \SW[12]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|inst|Equal12~2_combout\);

-- Location: LCCOMB_X114_Y13_N12
\inst|inst|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|WideOr1~combout\ = (\inst|inst|WideOr1~1_combout\) # ((\inst|inst|Equal14~0_combout\) # (\inst|inst|Equal12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr1~1_combout\,
	datab => \inst|inst|Equal14~0_combout\,
	datac => \inst|inst|Equal12~2_combout\,
	combout => \inst|inst|WideOr1~combout\);

-- Location: LCCOMB_X114_Y14_N18
\inst|inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal4~1_combout\ = (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (!\SW[2]~input_o\ & \inst|inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst|inst|Equal2~0_combout\,
	combout => \inst|inst|Equal4~1_combout\);

-- Location: LCCOMB_X114_Y13_N10
\inst|inst|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|WideOr3~0_combout\ = (\inst|inst|Equal13~1_combout\) # ((\inst|inst|Equal4~0_combout\ & (\inst|inst|Equal4~1_combout\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal4~0_combout\,
	datab => \inst|inst|Equal4~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst|inst|Equal13~1_combout\,
	combout => \inst|inst|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y13_N22
\inst|inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal5~0_combout\ = (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & \inst|inst|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \inst|inst|Equal4~1_combout\,
	combout => \inst|inst|Equal5~0_combout\);

-- Location: LCCOMB_X114_Y13_N8
\inst|inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal5~1_combout\ = (\SW[5]~input_o\ & (\inst|inst|Equal5~0_combout\ & !\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \inst|inst|Equal5~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|inst|Equal5~1_combout\);

-- Location: LCCOMB_X114_Y14_N20
\inst|inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal7~0_combout\ = (\SW[7]~input_o\ & (\inst|inst|Equal4~0_combout\ & !\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|inst|Equal4~0_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst|inst|Equal7~0_combout\);

-- Location: LCCOMB_X114_Y14_N30
\inst|inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal7~1_combout\ = (\inst|inst|Equal7~0_combout\ & (!\SW[8]~input_o\ & (!\SW[2]~input_o\ & \inst|inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal7~0_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst|inst|Equal2~0_combout\,
	combout => \inst|inst|Equal7~1_combout\);

-- Location: LCCOMB_X114_Y13_N20
\inst|inst|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal6~0_combout\ = (\SW[6]~input_o\ & (!\SW[5]~input_o\ & !\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|inst|Equal6~0_combout\);

-- Location: LCCOMB_X114_Y13_N6
\inst|inst|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal6~1_combout\ = (\inst|inst|Equal4~1_combout\ & (!\SW[4]~input_o\ & \inst|inst|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal4~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst|inst|Equal6~0_combout\,
	combout => \inst|inst|Equal6~1_combout\);

-- Location: LCCOMB_X114_Y13_N24
\inst|inst|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|WideOr3~1_combout\ = (!\inst|inst|Equal15~0_combout\ & (!\inst|inst|Equal14~0_combout\ & (!\inst|inst|Equal7~1_combout\ & !\inst|inst|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal15~0_combout\,
	datab => \inst|inst|Equal14~0_combout\,
	datac => \inst|inst|Equal7~1_combout\,
	datad => \inst|inst|Equal6~1_combout\,
	combout => \inst|inst|WideOr3~1_combout\);

-- Location: LCCOMB_X114_Y13_N18
\inst|inst|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|WideOr3~2_combout\ = (\inst|inst|WideOr3~0_combout\) # ((\inst|inst|Equal5~1_combout\) # ((\inst|inst|Equal12~2_combout\) # (!\inst|inst|WideOr3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr3~0_combout\,
	datab => \inst|inst|Equal5~1_combout\,
	datac => \inst|inst|Equal12~2_combout\,
	datad => \inst|inst|WideOr3~1_combout\,
	combout => \inst|inst|WideOr3~2_combout\);

-- Location: LCCOMB_X114_Y13_N4
\inst2|inst|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|S\(2) = \inst|inst|WideOr3~2_combout\ $ (((\inst|inst|WideOr1~1_combout\) # ((\inst|inst|Equal14~0_combout\) # (\inst|inst|Equal12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr1~1_combout\,
	datab => \inst|inst|Equal14~0_combout\,
	datac => \inst|inst|Equal12~2_combout\,
	datad => \inst|inst|WideOr3~2_combout\,
	combout => \inst2|inst|S\(2));

-- Location: LCCOMB_X114_Y13_N30
\inst|inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal3~0_combout\ = (!\SW[5]~input_o\ & (\inst|inst|Equal5~0_combout\ & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \inst|inst|Equal5~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|inst|Equal3~0_combout\);

-- Location: LCCOMB_X114_Y14_N8
\inst|inst|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|WideOr5~0_combout\ = (\inst|inst|Equal11~1_combout\) # ((\inst|inst|Equal10~1_combout\ & (\inst|inst|Equal2~0_combout\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal10~1_combout\,
	datab => \inst|inst|Equal2~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \inst|inst|Equal11~1_combout\,
	combout => \inst|inst|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y13_N16
\inst|inst|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|WideOr5~combout\ = (\inst|inst|Equal3~0_combout\) # (((\inst|inst|Equal10~3_combout\) # (\inst|inst|WideOr5~0_combout\)) # (!\inst|inst|WideOr3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal3~0_combout\,
	datab => \inst|inst|WideOr3~1_combout\,
	datac => \inst|inst|Equal10~3_combout\,
	datad => \inst|inst|WideOr5~0_combout\,
	combout => \inst|inst|WideOr5~combout\);

-- Location: LCCOMB_X114_Y54_N24
\inst2|inst|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|S\(1) = \inst|inst|WideOr5~combout\ $ (\inst|inst|WideOr3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|WideOr5~combout\,
	datad => \inst|inst|WideOr3~2_combout\,
	combout => \inst2|inst|S\(1));

-- Location: LCCOMB_X114_Y14_N10
\inst|inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal1~1_combout\ = (\SW[1]~input_o\ & (!\SW[9]~input_o\ & (\inst|inst|Equal1~0_combout\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \inst|inst|Equal1~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|inst|Equal1~1_combout\);

-- Location: LCCOMB_X114_Y14_N12
\inst|inst|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|WideOr7~0_combout\ = (\inst|inst|Equal7~1_combout\) # ((!\SW[2]~input_o\ & (\inst|inst|Equal10~1_combout\ & \inst|inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|inst|Equal10~1_combout\,
	datac => \inst|inst|Equal7~1_combout\,
	datad => \inst|inst|Equal1~1_combout\,
	combout => \inst|inst|WideOr7~0_combout\);

-- Location: LCCOMB_X114_Y13_N2
\inst|inst|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|WideOr7~combout\ = (\inst|inst|Equal3~0_combout\) # ((\inst|inst|Equal5~1_combout\) # ((\inst|inst|WideOr7~0_combout\) # (!\inst|inst|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal3~0_combout\,
	datab => \inst|inst|Equal5~1_combout\,
	datac => \inst|inst|WideOr1~0_combout\,
	datad => \inst|inst|WideOr7~0_combout\,
	combout => \inst|inst|WideOr7~combout\);

-- Location: LCCOMB_X114_Y54_N26
\inst2|inst|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|S\(0) = \inst|inst|WideOr5~combout\ $ (\inst|inst|WideOr7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|WideOr5~combout\,
	datad => \inst|inst|WideOr7~combout\,
	combout => \inst2|inst|S\(0));

-- Location: LCCOMB_X114_Y54_N28
\inst4|inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|Mux0~0_combout\ = (\inst|inst|WideOr3~2_combout\ & (((\inst|inst|WideOr1~combout\) # (!\inst|inst|WideOr7~combout\)) # (!\inst|inst|WideOr5~combout\))) # (!\inst|inst|WideOr3~2_combout\ & (\inst|inst|WideOr5~combout\ $ 
-- ((\inst|inst|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr3~2_combout\,
	datab => \inst|inst|WideOr5~combout\,
	datac => \inst|inst|WideOr1~combout\,
	datad => \inst|inst|WideOr7~combout\,
	combout => \inst4|inst2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y54_N14
\inst4|inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|Mux1~0_combout\ = (\inst|inst|WideOr3~2_combout\ & ((\inst|inst|WideOr5~combout\ & (!\inst|inst|WideOr1~combout\ & \inst|inst|WideOr7~combout\)) # (!\inst|inst|WideOr5~combout\ & (\inst|inst|WideOr1~combout\)))) # 
-- (!\inst|inst|WideOr3~2_combout\ & ((\inst|inst|WideOr5~combout\ & ((\inst|inst|WideOr7~combout\) # (!\inst|inst|WideOr1~combout\))) # (!\inst|inst|WideOr5~combout\ & (!\inst|inst|WideOr1~combout\ & \inst|inst|WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr3~2_combout\,
	datab => \inst|inst|WideOr5~combout\,
	datac => \inst|inst|WideOr1~combout\,
	datad => \inst|inst|WideOr7~combout\,
	combout => \inst4|inst2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y54_N8
\inst4|inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|Mux2~0_combout\ = (\inst|inst|WideOr7~combout\) # ((\inst|inst|WideOr3~2_combout\ & (\inst|inst|WideOr5~combout\ $ (!\inst|inst|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr3~2_combout\,
	datab => \inst|inst|WideOr5~combout\,
	datac => \inst|inst|WideOr1~combout\,
	datad => \inst|inst|WideOr7~combout\,
	combout => \inst4|inst2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y54_N18
\inst4|inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|Mux3~0_combout\ = (\inst|inst|WideOr7~combout\ & (\inst|inst|WideOr3~2_combout\ $ (((\inst|inst|WideOr1~combout\) # (!\inst|inst|WideOr5~combout\))))) # (!\inst|inst|WideOr7~combout\ & (\inst|inst|WideOr3~2_combout\ & 
-- (\inst|inst|WideOr5~combout\ $ (!\inst|inst|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr3~2_combout\,
	datab => \inst|inst|WideOr5~combout\,
	datac => \inst|inst|WideOr1~combout\,
	datad => \inst|inst|WideOr7~combout\,
	combout => \inst4|inst2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y54_N12
\inst4|inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|Mux4~0_combout\ = (!\inst|inst|WideOr7~combout\ & ((\inst|inst|WideOr3~2_combout\ & (!\inst|inst|WideOr5~combout\ & \inst|inst|WideOr1~combout\)) # (!\inst|inst|WideOr3~2_combout\ & (\inst|inst|WideOr5~combout\ & 
-- !\inst|inst|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr3~2_combout\,
	datab => \inst|inst|WideOr5~combout\,
	datac => \inst|inst|WideOr1~combout\,
	datad => \inst|inst|WideOr7~combout\,
	combout => \inst4|inst2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y54_N6
\inst4|inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|Mux5~0_combout\ = (\inst|inst|WideOr3~2_combout\ & ((\inst|inst|WideOr5~combout\ & (\inst|inst|WideOr1~combout\ $ (!\inst|inst|WideOr7~combout\))) # (!\inst|inst|WideOr5~combout\ & (!\inst|inst|WideOr1~combout\ & 
-- \inst|inst|WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr3~2_combout\,
	datab => \inst|inst|WideOr5~combout\,
	datac => \inst|inst|WideOr1~combout\,
	datad => \inst|inst|WideOr7~combout\,
	combout => \inst4|inst2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y54_N16
\inst4|inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|Mux6~0_combout\ = (\inst|inst|WideOr3~2_combout\ & ((\inst|inst|WideOr7~combout\) # (\inst|inst|WideOr5~combout\ $ (\inst|inst|WideOr1~combout\)))) # (!\inst|inst|WideOr3~2_combout\ & ((\inst|inst|WideOr5~combout\ $ 
-- (\inst|inst|WideOr1~combout\)) # (!\inst|inst|WideOr7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr3~2_combout\,
	datab => \inst|inst|WideOr5~combout\,
	datac => \inst|inst|WideOr1~combout\,
	datad => \inst|inst|WideOr7~combout\,
	combout => \inst4|inst2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y13_N28
\inst4|inst2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|Mux7~0_combout\ = ((!\inst|inst|WideOr3~2_combout\ & !\inst|inst|WideOr5~combout\)) # (!\inst|inst|WideOr1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|WideOr1~combout\,
	datab => \inst|inst|WideOr3~2_combout\,
	datad => \inst|inst|WideOr5~combout\,
	combout => \inst4|inst2|Mux7~0_combout\);

ww_S_LED(3) <= \S_LED[3]~output_o\;

ww_S_LED(2) <= \S_LED[2]~output_o\;

ww_S_LED(1) <= \S_LED[1]~output_o\;

ww_S_LED(0) <= \S_LED[0]~output_o\;

ww_S_SEG0(6) <= \S_SEG0[6]~output_o\;

ww_S_SEG0(5) <= \S_SEG0[5]~output_o\;

ww_S_SEG0(4) <= \S_SEG0[4]~output_o\;

ww_S_SEG0(3) <= \S_SEG0[3]~output_o\;

ww_S_SEG0(2) <= \S_SEG0[2]~output_o\;

ww_S_SEG0(1) <= \S_SEG0[1]~output_o\;

ww_S_SEG0(0) <= \S_SEG0[0]~output_o\;

ww_S_SEG1(6) <= \S_SEG1[6]~output_o\;

ww_S_SEG1(5) <= \S_SEG1[5]~output_o\;

ww_S_SEG1(4) <= \S_SEG1[4]~output_o\;

ww_S_SEG1(3) <= \S_SEG1[3]~output_o\;

ww_S_SEG1(2) <= \S_SEG1[2]~output_o\;

ww_S_SEG1(1) <= \S_SEG1[1]~output_o\;

ww_S_SEG1(0) <= \S_SEG1[0]~output_o\;
END structure;


