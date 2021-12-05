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
-- Generated on "05/30/2019 16:01:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Entrada
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Entrada_vhd_vec_tst IS
END Entrada_vhd_vec_tst;
ARCHITECTURE Entrada_arch OF Entrada_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dataIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataSel : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL matrixOut3 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL matrixSel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL outA11 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outA12 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outA13 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outA21 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outA22 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outA23 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outA31 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outA32 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outA33 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outB11 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outB12 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outB13 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outB21 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outB22 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outB23 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outB31 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outB32 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outB33 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL saveReset : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Entrada
	PORT (
	dataIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataSel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	matrixOut3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	matrixSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	outA11 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outA12 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outA13 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outA21 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outA22 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outA23 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outA31 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outA32 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outA33 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outB11 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outB12 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outB13 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outB21 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outB22 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outB23 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outB31 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outB32 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	outB33 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	saveReset : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Entrada
	PORT MAP (
-- list connections between master ports and signals
	dataIn => dataIn,
	dataSel => dataSel,
	matrixOut3 => matrixOut3,
	matrixSel => matrixSel,
	outA11 => outA11,
	outA12 => outA12,
	outA13 => outA13,
	outA21 => outA21,
	outA22 => outA22,
	outA23 => outA23,
	outA31 => outA31,
	outA32 => outA32,
	outA33 => outA33,
	outB11 => outB11,
	outB12 => outB12,
	outB13 => outB13,
	outB21 => outB21,
	outB22 => outB22,
	outB23 => outB23,
	outB31 => outB31,
	outB32 => outB32,
	outB33 => outB33,
	saveReset => saveReset
	);
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	dataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_3;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
	dataIn(2) <= '0';
	WAIT FOR 230000 ps;
	dataIn(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
	dataIn(1) <= '0';
	WAIT FOR 110000 ps;
	dataIn(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
	dataIn(0) <= '1';
	WAIT FOR 190000 ps;
	dataIn(0) <= '0';
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
WAIT;
END PROCESS t_prcs_dataSel_2;
-- dataSel[1]
t_prcs_dataSel_1: PROCESS
BEGIN
	dataSel(1) <= '0';
	WAIT FOR 180000 ps;
	dataSel(1) <= '1';
WAIT;
END PROCESS t_prcs_dataSel_1;
-- dataSel[0]
t_prcs_dataSel_0: PROCESS
BEGIN
	dataSel(0) <= '0';
	WAIT FOR 140000 ps;
	dataSel(0) <= '1';
	WAIT FOR 40000 ps;
	dataSel(0) <= '0';
	WAIT FOR 50000 ps;
	dataSel(0) <= '1';
WAIT;
END PROCESS t_prcs_dataSel_0;
-- matrixSel[1]
t_prcs_matrixSel_1: PROCESS
BEGIN
	matrixSel(1) <= '0';
WAIT;
END PROCESS t_prcs_matrixSel_1;
-- matrixSel[0]
t_prcs_matrixSel_0: PROCESS
BEGIN
	matrixSel(0) <= '0';
WAIT;
END PROCESS t_prcs_matrixSel_0;
-- saveReset[1]
t_prcs_saveReset_1: PROCESS
BEGIN
	saveReset(1) <= '0';
WAIT;
END PROCESS t_prcs_saveReset_1;
-- saveReset[0]
t_prcs_saveReset_0: PROCESS
BEGIN
	saveReset(0) <= '0';
WAIT;
END PROCESS t_prcs_saveReset_0;
END Entrada_arch;
