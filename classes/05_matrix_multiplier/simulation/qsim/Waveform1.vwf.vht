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
-- Generated on "06/05/2019 23:24:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          binaryToBCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY binaryToBCD_vhd_vec_tst IS
END binaryToBCD_vhd_vec_tst;
ARCHITECTURE binaryToBCD_arch OF binaryToBCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL resultIn : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL resultOut : STD_LOGIC_VECTOR(13 DOWNTO 0);
COMPONENT binaryToBCD
	PORT (
	resultIn : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	resultOut : BUFFER STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : binaryToBCD
	PORT MAP (
-- list connections between master ports and signals
	resultIn => resultIn,
	resultOut => resultOut
	);
-- resultIn[9]
t_prcs_resultIn_9: PROCESS
BEGIN
	resultIn(9) <= '1';
WAIT;
END PROCESS t_prcs_resultIn_9;
-- resultIn[8]
t_prcs_resultIn_8: PROCESS
BEGIN
	resultIn(8) <= '1';
WAIT;
END PROCESS t_prcs_resultIn_8;
-- resultIn[7]
t_prcs_resultIn_7: PROCESS
BEGIN
	resultIn(7) <= '1';
WAIT;
END PROCESS t_prcs_resultIn_7;
-- resultIn[6]
t_prcs_resultIn_6: PROCESS
BEGIN
	resultIn(6) <= '1';
WAIT;
END PROCESS t_prcs_resultIn_6;
-- resultIn[5]
t_prcs_resultIn_5: PROCESS
BEGIN
	resultIn(5) <= '1';
WAIT;
END PROCESS t_prcs_resultIn_5;
-- resultIn[4]
t_prcs_resultIn_4: PROCESS
BEGIN
	resultIn(4) <= '1';
WAIT;
END PROCESS t_prcs_resultIn_4;
-- resultIn[3]
t_prcs_resultIn_3: PROCESS
BEGIN
	resultIn(3) <= '1';
WAIT;
END PROCESS t_prcs_resultIn_3;
-- resultIn[2]
t_prcs_resultIn_2: PROCESS
BEGIN
	resultIn(2) <= '1';
WAIT;
END PROCESS t_prcs_resultIn_2;
-- resultIn[1]
t_prcs_resultIn_1: PROCESS
BEGIN
	resultIn(1) <= '1';
WAIT;
END PROCESS t_prcs_resultIn_1;
-- resultIn[0]
t_prcs_resultIn_0: PROCESS
BEGIN
	resultIn(0) <= '1';
WAIT;
END PROCESS t_prcs_resultIn_0;
END binaryToBCD_arch;
