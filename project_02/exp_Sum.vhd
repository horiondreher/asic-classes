LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY exp_Sum IS
	PORT (pulseNorm: IN std_logic;
			exp1, exp2: IN unsigned(10 DOWNTO 0);
			expRes: OUT unsigned(10 DOWNTO 0));
END ENTITY;

ARCHITECTURE exp_Sum OF exp_Sum IS
BEGIN
		expRes <= 	(exp1 + exp2) - "01111111111" WHEN pulseNorm = '0' ELSE
						(exp1 + exp2) - "01111111110";
END ARCHITECTURE;