LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY andEnable IS
	PORT(A,B,En  : IN std_logic; S : OUT std_logic);
END ENTITY;

ARCHITECTURE andEnable OF andEnable IS
	BEGIN
		S <= A and B and En;
END ARCHITECTURE;