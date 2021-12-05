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
-- Generated on "06/11/2019 08:48:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Matrix_Multiplier
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Matrix_Multiplier_vhd_vec_tst IS
END Matrix_Multiplier_vhd_vec_tst;
ARCHITECTURE Matrix_Multiplier_arch OF Matrix_Multiplier_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c11 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL c12 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL c13 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL c21 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL c22 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL c23 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL c31 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL c32 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL c33 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL COLUNA : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dataIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataSel : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DIGITO1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DIGITO2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DIGITO3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LINHA : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL matrixSel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MATRIZ : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL saveReset : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Matrix_Multiplier
	PORT (
	c11 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	c12 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	c13 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	c21 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	c22 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	c23 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	c31 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	c32 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	c33 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	COLUNA : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	dataIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataSel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	DIGITO1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DIGITO2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DIGITO3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	LINHA : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	matrixSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	MATRIZ : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	saveReset : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Matrix_Multiplier
	PORT MAP (
-- list connections between master ports and signals
	c11 => c11,
	c12 => c12,
	c13 => c13,
	c21 => c21,
	c22 => c22,
	c23 => c23,
	c31 => c31,
	c32 => c32,
	c33 => c33,
	COLUNA => COLUNA,
	dataIn => dataIn,
	dataSel => dataSel,
	DIGITO1 => DIGITO1,
	DIGITO2 => DIGITO2,
	DIGITO3 => DIGITO3,
	LINHA => LINHA,
	matrixSel => matrixSel,
	MATRIZ => MATRIZ,
	saveReset => saveReset
	);

-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	dataIn(3) <= '0';
	WAIT FOR 350000 ps;
	dataIn(3) <= '1';
	WAIT FOR 400000 ps;
	dataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_3;

-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
	dataIn(2) <= '0';
	WAIT FOR 150000 ps;
	dataIn(2) <= '1';
	WAIT FOR 200000 ps;
	dataIn(2) <= '0';
	WAIT FOR 200000 ps;
	dataIn(2) <= '1';
	WAIT FOR 200000 ps;
	dataIn(2) <= '0';
	WAIT FOR 200000 ps;
	dataIn(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_2;

-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
	dataIn(1) <= '0';
	WAIT FOR 50000 ps;
	dataIn(1) <= '1';
	WAIT FOR 100000 ps;
	dataIn(1) <= '0';
	WAIT FOR 100000 ps;
	dataIn(1) <= '1';
	WAIT FOR 100000 ps;
	dataIn(1) <= '0';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 2
	LOOP
		dataIn(1) <= '1';
		WAIT FOR 100000 ps;
		dataIn(1) <= '0';
		WAIT FOR 100000 ps;
	END LOOP;
	dataIn(1) <= '1';
	WAIT FOR 100000 ps;
	dataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_1;

-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		dataIn(0) <= '1';
		WAIT FOR 50000 ps;
		dataIn(0) <= '0';
		WAIT FOR 50000 ps;
	END LOOP;
	dataIn(0) <= '1';
	WAIT FOR 50000 ps;
	dataIn(0) <= '0';
	WAIT FOR 60000 ps;
	dataIn(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn(0) <= '0';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 6
	LOOP
		dataIn(0) <= '1';
		WAIT FOR 50000 ps;
		dataIn(0) <= '0';
		WAIT FOR 50000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_dataIn_0;
-- dataSel[3]
t_prcs_dataSel_3: PROCESS
BEGIN
	dataSel(3) <= '0';
WAIT;
END PROCESS t_prcs_dataSel_3;
-- dataSel[2]
t_prcs_dataSel_2: PROCESS
BEGIN
	dataSel(2) <= '0';
	WAIT FOR 250000 ps;
	dataSel(2) <= '1';
	WAIT FOR 50000 ps;
	dataSel(2) <= '0';
WAIT;
END PROCESS t_prcs_dataSel_2;
-- dataSel[1]
t_prcs_dataSel_1: PROCESS
BEGIN
	dataSel(1) <= '0';
	WAIT FOR 100000 ps;
	dataSel(1) <= '1';
	WAIT FOR 50000 ps;
	dataSel(1) <= '0';
	WAIT FOR 50000 ps;
	dataSel(1) <= '1';
	WAIT FOR 100000 ps;
	dataSel(1) <= '0';
WAIT;
END PROCESS t_prcs_dataSel_1;
-- dataSel[0]
t_prcs_dataSel_0: PROCESS
BEGIN
	dataSel(0) <= '0';
	WAIT FOR 50000 ps;
	dataSel(0) <= '1';
	WAIT FOR 50000 ps;
	dataSel(0) <= '0';
	WAIT FOR 100000 ps;
	dataSel(0) <= '1';
	WAIT FOR 50000 ps;
	dataSel(0) <= '0';
WAIT;
END PROCESS t_prcs_dataSel_0;
-- matrixSel[1]
t_prcs_matrixSel_1: PROCESS
BEGIN
	matrixSel(1) <= '0';
	WAIT FOR 300000 ps;
	matrixSel(1) <= '1';
WAIT;
END PROCESS t_prcs_matrixSel_1;
-- matrixSel[0]
t_prcs_matrixSel_0: PROCESS
BEGIN
	matrixSel(0) <= '0';
	WAIT FOR 150000 ps;
	matrixSel(0) <= '1';
WAIT;
END PROCESS t_prcs_matrixSel_0;
-- saveReset[1]
t_prcs_saveReset_1: PROCESS
BEGIN
	saveReset(1) <= '0';
	WAIT FOR 30000 ps;
	saveReset(1) <= '1';
	WAIT FOR 30000 ps;
	saveReset(1) <= '0';
	WAIT FOR 30000 ps;
	saveReset(1) <= '1';
	WAIT FOR 20000 ps;
	saveReset(1) <= '0';
	WAIT FOR 30000 ps;
	saveReset(1) <= '1';
	WAIT FOR 20000 ps;
	saveReset(1) <= '0';
	WAIT FOR 30000 ps;
	saveReset(1) <= '1';
	WAIT FOR 20000 ps;
	saveReset(1) <= '0';
	WAIT FOR 30000 ps;
	saveReset(1) <= '1';
	WAIT FOR 40000 ps;
	saveReset(1) <= '0';
WAIT;
END PROCESS t_prcs_saveReset_1;
-- saveReset[0]
t_prcs_saveReset_0: PROCESS
BEGIN
	saveReset(0) <= '0';
WAIT;
END PROCESS t_prcs_saveReset_0;
END Matrix_Multiplier_arch;
