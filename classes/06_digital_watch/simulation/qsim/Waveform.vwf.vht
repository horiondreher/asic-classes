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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/04/2019 16:02:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Sistema
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Sistema_vhd_vec_tst IS
END Sistema_vhd_vec_tst;
ARCHITECTURE Sistema_arch OF Sistema_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50Mhz : STD_LOGIC;
SIGNAL countUp : STD_LOGIC;
SIGNAL countUp3 : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL S_SEG : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S_SEG18 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S_SEG20 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S_SEG21 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S_SEG22 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S_SEG23 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S_SEG24 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S_SEG25 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Sistema
	PORT (
	clk_50Mhz : IN STD_LOGIC;
	countUp : IN STD_LOGIC;
	countUp3 : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	S_SEG : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	S_SEG18 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	S_SEG20 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	S_SEG21 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	S_SEG22 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	S_SEG23 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	S_SEG24 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	S_SEG25 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Sistema
	PORT MAP (
-- list connections between master ports and signals
	clk_50Mhz => clk_50Mhz,
	countUp => countUp,
	countUp3 => countUp3,
	rst => rst,
	S_SEG => S_SEG,
	S_SEG18 => S_SEG18,
	S_SEG20 => S_SEG20,
	S_SEG21 => S_SEG21,
	S_SEG22 => S_SEG22,
	S_SEG23 => S_SEG23,
	S_SEG24 => S_SEG24,
	S_SEG25 => S_SEG25
	);

-- clk_50Mhz
t_prcs_clk_50Mhz: PROCESS
BEGIN
LOOP
	clk_50Mhz <= '0';
	WAIT FOR 10000 ps;
	clk_50Mhz <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_50Mhz;

-- countUp
t_prcs_countUp: PROCESS
BEGIN
	countUp <= '0';
WAIT;
END PROCESS t_prcs_countUp;

-- countUp3
t_prcs_countUp3: PROCESS
BEGIN
	countUp3 <= '0';
WAIT;
END PROCESS t_prcs_countUp3;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END Sistema_arch;
