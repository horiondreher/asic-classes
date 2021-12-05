LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Frac_To_BCD IS
	PORT(	FracIn: IN unsigned(3 DOWNTO 0);
			BCDOut3: OUT unsigned(3 DOWNTO 0);
			BCDOut2: OUT unsigned(3 DOWNTO 0);
			BCDOut1: OUT unsigned(3 DOWNTO 0);
			BCDOut0: OUT unsigned(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE Frac_To_BCD OF Frac_To_BCD IS

TYPE mem IS ARRAY(0 TO 15) OF unsigned(15 DOWNTO 0);
SIGNAL aux: mem := (	"0000000000000000",
							"0000011000100101",
							"0001001001010000",
							"0001100001110101",
							"0010010100000000",
							"0011000100100101",
							"0011011101010000",
							"0100001101110101",
							"0101000000000000",
							"0101011000100101",
							"0110001001010000",
							"0110100001110101",
							"0111010100000000",
							"1000000100100101",
							"1000011101010000",
							"1001001101110101");
SIGNAL address : integer RANGE 0 TO 9 := to_integer(FracIn);					
	
BEGIN

	BCDOut3 <= aux(address)(15 DOWNTO 12);
	BCDOut2 <= aux(address)(11 DOWNTO 8);
	BCDOut1 <= aux(address)(7 DOWNTO 4);
	BCDOut0 <= aux(address)(3 DOWNTO 0);	
	
END ARCHITECTURE;