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

-- DATE "05/23/2019 16:29:53"

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

ENTITY 	sistemaCompleto IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	ordOut : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END sistemaCompleto;

-- Design Ports Information
-- ordOut[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ordOut[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sistemaCompleto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ordOut : std_logic_vector(15 DOWNTO 0);
SIGNAL \ordOut[0]~output_o\ : std_logic;
SIGNAL \ordOut[1]~output_o\ : std_logic;
SIGNAL \ordOut[2]~output_o\ : std_logic;
SIGNAL \ordOut[3]~output_o\ : std_logic;
SIGNAL \ordOut[4]~output_o\ : std_logic;
SIGNAL \ordOut[5]~output_o\ : std_logic;
SIGNAL \ordOut[6]~output_o\ : std_logic;
SIGNAL \ordOut[7]~output_o\ : std_logic;
SIGNAL \ordOut[8]~output_o\ : std_logic;
SIGNAL \ordOut[9]~output_o\ : std_logic;
SIGNAL \ordOut[10]~output_o\ : std_logic;
SIGNAL \ordOut[11]~output_o\ : std_logic;
SIGNAL \ordOut[12]~output_o\ : std_logic;
SIGNAL \ordOut[13]~output_o\ : std_logic;
SIGNAL \ordOut[14]~output_o\ : std_logic;
SIGNAL \ordOut[15]~output_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \uC|u1|acumComp:2:acumx|Add0~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \uC|u1|acumComp:3:acumx|Add0~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \uC|u1|acumComp:4:acumx|Add0~0_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:3:acumx|Add0~1_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:4:acumx|Add0~1_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:3:acumx|Add0~2_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:6:acumx|Add0~1\ : std_logic;
SIGNAL \uC|u1|acumComp:6:acumx|Add0~3\ : std_logic;
SIGNAL \uC|u1|acumComp:6:acumx|Add0~5\ : std_logic;
SIGNAL \uC|u1|acumComp:6:acumx|Add0~6_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:6:acumx|Add0~4_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \uC|u1|acumComp:8:acumx|Add0~0_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:6:acumx|Add0~2_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:8:acumx|Add0~1_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:6:acumx|Add0~0_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:8:acumx|Add0~2_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:10:acumx|Add0~1\ : std_logic;
SIGNAL \uC|u1|acumComp:10:acumx|Add0~3\ : std_logic;
SIGNAL \uC|u1|acumComp:10:acumx|Add0~5\ : std_logic;
SIGNAL \uC|u1|acumComp:10:acumx|Add0~6_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:10:acumx|Add0~4_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:10:acumx|Add0~2_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \uC|u1|acumComp:11:acumx|Add0~0_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:11:acumx|Add0~1_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:10:acumx|Add0~0_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:12:acumx|Add0~1\ : std_logic;
SIGNAL \uC|u1|acumComp:12:acumx|Add0~3\ : std_logic;
SIGNAL \uC|u1|acumComp:12:acumx|Add0~5\ : std_logic;
SIGNAL \uC|u1|acumComp:12:acumx|Add0~7\ : std_logic;
SIGNAL \uC|u1|acumComp:12:acumx|Add0~8_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:12:acumx|Add0~6_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:12:acumx|Add0~4_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:12:acumx|Add0~2_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \uC|u1|acumComp:13:acumx|Add0~0_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:13:acumx|Add0~1_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:12:acumx|Add0~0_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:14:acumx|Add0~1\ : std_logic;
SIGNAL \uC|u1|acumComp:14:acumx|Add0~3\ : std_logic;
SIGNAL \uC|u1|acumComp:14:acumx|Add0~5\ : std_logic;
SIGNAL \uC|u1|acumComp:14:acumx|Add0~7\ : std_logic;
SIGNAL \uC|u1|acumComp:14:acumx|Add0~8_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:14:acumx|Add0~6_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:14:acumx|Add0~4_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:14:acumx|Add0~2_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:14:acumx|Add0~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \uC|u1|acumComp:15:acumx|Add0~1\ : std_logic;
SIGNAL \uC|u1|acumComp:15:acumx|Add0~3\ : std_logic;
SIGNAL \uC|u1|acumComp:15:acumx|Add0~5\ : std_logic;
SIGNAL \uC|u1|acumComp:15:acumx|Add0~7\ : std_logic;
SIGNAL \uC|u1|acumComp:15:acumx|Add0~8_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:15:acumx|Add0~2_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:15:acumx|Add0~0_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:15:acumx|Add0~6_combout\ : std_logic;
SIGNAL \uC|u1|acumComp:15:acumx|Add0~4_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[4]~0_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[1]~1_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[2]~2_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[3]~3_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[4]~4_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[5]~5_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[6]~6_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[7]~7_combout\ : std_logic;
SIGNAL \uC|u2|Equal15~0_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[9]~8_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[10]~9_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[11]~10_combout\ : std_logic;
SIGNAL \uC|u2|Equal15~1_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[13]~11_combout\ : std_logic;
SIGNAL \uC|u2|ordOut[14]~12_combout\ : std_logic;
SIGNAL \uC|u2|Equal15~2_combout\ : std_logic;
SIGNAL \uC|u2|ALT_INV_Equal15~2_combout\ : std_logic;
SIGNAL \uC|u2|ALT_INV_ordOut[14]~12_combout\ : std_logic;
SIGNAL \uC|u2|ALT_INV_ordOut[13]~11_combout\ : std_logic;
SIGNAL \uC|u2|ALT_INV_Equal15~1_combout\ : std_logic;
SIGNAL \uC|u2|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \uC|u2|ALT_INV_ordOut[4]~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ordOut <= ww_ordOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\uC|u2|ALT_INV_Equal15~2_combout\ <= NOT \uC|u2|Equal15~2_combout\;
\uC|u2|ALT_INV_ordOut[14]~12_combout\ <= NOT \uC|u2|ordOut[14]~12_combout\;
\uC|u2|ALT_INV_ordOut[13]~11_combout\ <= NOT \uC|u2|ordOut[13]~11_combout\;
\uC|u2|ALT_INV_Equal15~1_combout\ <= NOT \uC|u2|Equal15~1_combout\;
\uC|u2|ALT_INV_Equal15~0_combout\ <= NOT \uC|u2|Equal15~0_combout\;
\uC|u2|ALT_INV_ordOut[4]~4_combout\ <= NOT \uC|u2|ordOut[4]~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\ordOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u1|acumComp:15:acumx|Add0~8_combout\,
	devoe => ww_devoe,
	o => \ordOut[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\ordOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ordOut[1]~1_combout\,
	devoe => ww_devoe,
	o => \ordOut[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\ordOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ordOut[2]~2_combout\,
	devoe => ww_devoe,
	o => \ordOut[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\ordOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ordOut[3]~3_combout\,
	devoe => ww_devoe,
	o => \ordOut[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\ordOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ALT_INV_ordOut[4]~4_combout\,
	devoe => ww_devoe,
	o => \ordOut[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\ordOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ordOut[5]~5_combout\,
	devoe => ww_devoe,
	o => \ordOut[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\ordOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ordOut[6]~6_combout\,
	devoe => ww_devoe,
	o => \ordOut[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\ordOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ordOut[7]~7_combout\,
	devoe => ww_devoe,
	o => \ordOut[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\ordOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ALT_INV_Equal15~0_combout\,
	devoe => ww_devoe,
	o => \ordOut[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\ordOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ordOut[9]~8_combout\,
	devoe => ww_devoe,
	o => \ordOut[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\ordOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ordOut[10]~9_combout\,
	devoe => ww_devoe,
	o => \ordOut[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\ordOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ordOut[11]~10_combout\,
	devoe => ww_devoe,
	o => \ordOut[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\ordOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ALT_INV_Equal15~1_combout\,
	devoe => ww_devoe,
	o => \ordOut[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\ordOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ALT_INV_ordOut[13]~11_combout\,
	devoe => ww_devoe,
	o => \ordOut[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\ordOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ALT_INV_ordOut[14]~12_combout\,
	devoe => ww_devoe,
	o => \ordOut[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\ordOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uC|u2|ALT_INV_Equal15~2_combout\,
	devoe => ww_devoe,
	o => \ordOut[15]~output_o\);

-- Location: IOIBUF_X115_Y13_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X114_Y13_N16
\uC|u1|acumComp:2:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:2:acumx|Add0~0_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\) # (\A[2]~input_o\))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \uC|u1|acumComp:2:acumx|Add0~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X114_Y13_N18
\uC|u1|acumComp:3:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:3:acumx|Add0~0_combout\ = (\A[3]~input_o\ & (\A[1]~input_o\ $ (\A[0]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \uC|u1|acumComp:3:acumx|Add0~0_combout\);

-- Location: IOIBUF_X115_Y10_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X114_Y13_N30
\uC|u1|acumComp:4:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:4:acumx|Add0~0_combout\ = (\A[4]~input_o\ & ((\A[5]~input_o\) # (\A[6]~input_o\))) # (!\A[4]~input_o\ & (\A[5]~input_o\ & \A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[6]~input_o\,
	combout => \uC|u1|acumComp:4:acumx|Add0~0_combout\);

-- Location: LCCOMB_X114_Y13_N20
\uC|u1|acumComp:3:acumx|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:3:acumx|Add0~1_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & ((!\A[2]~input_o\) # (!\A[3]~input_o\))) # (!\A[0]~input_o\ & ((\A[3]~input_o\) # (\A[2]~input_o\))))) # (!\A[1]~input_o\ & ((\A[0]~input_o\ & ((\A[3]~input_o\) # 
-- (\A[2]~input_o\))) # (!\A[0]~input_o\ & (\A[3]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \uC|u1|acumComp:3:acumx|Add0~1_combout\);

-- Location: LCCOMB_X114_Y13_N10
\uC|u1|acumComp:4:acumx|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:4:acumx|Add0~1_combout\ = \A[4]~input_o\ $ (\A[5]~input_o\ $ (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[6]~input_o\,
	combout => \uC|u1|acumComp:4:acumx|Add0~1_combout\);

-- Location: LCCOMB_X114_Y13_N8
\uC|u1|acumComp:3:acumx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:3:acumx|Add0~2_combout\ = \A[1]~input_o\ $ (\A[0]~input_o\ $ (\A[3]~input_o\ $ (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \uC|u1|acumComp:3:acumx|Add0~2_combout\);

-- Location: LCCOMB_X114_Y13_N22
\uC|u1|acumComp:6:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:6:acumx|Add0~0_combout\ = (\uC|u1|acumComp:4:acumx|Add0~1_combout\ & (\uC|u1|acumComp:3:acumx|Add0~2_combout\ $ (VCC))) # (!\uC|u1|acumComp:4:acumx|Add0~1_combout\ & (\uC|u1|acumComp:3:acumx|Add0~2_combout\ & VCC))
-- \uC|u1|acumComp:6:acumx|Add0~1\ = CARRY((\uC|u1|acumComp:4:acumx|Add0~1_combout\ & \uC|u1|acumComp:3:acumx|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:4:acumx|Add0~1_combout\,
	datab => \uC|u1|acumComp:3:acumx|Add0~2_combout\,
	datad => VCC,
	combout => \uC|u1|acumComp:6:acumx|Add0~0_combout\,
	cout => \uC|u1|acumComp:6:acumx|Add0~1\);

-- Location: LCCOMB_X114_Y13_N24
\uC|u1|acumComp:6:acumx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:6:acumx|Add0~2_combout\ = (\uC|u1|acumComp:4:acumx|Add0~0_combout\ & ((\uC|u1|acumComp:3:acumx|Add0~1_combout\ & (\uC|u1|acumComp:6:acumx|Add0~1\ & VCC)) # (!\uC|u1|acumComp:3:acumx|Add0~1_combout\ & (!\uC|u1|acumComp:6:acumx|Add0~1\)))) # 
-- (!\uC|u1|acumComp:4:acumx|Add0~0_combout\ & ((\uC|u1|acumComp:3:acumx|Add0~1_combout\ & (!\uC|u1|acumComp:6:acumx|Add0~1\)) # (!\uC|u1|acumComp:3:acumx|Add0~1_combout\ & ((\uC|u1|acumComp:6:acumx|Add0~1\) # (GND)))))
-- \uC|u1|acumComp:6:acumx|Add0~3\ = CARRY((\uC|u1|acumComp:4:acumx|Add0~0_combout\ & (!\uC|u1|acumComp:3:acumx|Add0~1_combout\ & !\uC|u1|acumComp:6:acumx|Add0~1\)) # (!\uC|u1|acumComp:4:acumx|Add0~0_combout\ & ((!\uC|u1|acumComp:6:acumx|Add0~1\) # 
-- (!\uC|u1|acumComp:3:acumx|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:4:acumx|Add0~0_combout\,
	datab => \uC|u1|acumComp:3:acumx|Add0~1_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:6:acumx|Add0~1\,
	combout => \uC|u1|acumComp:6:acumx|Add0~2_combout\,
	cout => \uC|u1|acumComp:6:acumx|Add0~3\);

-- Location: LCCOMB_X114_Y13_N26
\uC|u1|acumComp:6:acumx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:6:acumx|Add0~4_combout\ = (\uC|u1|acumComp:6:acumx|Add0~3\ & (\uC|u1|acumComp:2:acumx|Add0~0_combout\ & (\uC|u1|acumComp:3:acumx|Add0~0_combout\ & VCC))) # (!\uC|u1|acumComp:6:acumx|Add0~3\ & ((((\uC|u1|acumComp:2:acumx|Add0~0_combout\ & 
-- \uC|u1|acumComp:3:acumx|Add0~0_combout\)))))
-- \uC|u1|acumComp:6:acumx|Add0~5\ = CARRY((\uC|u1|acumComp:2:acumx|Add0~0_combout\ & (\uC|u1|acumComp:3:acumx|Add0~0_combout\ & !\uC|u1|acumComp:6:acumx|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:2:acumx|Add0~0_combout\,
	datab => \uC|u1|acumComp:3:acumx|Add0~0_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:6:acumx|Add0~3\,
	combout => \uC|u1|acumComp:6:acumx|Add0~4_combout\,
	cout => \uC|u1|acumComp:6:acumx|Add0~5\);

-- Location: LCCOMB_X114_Y13_N28
\uC|u1|acumComp:6:acumx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:6:acumx|Add0~6_combout\ = \uC|u1|acumComp:6:acumx|Add0~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uC|u1|acumComp:6:acumx|Add0~5\,
	combout => \uC|u1|acumComp:6:acumx|Add0~6_combout\);

-- Location: IOIBUF_X115_Y7_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X110_Y12_N0
\uC|u1|acumComp:8:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:8:acumx|Add0~0_combout\ = (\A[10]~input_o\ & (\A[8]~input_o\ & (\A[7]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[9]~input_o\,
	combout => \uC|u1|acumComp:8:acumx|Add0~0_combout\);

-- Location: LCCOMB_X110_Y12_N2
\uC|u1|acumComp:8:acumx|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:8:acumx|Add0~1_combout\ = (\A[10]~input_o\ & ((\A[8]~input_o\ & ((!\A[9]~input_o\) # (!\A[7]~input_o\))) # (!\A[8]~input_o\ & ((\A[7]~input_o\) # (\A[9]~input_o\))))) # (!\A[10]~input_o\ & ((\A[8]~input_o\ & ((\A[7]~input_o\) # 
-- (\A[9]~input_o\))) # (!\A[8]~input_o\ & (\A[7]~input_o\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[9]~input_o\,
	combout => \uC|u1|acumComp:8:acumx|Add0~1_combout\);

-- Location: LCCOMB_X110_Y12_N4
\uC|u1|acumComp:8:acumx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:8:acumx|Add0~2_combout\ = \A[10]~input_o\ $ (\A[8]~input_o\ $ (\A[7]~input_o\ $ (\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[9]~input_o\,
	combout => \uC|u1|acumComp:8:acumx|Add0~2_combout\);

-- Location: LCCOMB_X110_Y13_N4
\uC|u1|acumComp:10:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:10:acumx|Add0~0_combout\ = (\uC|u1|acumComp:6:acumx|Add0~0_combout\ & (\uC|u1|acumComp:8:acumx|Add0~2_combout\ $ (VCC))) # (!\uC|u1|acumComp:6:acumx|Add0~0_combout\ & (\uC|u1|acumComp:8:acumx|Add0~2_combout\ & VCC))
-- \uC|u1|acumComp:10:acumx|Add0~1\ = CARRY((\uC|u1|acumComp:6:acumx|Add0~0_combout\ & \uC|u1|acumComp:8:acumx|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:6:acumx|Add0~0_combout\,
	datab => \uC|u1|acumComp:8:acumx|Add0~2_combout\,
	datad => VCC,
	combout => \uC|u1|acumComp:10:acumx|Add0~0_combout\,
	cout => \uC|u1|acumComp:10:acumx|Add0~1\);

-- Location: LCCOMB_X110_Y13_N6
\uC|u1|acumComp:10:acumx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:10:acumx|Add0~2_combout\ = (\uC|u1|acumComp:6:acumx|Add0~2_combout\ & ((\uC|u1|acumComp:8:acumx|Add0~1_combout\ & (\uC|u1|acumComp:10:acumx|Add0~1\ & VCC)) # (!\uC|u1|acumComp:8:acumx|Add0~1_combout\ & 
-- (!\uC|u1|acumComp:10:acumx|Add0~1\)))) # (!\uC|u1|acumComp:6:acumx|Add0~2_combout\ & ((\uC|u1|acumComp:8:acumx|Add0~1_combout\ & (!\uC|u1|acumComp:10:acumx|Add0~1\)) # (!\uC|u1|acumComp:8:acumx|Add0~1_combout\ & ((\uC|u1|acumComp:10:acumx|Add0~1\) # 
-- (GND)))))
-- \uC|u1|acumComp:10:acumx|Add0~3\ = CARRY((\uC|u1|acumComp:6:acumx|Add0~2_combout\ & (!\uC|u1|acumComp:8:acumx|Add0~1_combout\ & !\uC|u1|acumComp:10:acumx|Add0~1\)) # (!\uC|u1|acumComp:6:acumx|Add0~2_combout\ & ((!\uC|u1|acumComp:10:acumx|Add0~1\) # 
-- (!\uC|u1|acumComp:8:acumx|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:6:acumx|Add0~2_combout\,
	datab => \uC|u1|acumComp:8:acumx|Add0~1_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:10:acumx|Add0~1\,
	combout => \uC|u1|acumComp:10:acumx|Add0~2_combout\,
	cout => \uC|u1|acumComp:10:acumx|Add0~3\);

-- Location: LCCOMB_X110_Y13_N8
\uC|u1|acumComp:10:acumx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:10:acumx|Add0~4_combout\ = ((\uC|u1|acumComp:6:acumx|Add0~4_combout\ $ (\uC|u1|acumComp:8:acumx|Add0~0_combout\ $ (!\uC|u1|acumComp:10:acumx|Add0~3\)))) # (GND)
-- \uC|u1|acumComp:10:acumx|Add0~5\ = CARRY((\uC|u1|acumComp:6:acumx|Add0~4_combout\ & ((\uC|u1|acumComp:8:acumx|Add0~0_combout\) # (!\uC|u1|acumComp:10:acumx|Add0~3\))) # (!\uC|u1|acumComp:6:acumx|Add0~4_combout\ & (\uC|u1|acumComp:8:acumx|Add0~0_combout\ & 
-- !\uC|u1|acumComp:10:acumx|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:6:acumx|Add0~4_combout\,
	datab => \uC|u1|acumComp:8:acumx|Add0~0_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:10:acumx|Add0~3\,
	combout => \uC|u1|acumComp:10:acumx|Add0~4_combout\,
	cout => \uC|u1|acumComp:10:acumx|Add0~5\);

-- Location: LCCOMB_X110_Y13_N10
\uC|u1|acumComp:10:acumx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:10:acumx|Add0~6_combout\ = \uC|u1|acumComp:6:acumx|Add0~6_combout\ $ (\uC|u1|acumComp:10:acumx|Add0~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:6:acumx|Add0~6_combout\,
	cin => \uC|u1|acumComp:10:acumx|Add0~5\,
	combout => \uC|u1|acumComp:10:acumx|Add0~6_combout\);

-- Location: IOIBUF_X115_Y9_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X111_Y13_N0
\uC|u1|acumComp:11:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:11:acumx|Add0~0_combout\ = (\A[11]~input_o\ & \A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \A[12]~input_o\,
	combout => \uC|u1|acumComp:11:acumx|Add0~0_combout\);

-- Location: LCCOMB_X111_Y13_N2
\uC|u1|acumComp:11:acumx|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:11:acumx|Add0~1_combout\ = \A[11]~input_o\ $ (\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \A[12]~input_o\,
	combout => \uC|u1|acumComp:11:acumx|Add0~1_combout\);

-- Location: LCCOMB_X110_Y13_N22
\uC|u1|acumComp:12:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:12:acumx|Add0~0_combout\ = (\uC|u1|acumComp:11:acumx|Add0~1_combout\ & (\uC|u1|acumComp:10:acumx|Add0~0_combout\ $ (VCC))) # (!\uC|u1|acumComp:11:acumx|Add0~1_combout\ & (\uC|u1|acumComp:10:acumx|Add0~0_combout\ & VCC))
-- \uC|u1|acumComp:12:acumx|Add0~1\ = CARRY((\uC|u1|acumComp:11:acumx|Add0~1_combout\ & \uC|u1|acumComp:10:acumx|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:11:acumx|Add0~1_combout\,
	datab => \uC|u1|acumComp:10:acumx|Add0~0_combout\,
	datad => VCC,
	combout => \uC|u1|acumComp:12:acumx|Add0~0_combout\,
	cout => \uC|u1|acumComp:12:acumx|Add0~1\);

-- Location: LCCOMB_X110_Y13_N24
\uC|u1|acumComp:12:acumx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:12:acumx|Add0~2_combout\ = (\uC|u1|acumComp:10:acumx|Add0~2_combout\ & ((\uC|u1|acumComp:11:acumx|Add0~0_combout\ & (\uC|u1|acumComp:12:acumx|Add0~1\ & VCC)) # (!\uC|u1|acumComp:11:acumx|Add0~0_combout\ & 
-- (!\uC|u1|acumComp:12:acumx|Add0~1\)))) # (!\uC|u1|acumComp:10:acumx|Add0~2_combout\ & ((\uC|u1|acumComp:11:acumx|Add0~0_combout\ & (!\uC|u1|acumComp:12:acumx|Add0~1\)) # (!\uC|u1|acumComp:11:acumx|Add0~0_combout\ & ((\uC|u1|acumComp:12:acumx|Add0~1\) # 
-- (GND)))))
-- \uC|u1|acumComp:12:acumx|Add0~3\ = CARRY((\uC|u1|acumComp:10:acumx|Add0~2_combout\ & (!\uC|u1|acumComp:11:acumx|Add0~0_combout\ & !\uC|u1|acumComp:12:acumx|Add0~1\)) # (!\uC|u1|acumComp:10:acumx|Add0~2_combout\ & ((!\uC|u1|acumComp:12:acumx|Add0~1\) # 
-- (!\uC|u1|acumComp:11:acumx|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:10:acumx|Add0~2_combout\,
	datab => \uC|u1|acumComp:11:acumx|Add0~0_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:12:acumx|Add0~1\,
	combout => \uC|u1|acumComp:12:acumx|Add0~2_combout\,
	cout => \uC|u1|acumComp:12:acumx|Add0~3\);

-- Location: LCCOMB_X110_Y13_N26
\uC|u1|acumComp:12:acumx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:12:acumx|Add0~4_combout\ = (\uC|u1|acumComp:10:acumx|Add0~4_combout\ & (\uC|u1|acumComp:12:acumx|Add0~3\ $ (GND))) # (!\uC|u1|acumComp:10:acumx|Add0~4_combout\ & (!\uC|u1|acumComp:12:acumx|Add0~3\ & VCC))
-- \uC|u1|acumComp:12:acumx|Add0~5\ = CARRY((\uC|u1|acumComp:10:acumx|Add0~4_combout\ & !\uC|u1|acumComp:12:acumx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uC|u1|acumComp:10:acumx|Add0~4_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:12:acumx|Add0~3\,
	combout => \uC|u1|acumComp:12:acumx|Add0~4_combout\,
	cout => \uC|u1|acumComp:12:acumx|Add0~5\);

-- Location: LCCOMB_X110_Y13_N28
\uC|u1|acumComp:12:acumx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:12:acumx|Add0~6_combout\ = (\uC|u1|acumComp:10:acumx|Add0~6_combout\ & (!\uC|u1|acumComp:12:acumx|Add0~5\)) # (!\uC|u1|acumComp:10:acumx|Add0~6_combout\ & ((\uC|u1|acumComp:12:acumx|Add0~5\) # (GND)))
-- \uC|u1|acumComp:12:acumx|Add0~7\ = CARRY((!\uC|u1|acumComp:12:acumx|Add0~5\) # (!\uC|u1|acumComp:10:acumx|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:10:acumx|Add0~6_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:12:acumx|Add0~5\,
	combout => \uC|u1|acumComp:12:acumx|Add0~6_combout\,
	cout => \uC|u1|acumComp:12:acumx|Add0~7\);

-- Location: LCCOMB_X110_Y13_N30
\uC|u1|acumComp:12:acumx|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:12:acumx|Add0~8_combout\ = !\uC|u1|acumComp:12:acumx|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uC|u1|acumComp:12:acumx|Add0~7\,
	combout => \uC|u1|acumComp:12:acumx|Add0~8_combout\);

-- Location: IOIBUF_X115_Y6_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X110_Y15_N8
\uC|u1|acumComp:13:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:13:acumx|Add0~0_combout\ = (\A[13]~input_o\ & \A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \uC|u1|acumComp:13:acumx|Add0~0_combout\);

-- Location: LCCOMB_X110_Y15_N10
\uC|u1|acumComp:13:acumx|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:13:acumx|Add0~1_combout\ = \A[13]~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \uC|u1|acumComp:13:acumx|Add0~1_combout\);

-- Location: LCCOMB_X110_Y15_N16
\uC|u1|acumComp:14:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:14:acumx|Add0~0_combout\ = (\uC|u1|acumComp:13:acumx|Add0~1_combout\ & (\uC|u1|acumComp:12:acumx|Add0~0_combout\ $ (VCC))) # (!\uC|u1|acumComp:13:acumx|Add0~1_combout\ & (\uC|u1|acumComp:12:acumx|Add0~0_combout\ & VCC))
-- \uC|u1|acumComp:14:acumx|Add0~1\ = CARRY((\uC|u1|acumComp:13:acumx|Add0~1_combout\ & \uC|u1|acumComp:12:acumx|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:13:acumx|Add0~1_combout\,
	datab => \uC|u1|acumComp:12:acumx|Add0~0_combout\,
	datad => VCC,
	combout => \uC|u1|acumComp:14:acumx|Add0~0_combout\,
	cout => \uC|u1|acumComp:14:acumx|Add0~1\);

-- Location: LCCOMB_X110_Y15_N18
\uC|u1|acumComp:14:acumx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:14:acumx|Add0~2_combout\ = (\uC|u1|acumComp:12:acumx|Add0~2_combout\ & ((\uC|u1|acumComp:13:acumx|Add0~0_combout\ & (\uC|u1|acumComp:14:acumx|Add0~1\ & VCC)) # (!\uC|u1|acumComp:13:acumx|Add0~0_combout\ & 
-- (!\uC|u1|acumComp:14:acumx|Add0~1\)))) # (!\uC|u1|acumComp:12:acumx|Add0~2_combout\ & ((\uC|u1|acumComp:13:acumx|Add0~0_combout\ & (!\uC|u1|acumComp:14:acumx|Add0~1\)) # (!\uC|u1|acumComp:13:acumx|Add0~0_combout\ & ((\uC|u1|acumComp:14:acumx|Add0~1\) # 
-- (GND)))))
-- \uC|u1|acumComp:14:acumx|Add0~3\ = CARRY((\uC|u1|acumComp:12:acumx|Add0~2_combout\ & (!\uC|u1|acumComp:13:acumx|Add0~0_combout\ & !\uC|u1|acumComp:14:acumx|Add0~1\)) # (!\uC|u1|acumComp:12:acumx|Add0~2_combout\ & ((!\uC|u1|acumComp:14:acumx|Add0~1\) # 
-- (!\uC|u1|acumComp:13:acumx|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:12:acumx|Add0~2_combout\,
	datab => \uC|u1|acumComp:13:acumx|Add0~0_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:14:acumx|Add0~1\,
	combout => \uC|u1|acumComp:14:acumx|Add0~2_combout\,
	cout => \uC|u1|acumComp:14:acumx|Add0~3\);

-- Location: LCCOMB_X110_Y15_N20
\uC|u1|acumComp:14:acumx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:14:acumx|Add0~4_combout\ = (\uC|u1|acumComp:12:acumx|Add0~4_combout\ & (\uC|u1|acumComp:14:acumx|Add0~3\ $ (GND))) # (!\uC|u1|acumComp:12:acumx|Add0~4_combout\ & (!\uC|u1|acumComp:14:acumx|Add0~3\ & VCC))
-- \uC|u1|acumComp:14:acumx|Add0~5\ = CARRY((\uC|u1|acumComp:12:acumx|Add0~4_combout\ & !\uC|u1|acumComp:14:acumx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:12:acumx|Add0~4_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:14:acumx|Add0~3\,
	combout => \uC|u1|acumComp:14:acumx|Add0~4_combout\,
	cout => \uC|u1|acumComp:14:acumx|Add0~5\);

-- Location: LCCOMB_X110_Y15_N22
\uC|u1|acumComp:14:acumx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:14:acumx|Add0~6_combout\ = (\uC|u1|acumComp:12:acumx|Add0~6_combout\ & (!\uC|u1|acumComp:14:acumx|Add0~5\)) # (!\uC|u1|acumComp:12:acumx|Add0~6_combout\ & ((\uC|u1|acumComp:14:acumx|Add0~5\) # (GND)))
-- \uC|u1|acumComp:14:acumx|Add0~7\ = CARRY((!\uC|u1|acumComp:14:acumx|Add0~5\) # (!\uC|u1|acumComp:12:acumx|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uC|u1|acumComp:12:acumx|Add0~6_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:14:acumx|Add0~5\,
	combout => \uC|u1|acumComp:14:acumx|Add0~6_combout\,
	cout => \uC|u1|acumComp:14:acumx|Add0~7\);

-- Location: LCCOMB_X110_Y15_N24
\uC|u1|acumComp:14:acumx|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:14:acumx|Add0~8_combout\ = \uC|u1|acumComp:12:acumx|Add0~8_combout\ $ (!\uC|u1|acumComp:14:acumx|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uC|u1|acumComp:12:acumx|Add0~8_combout\,
	cin => \uC|u1|acumComp:14:acumx|Add0~7\,
	combout => \uC|u1|acumComp:14:acumx|Add0~8_combout\);

-- Location: IOIBUF_X115_Y14_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X109_Y49_N10
\uC|u1|acumComp:15:acumx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:15:acumx|Add0~0_combout\ = (\uC|u1|acumComp:14:acumx|Add0~0_combout\ & (\A[15]~input_o\ $ (VCC))) # (!\uC|u1|acumComp:14:acumx|Add0~0_combout\ & (\A[15]~input_o\ & VCC))
-- \uC|u1|acumComp:15:acumx|Add0~1\ = CARRY((\uC|u1|acumComp:14:acumx|Add0~0_combout\ & \A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:14:acumx|Add0~0_combout\,
	datab => \A[15]~input_o\,
	datad => VCC,
	combout => \uC|u1|acumComp:15:acumx|Add0~0_combout\,
	cout => \uC|u1|acumComp:15:acumx|Add0~1\);

-- Location: LCCOMB_X109_Y49_N12
\uC|u1|acumComp:15:acumx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:15:acumx|Add0~2_combout\ = (\uC|u1|acumComp:14:acumx|Add0~2_combout\ & (!\uC|u1|acumComp:15:acumx|Add0~1\)) # (!\uC|u1|acumComp:14:acumx|Add0~2_combout\ & ((\uC|u1|acumComp:15:acumx|Add0~1\) # (GND)))
-- \uC|u1|acumComp:15:acumx|Add0~3\ = CARRY((!\uC|u1|acumComp:15:acumx|Add0~1\) # (!\uC|u1|acumComp:14:acumx|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uC|u1|acumComp:14:acumx|Add0~2_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:15:acumx|Add0~1\,
	combout => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	cout => \uC|u1|acumComp:15:acumx|Add0~3\);

-- Location: LCCOMB_X109_Y49_N14
\uC|u1|acumComp:15:acumx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:15:acumx|Add0~4_combout\ = (\uC|u1|acumComp:14:acumx|Add0~4_combout\ & (\uC|u1|acumComp:15:acumx|Add0~3\ $ (GND))) # (!\uC|u1|acumComp:14:acumx|Add0~4_combout\ & (!\uC|u1|acumComp:15:acumx|Add0~3\ & VCC))
-- \uC|u1|acumComp:15:acumx|Add0~5\ = CARRY((\uC|u1|acumComp:14:acumx|Add0~4_combout\ & !\uC|u1|acumComp:15:acumx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:14:acumx|Add0~4_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:15:acumx|Add0~3\,
	combout => \uC|u1|acumComp:15:acumx|Add0~4_combout\,
	cout => \uC|u1|acumComp:15:acumx|Add0~5\);

-- Location: LCCOMB_X109_Y49_N16
\uC|u1|acumComp:15:acumx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:15:acumx|Add0~6_combout\ = (\uC|u1|acumComp:14:acumx|Add0~6_combout\ & (!\uC|u1|acumComp:15:acumx|Add0~5\)) # (!\uC|u1|acumComp:14:acumx|Add0~6_combout\ & ((\uC|u1|acumComp:15:acumx|Add0~5\) # (GND)))
-- \uC|u1|acumComp:15:acumx|Add0~7\ = CARRY((!\uC|u1|acumComp:15:acumx|Add0~5\) # (!\uC|u1|acumComp:14:acumx|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uC|u1|acumComp:14:acumx|Add0~6_combout\,
	datad => VCC,
	cin => \uC|u1|acumComp:15:acumx|Add0~5\,
	combout => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	cout => \uC|u1|acumComp:15:acumx|Add0~7\);

-- Location: LCCOMB_X109_Y49_N18
\uC|u1|acumComp:15:acumx|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u1|acumComp:15:acumx|Add0~8_combout\ = \uC|u1|acumComp:15:acumx|Add0~7\ $ (!\uC|u1|acumComp:14:acumx|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uC|u1|acumComp:14:acumx|Add0~8_combout\,
	cin => \uC|u1|acumComp:15:acumx|Add0~7\,
	combout => \uC|u1|acumComp:15:acumx|Add0~8_combout\);

-- Location: LCCOMB_X73_Y72_N0
\uC|u2|ordOut[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[4]~0_combout\ = (\uC|u1|acumComp:15:acumx|Add0~6_combout\ & \uC|u1|acumComp:15:acumx|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~4_combout\,
	combout => \uC|u2|ordOut[4]~0_combout\);

-- Location: LCCOMB_X73_Y72_N2
\uC|u2|ordOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[1]~1_combout\ = (\uC|u1|acumComp:15:acumx|Add0~8_combout\) # ((\uC|u1|acumComp:15:acumx|Add0~2_combout\ & (\uC|u1|acumComp:15:acumx|Add0~0_combout\ & \uC|u2|ordOut[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:15:acumx|Add0~8_combout\,
	datab => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~0_combout\,
	datad => \uC|u2|ordOut[4]~0_combout\,
	combout => \uC|u2|ordOut[1]~1_combout\);

-- Location: LCCOMB_X73_Y72_N12
\uC|u2|ordOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[2]~2_combout\ = (\uC|u1|acumComp:15:acumx|Add0~8_combout\) # ((\uC|u1|acumComp:15:acumx|Add0~4_combout\ & (\uC|u1|acumComp:15:acumx|Add0~6_combout\ & \uC|u1|acumComp:15:acumx|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:15:acumx|Add0~8_combout\,
	datab => \uC|u1|acumComp:15:acumx|Add0~4_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	combout => \uC|u2|ordOut[2]~2_combout\);

-- Location: LCCOMB_X73_Y72_N22
\uC|u2|ordOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[3]~3_combout\ = (\uC|u1|acumComp:15:acumx|Add0~8_combout\) # ((\uC|u2|ordOut[4]~0_combout\ & ((\uC|u1|acumComp:15:acumx|Add0~2_combout\) # (\uC|u1|acumComp:15:acumx|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:15:acumx|Add0~8_combout\,
	datab => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~0_combout\,
	datad => \uC|u2|ordOut[4]~0_combout\,
	combout => \uC|u2|ordOut[3]~3_combout\);

-- Location: LCCOMB_X73_Y72_N8
\uC|u2|ordOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[4]~4_combout\ = (!\uC|u1|acumComp:15:acumx|Add0~8_combout\ & ((!\uC|u1|acumComp:15:acumx|Add0~6_combout\) # (!\uC|u1|acumComp:15:acumx|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uC|u1|acumComp:15:acumx|Add0~4_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~8_combout\,
	combout => \uC|u2|ordOut[4]~4_combout\);

-- Location: LCCOMB_X73_Y72_N10
\uC|u2|ordOut[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[5]~5_combout\ = ((\uC|u1|acumComp:15:acumx|Add0~0_combout\ & (\uC|u1|acumComp:15:acumx|Add0~6_combout\ & \uC|u1|acumComp:15:acumx|Add0~2_combout\))) # (!\uC|u2|ordOut[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:15:acumx|Add0~0_combout\,
	datab => \uC|u2|ordOut[4]~4_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	combout => \uC|u2|ordOut[5]~5_combout\);

-- Location: LCCOMB_X73_Y72_N4
\uC|u2|ordOut[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[6]~6_combout\ = (\uC|u1|acumComp:15:acumx|Add0~8_combout\) # ((\uC|u1|acumComp:15:acumx|Add0~6_combout\ & ((\uC|u1|acumComp:15:acumx|Add0~4_combout\) # (\uC|u1|acumComp:15:acumx|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:15:acumx|Add0~8_combout\,
	datab => \uC|u1|acumComp:15:acumx|Add0~4_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	combout => \uC|u2|ordOut[6]~6_combout\);

-- Location: LCCOMB_X73_Y72_N6
\uC|u2|ordOut[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[7]~7_combout\ = ((\uC|u1|acumComp:15:acumx|Add0~6_combout\ & ((\uC|u1|acumComp:15:acumx|Add0~0_combout\) # (\uC|u1|acumComp:15:acumx|Add0~2_combout\)))) # (!\uC|u2|ordOut[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:15:acumx|Add0~0_combout\,
	datab => \uC|u2|ordOut[4]~4_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	combout => \uC|u2|ordOut[7]~7_combout\);

-- Location: LCCOMB_X72_Y72_N0
\uC|u2|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|Equal15~0_combout\ = (!\uC|u1|acumComp:15:acumx|Add0~8_combout\ & !\uC|u1|acumComp:15:acumx|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:15:acumx|Add0~8_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	combout => \uC|u2|Equal15~0_combout\);

-- Location: LCCOMB_X72_Y72_N26
\uC|u2|ordOut[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[9]~8_combout\ = ((\uC|u1|acumComp:15:acumx|Add0~2_combout\ & (\uC|u1|acumComp:15:acumx|Add0~4_combout\ & \uC|u1|acumComp:15:acumx|Add0~0_combout\))) # (!\uC|u2|Equal15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u2|Equal15~0_combout\,
	datab => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~4_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~0_combout\,
	combout => \uC|u2|ordOut[9]~8_combout\);

-- Location: LCCOMB_X72_Y72_N12
\uC|u2|ordOut[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[10]~9_combout\ = (\uC|u1|acumComp:15:acumx|Add0~8_combout\) # ((\uC|u1|acumComp:15:acumx|Add0~6_combout\) # ((\uC|u1|acumComp:15:acumx|Add0~2_combout\ & \uC|u1|acumComp:15:acumx|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:15:acumx|Add0~8_combout\,
	datab => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~4_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	combout => \uC|u2|ordOut[10]~9_combout\);

-- Location: LCCOMB_X72_Y72_N14
\uC|u2|ordOut[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[11]~10_combout\ = ((\uC|u1|acumComp:15:acumx|Add0~4_combout\ & ((\uC|u1|acumComp:15:acumx|Add0~2_combout\) # (\uC|u1|acumComp:15:acumx|Add0~0_combout\)))) # (!\uC|u2|Equal15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u2|Equal15~0_combout\,
	datab => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~4_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~0_combout\,
	combout => \uC|u2|ordOut[11]~10_combout\);

-- Location: LCCOMB_X72_Y72_N24
\uC|u2|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|Equal15~1_combout\ = (!\uC|u1|acumComp:15:acumx|Add0~8_combout\ & (!\uC|u1|acumComp:15:acumx|Add0~4_combout\ & !\uC|u1|acumComp:15:acumx|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:15:acumx|Add0~8_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~4_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	combout => \uC|u2|Equal15~1_combout\);

-- Location: LCCOMB_X72_Y72_N10
\uC|u2|ordOut[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[13]~11_combout\ = (\uC|u2|Equal15~1_combout\ & ((!\uC|u1|acumComp:15:acumx|Add0~0_combout\) # (!\uC|u1|acumComp:15:acumx|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uC|u2|Equal15~1_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~0_combout\,
	combout => \uC|u2|ordOut[13]~11_combout\);

-- Location: LCCOMB_X72_Y72_N4
\uC|u2|ordOut[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|ordOut[14]~12_combout\ = (!\uC|u1|acumComp:15:acumx|Add0~8_combout\ & (!\uC|u1|acumComp:15:acumx|Add0~2_combout\ & (!\uC|u1|acumComp:15:acumx|Add0~4_combout\ & !\uC|u1|acumComp:15:acumx|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uC|u1|acumComp:15:acumx|Add0~8_combout\,
	datab => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~4_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~6_combout\,
	combout => \uC|u2|ordOut[14]~12_combout\);

-- Location: LCCOMB_X72_Y72_N22
\uC|u2|Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uC|u2|Equal15~2_combout\ = (\uC|u2|Equal15~1_combout\ & (!\uC|u1|acumComp:15:acumx|Add0~2_combout\ & !\uC|u1|acumComp:15:acumx|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uC|u2|Equal15~1_combout\,
	datac => \uC|u1|acumComp:15:acumx|Add0~2_combout\,
	datad => \uC|u1|acumComp:15:acumx|Add0~0_combout\,
	combout => \uC|u2|Equal15~2_combout\);

ww_ordOut(0) <= \ordOut[0]~output_o\;

ww_ordOut(1) <= \ordOut[1]~output_o\;

ww_ordOut(2) <= \ordOut[2]~output_o\;

ww_ordOut(3) <= \ordOut[3]~output_o\;

ww_ordOut(4) <= \ordOut[4]~output_o\;

ww_ordOut(5) <= \ordOut[5]~output_o\;

ww_ordOut(6) <= \ordOut[6]~output_o\;

ww_ordOut(7) <= \ordOut[7]~output_o\;

ww_ordOut(8) <= \ordOut[8]~output_o\;

ww_ordOut(9) <= \ordOut[9]~output_o\;

ww_ordOut(10) <= \ordOut[10]~output_o\;

ww_ordOut(11) <= \ordOut[11]~output_o\;

ww_ordOut(12) <= \ordOut[12]~output_o\;

ww_ordOut(13) <= \ordOut[13]~output_o\;

ww_ordOut(14) <= \ordOut[14]~output_o\;

ww_ordOut(15) <= \ordOut[15]~output_o\;
END structure;


