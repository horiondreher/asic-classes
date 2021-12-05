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

-- DATE "04/23/2019 09:35:52"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Multiplier IS
    PORT (
	S : OUT std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	EN : IN std_logic;
	St : IN std_logic
	);
END Multiplier;

-- Design Ports Information
-- S[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- St	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EN : std_logic;
SIGNAL ww_St : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst|inst|inst14|S~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst|inst11|Ts~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst|inst8|Ts~0_combout\ : std_logic;
SIGNAL \inst|inst8|Ts~1_combout\ : std_logic;
SIGNAL \inst|inst11|Ts~1_combout\ : std_logic;
SIGNAL \inst|inst|inst6|S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst|inst|inst9|S~combout\ : std_logic;
SIGNAL \inst|inst6|S~0_combout\ : std_logic;
SIGNAL \inst|inst|inst4|S~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst|inst|inst5|S~combout\ : std_logic;
SIGNAL \inst|inst2|Ts~combout\ : std_logic;
SIGNAL \inst|inst|inst3|S~0_combout\ : std_logic;
SIGNAL \inst|inst3|Ts~0_combout\ : std_logic;
SIGNAL \inst|inst|inst8|S~combout\ : std_logic;
SIGNAL \inst|inst4|Ts~combout\ : std_logic;
SIGNAL \inst|inst7|Ts~0_combout\ : std_logic;
SIGNAL \inst|inst|inst10|S~0_combout\ : std_logic;
SIGNAL \inst|inst8|S~0_combout\ : std_logic;
SIGNAL \inst|inst6|Ts~0_combout\ : std_logic;
SIGNAL \inst|inst|inst12|S~combout\ : std_logic;
SIGNAL \inst|inst5|Ts~combout\ : std_logic;
SIGNAL \inst|inst9|S~combout\ : std_logic;
SIGNAL \inst|inst10|Ts~combout\ : std_logic;
SIGNAL \inst|inst9|Ts~0_combout\ : std_logic;
SIGNAL \inst|inst11|S~0_combout\ : std_logic;
SIGNAL \inst|inst12|Ts~0_combout\ : std_logic;
SIGNAL \inst|inst|inst15|S~0_combout\ : std_logic;
SIGNAL \inst|inst13|Ts~0_combout\ : std_logic;
SIGNAL \St~input_o\ : std_logic;
SIGNAL \inst6|S7~combout\ : std_logic;
SIGNAL \inst|inst13|S~combout\ : std_logic;
SIGNAL \inst6|S6~combout\ : std_logic;
SIGNAL \inst|inst12|S~0_combout\ : std_logic;
SIGNAL \inst6|S5~combout\ : std_logic;
SIGNAL \inst6|S4~combout\ : std_logic;
SIGNAL \inst|inst7|S~combout\ : std_logic;
SIGNAL \inst6|S3~combout\ : std_logic;
SIGNAL \inst|inst3|S~combout\ : std_logic;
SIGNAL \inst6|S2~combout\ : std_logic;
SIGNAL \inst6|S0~0_combout\ : std_logic;
SIGNAL \inst6|S0~1_combout\ : std_logic;
SIGNAL \inst6|S1~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_S2~combout\ : std_logic;
SIGNAL \inst6|ALT_INV_S3~combout\ : std_logic;
SIGNAL \inst6|ALT_INV_S4~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S <= ww_S;
ww_A <= A;
ww_B <= B;
ww_EN <= EN;
ww_St <= St;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst6|ALT_INV_S2~combout\ <= NOT \inst6|S2~combout\;
\inst6|ALT_INV_S3~combout\ <= NOT \inst6|S3~combout\;
\inst6|ALT_INV_S4~combout\ <= NOT \inst6|S4~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|S7~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|S6~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|S5~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_S4~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_S3~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_S2~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|S0~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|S1~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOIBUF_X115_Y16_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X112_Y13_N16
\inst|inst|inst14|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst14|S~0_combout\ = (\A[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \inst|inst|inst14|S~0_combout\);

-- Location: IOIBUF_X115_Y10_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X112_Y13_N26
\inst|inst11|Ts~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11|Ts~0_combout\ = (\inst|inst|inst14|S~0_combout\ & ((\A[2]~input_o\) # ((\A[0]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst|inst|inst14|S~0_combout\,
	datac => \A[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|inst11|Ts~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X112_Y13_N12
\inst|inst8|Ts~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst8|Ts~0_combout\ = (\A[1]~input_o\ & (\B[2]~input_o\ & \EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \EN~input_o\,
	combout => \inst|inst8|Ts~0_combout\);

-- Location: LCCOMB_X111_Y13_N0
\inst|inst8|Ts~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst8|Ts~1_combout\ = (\B[3]~input_o\ & (\inst|inst8|Ts~0_combout\ & ((\A[2]~input_o\) # (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \inst|inst8|Ts~0_combout\,
	datad => \A[0]~input_o\,
	combout => \inst|inst8|Ts~1_combout\);

-- Location: LCCOMB_X112_Y13_N30
\inst|inst11|Ts~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11|Ts~1_combout\ = (\B[3]~input_o\ & ((\inst|inst11|Ts~0_combout\) # ((\inst|inst8|Ts~1_combout\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|Ts~0_combout\,
	datab => \inst|inst8|Ts~1_combout\,
	datac => \A[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst|inst11|Ts~1_combout\);

-- Location: LCCOMB_X112_Y13_N4
\inst|inst|inst6|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst6|S~0_combout\ = (\B[3]~input_o\ & (\A[0]~input_o\ & \EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \EN~input_o\,
	combout => \inst|inst|inst6|S~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X112_Y13_N18
\inst|inst|inst9|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst9|S~combout\ = (\B[1]~input_o\ & (\A[2]~input_o\ & \EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \EN~input_o\,
	combout => \inst|inst|inst9|S~combout\);

-- Location: LCCOMB_X111_Y13_N2
\inst|inst6|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|S~0_combout\ = \inst|inst|inst6|S~0_combout\ $ (\inst|inst8|Ts~0_combout\ $ (\inst|inst|inst9|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst6|S~0_combout\,
	datac => \inst|inst8|Ts~0_combout\,
	datad => \inst|inst|inst9|S~combout\,
	combout => \inst|inst6|S~0_combout\);

-- Location: LCCOMB_X112_Y13_N2
\inst|inst|inst4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst4|S~0_combout\ = (\EN~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst|inst|inst4|S~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X112_Y13_N14
\inst|inst|inst5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|S~combout\ = (\EN~input_o\ & (\A[2]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst|inst5|S~combout\);

-- Location: LCCOMB_X112_Y13_N8
\inst|inst2|Ts\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Ts~combout\ = ((!\A[0]~input_o\) # (!\inst|inst|inst4|S~0_combout\)) # (!\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \inst|inst|inst4|S~0_combout\,
	datac => \A[0]~input_o\,
	combout => \inst|inst2|Ts~combout\);

-- Location: LCCOMB_X112_Y13_N28
\inst|inst|inst3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst3|S~0_combout\ = (\EN~input_o\ & (\B[2]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[0]~input_o\,
	combout => \inst|inst|inst3|S~0_combout\);

-- Location: LCCOMB_X111_Y13_N4
\inst|inst3|Ts~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Ts~0_combout\ = (\inst|inst|inst5|S~combout\ & ((\inst|inst|inst4|S~0_combout\ $ (\inst|inst|inst3|S~0_combout\)) # (!\inst|inst2|Ts~combout\))) # (!\inst|inst|inst5|S~combout\ & (!\inst|inst2|Ts~combout\ & (\inst|inst|inst4|S~0_combout\ $ 
-- (\inst|inst|inst3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst4|S~0_combout\,
	datab => \inst|inst|inst5|S~combout\,
	datac => \inst|inst2|Ts~combout\,
	datad => \inst|inst|inst3|S~0_combout\,
	combout => \inst|inst3|Ts~0_combout\);

-- Location: LCCOMB_X112_Y13_N0
\inst|inst|inst8|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst8|S~combout\ = (\EN~input_o\ & (\A[3]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst|inst8|S~combout\);

-- Location: LCCOMB_X112_Y13_N22
\inst|inst4|Ts\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Ts~combout\ = ((!\A[0]~input_o\) # (!\B[1]~input_o\)) # (!\inst|inst8|Ts~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|Ts~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	combout => \inst|inst4|Ts~combout\);

-- Location: LCCOMB_X111_Y13_N30
\inst|inst7|Ts~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|Ts~0_combout\ = (\inst|inst3|Ts~0_combout\ & ((\inst|inst|inst8|S~combout\) # (\inst|inst6|S~0_combout\ $ (!\inst|inst4|Ts~combout\)))) # (!\inst|inst3|Ts~0_combout\ & (\inst|inst|inst8|S~combout\ & (\inst|inst6|S~0_combout\ $ 
-- (!\inst|inst4|Ts~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|S~0_combout\,
	datab => \inst|inst3|Ts~0_combout\,
	datac => \inst|inst|inst8|S~combout\,
	datad => \inst|inst4|Ts~combout\,
	combout => \inst|inst7|Ts~0_combout\);

-- Location: LCCOMB_X112_Y13_N20
\inst|inst|inst10|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst10|S~0_combout\ = (\B[3]~input_o\ & (\A[1]~input_o\ & \EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[1]~input_o\,
	datad => \EN~input_o\,
	combout => \inst|inst|inst10|S~0_combout\);

-- Location: LCCOMB_X112_Y13_N6
\inst|inst8|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst8|S~0_combout\ = \inst|inst|inst10|S~0_combout\ $ (((\A[2]~input_o\ & (\B[2]~input_o\ & \EN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|inst|inst10|S~0_combout\,
	datac => \B[2]~input_o\,
	datad => \EN~input_o\,
	combout => \inst|inst8|S~0_combout\);

-- Location: LCCOMB_X111_Y13_N16
\inst|inst6|Ts~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|Ts~0_combout\ = (\inst|inst4|Ts~combout\ & (\inst|inst|inst9|S~combout\ & (\inst|inst|inst6|S~0_combout\ $ (\inst|inst8|Ts~0_combout\)))) # (!\inst|inst4|Ts~combout\ & ((\inst|inst|inst9|S~combout\) # (\inst|inst|inst6|S~0_combout\ $ 
-- (\inst|inst8|Ts~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst6|S~0_combout\,
	datab => \inst|inst4|Ts~combout\,
	datac => \inst|inst8|Ts~0_combout\,
	datad => \inst|inst|inst9|S~combout\,
	combout => \inst|inst6|Ts~0_combout\);

-- Location: LCCOMB_X112_Y13_N10
\inst|inst|inst12|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst12|S~combout\ = (\B[1]~input_o\ & (\A[3]~input_o\ & \EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \EN~input_o\,
	combout => \inst|inst|inst12|S~combout\);

-- Location: LCCOMB_X111_Y13_N18
\inst|inst5|Ts\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|Ts~combout\ = ((!\A[0]~input_o\) # (!\inst|inst8|Ts~0_combout\)) # (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \inst|inst8|Ts~0_combout\,
	datad => \A[0]~input_o\,
	combout => \inst|inst5|Ts~combout\);

-- Location: LCCOMB_X111_Y13_N20
\inst|inst9|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|S~combout\ = \inst|inst8|S~0_combout\ $ (\inst|inst6|Ts~0_combout\ $ (\inst|inst|inst12|S~combout\ $ (\inst|inst5|Ts~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|S~0_combout\,
	datab => \inst|inst6|Ts~0_combout\,
	datac => \inst|inst|inst12|S~combout\,
	datad => \inst|inst5|Ts~combout\,
	combout => \inst|inst9|S~combout\);

-- Location: LCCOMB_X111_Y13_N6
\inst|inst10|Ts\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|Ts~combout\ = (\inst|inst7|Ts~0_combout\ & !\inst|inst9|S~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst7|Ts~0_combout\,
	datad => \inst|inst9|S~combout\,
	combout => \inst|inst10|Ts~combout\);

-- Location: LCCOMB_X111_Y13_N24
\inst|inst9|Ts~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|Ts~0_combout\ = (\inst|inst6|Ts~0_combout\ & ((\inst|inst|inst12|S~combout\) # (\inst|inst8|S~0_combout\ $ (!\inst|inst5|Ts~combout\)))) # (!\inst|inst6|Ts~0_combout\ & (\inst|inst|inst12|S~combout\ & (\inst|inst8|S~0_combout\ $ 
-- (!\inst|inst5|Ts~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|S~0_combout\,
	datab => \inst|inst6|Ts~0_combout\,
	datac => \inst|inst|inst12|S~combout\,
	datad => \inst|inst5|Ts~combout\,
	combout => \inst|inst9|Ts~0_combout\);

-- Location: LCCOMB_X112_Y13_N24
\inst|inst11|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11|S~0_combout\ = (\EN~input_o\ & (\inst|inst|inst14|S~0_combout\ $ (((\B[3]~input_o\ & \A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|inst|inst14|S~0_combout\,
	datac => \A[2]~input_o\,
	datad => \EN~input_o\,
	combout => \inst|inst11|S~0_combout\);

-- Location: LCCOMB_X111_Y13_N26
\inst|inst12|Ts~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Ts~0_combout\ = (\inst|inst10|Ts~combout\ & ((\inst|inst9|Ts~0_combout\) # (\inst|inst8|Ts~1_combout\ $ (\inst|inst11|S~0_combout\)))) # (!\inst|inst10|Ts~combout\ & (\inst|inst9|Ts~0_combout\ & (\inst|inst8|Ts~1_combout\ $ 
-- (\inst|inst11|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|Ts~combout\,
	datab => \inst|inst8|Ts~1_combout\,
	datac => \inst|inst9|Ts~0_combout\,
	datad => \inst|inst11|S~0_combout\,
	combout => \inst|inst12|Ts~0_combout\);

-- Location: LCCOMB_X113_Y13_N24
\inst|inst|inst15|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst15|S~0_combout\ = (\B[3]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|inst|inst15|S~0_combout\);

-- Location: LCCOMB_X109_Y17_N24
\inst|inst13|Ts~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst13|Ts~0_combout\ = (\EN~input_o\ & ((\inst|inst11|Ts~1_combout\ & ((\inst|inst12|Ts~0_combout\) # (\inst|inst|inst15|S~0_combout\))) # (!\inst|inst11|Ts~1_combout\ & (\inst|inst12|Ts~0_combout\ & \inst|inst|inst15|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \inst|inst11|Ts~1_combout\,
	datac => \inst|inst12|Ts~0_combout\,
	datad => \inst|inst|inst15|S~0_combout\,
	combout => \inst|inst13|Ts~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\St~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_St,
	o => \St~input_o\);

-- Location: LCCOMB_X109_Y17_N2
\inst6|S7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|S7~combout\ = (\inst|inst13|Ts~0_combout\ & !\St~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst13|Ts~0_combout\,
	datad => \St~input_o\,
	combout => \inst6|S7~combout\);

-- Location: LCCOMB_X109_Y17_N12
\inst|inst13|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst13|S~combout\ = \inst|inst12|Ts~0_combout\ $ (((\EN~input_o\ & (\inst|inst11|Ts~1_combout\ $ (\inst|inst|inst15|S~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \inst|inst11|Ts~1_combout\,
	datac => \inst|inst12|Ts~0_combout\,
	datad => \inst|inst|inst15|S~0_combout\,
	combout => \inst|inst13|S~combout\);

-- Location: LCCOMB_X109_Y17_N6
\inst6|S6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|S6~combout\ = (\inst|inst13|S~combout\ & !\St~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|S~combout\,
	datad => \St~input_o\,
	combout => \inst6|S6~combout\);

-- Location: LCCOMB_X111_Y13_N12
\inst|inst12|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|S~0_combout\ = \inst|inst8|Ts~1_combout\ $ (\inst|inst11|S~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst8|Ts~1_combout\,
	datad => \inst|inst11|S~0_combout\,
	combout => \inst|inst12|S~0_combout\);

-- Location: LCCOMB_X111_Y13_N14
\inst6|S5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|S5~combout\ = (!\St~input_o\ & (\inst|inst12|S~0_combout\ $ (\inst|inst9|Ts~0_combout\ $ (\inst|inst10|Ts~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12|S~0_combout\,
	datab => \inst|inst9|Ts~0_combout\,
	datac => \inst|inst10|Ts~combout\,
	datad => \St~input_o\,
	combout => \inst6|S5~combout\);

-- Location: LCCOMB_X111_Y13_N8
\inst6|S4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|S4~combout\ = (\St~input_o\) # (\inst|inst9|S~combout\ $ (\inst|inst7|Ts~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst9|S~combout\,
	datac => \inst|inst7|Ts~0_combout\,
	datad => \St~input_o\,
	combout => \inst6|S4~combout\);

-- Location: LCCOMB_X111_Y13_N10
\inst|inst7|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|S~combout\ = \inst|inst6|S~0_combout\ $ (\inst|inst3|Ts~0_combout\ $ (\inst|inst|inst8|S~combout\ $ (\inst|inst4|Ts~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|S~0_combout\,
	datab => \inst|inst3|Ts~0_combout\,
	datac => \inst|inst|inst8|S~combout\,
	datad => \inst|inst4|Ts~combout\,
	combout => \inst|inst7|S~combout\);

-- Location: LCCOMB_X111_Y13_N28
\inst6|S3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|S3~combout\ = (\inst|inst7|S~combout\) # (\St~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|S~combout\,
	datad => \St~input_o\,
	combout => \inst6|S3~combout\);

-- Location: LCCOMB_X111_Y13_N22
\inst|inst3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|S~combout\ = \inst|inst|inst4|S~0_combout\ $ (\inst|inst|inst5|S~combout\ $ (\inst|inst2|Ts~combout\ $ (\inst|inst|inst3|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst4|S~0_combout\,
	datab => \inst|inst|inst5|S~combout\,
	datac => \inst|inst2|Ts~combout\,
	datad => \inst|inst|inst3|S~0_combout\,
	combout => \inst|inst3|S~combout\);

-- Location: LCCOMB_X109_Y17_N16
\inst6|S2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|S2~combout\ = (\inst|inst3|S~combout\) # (\St~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|S~combout\,
	datad => \St~input_o\,
	combout => \inst6|S2~combout\);

-- Location: LCCOMB_X112_Y14_N24
\inst6|S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|S0~0_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ $ (((\B[1]~input_o\ & \A[0]~input_o\))))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst6|S0~0_combout\);

-- Location: LCCOMB_X109_Y17_N26
\inst6|S0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|S0~1_combout\ = (!\St~input_o\ & (\inst6|S0~0_combout\ & \EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St~input_o\,
	datac => \inst6|S0~0_combout\,
	datad => \EN~input_o\,
	combout => \inst6|S0~1_combout\);

-- Location: LCCOMB_X109_Y17_N4
\inst6|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|S1~0_combout\ = (\EN~input_o\ & (!\St~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \St~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst6|S1~0_combout\);

ww_S(7) <= \S[7]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;
END structure;


