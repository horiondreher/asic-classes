LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Whole_Frac_Sum IS
	PORT(	clk: IN std_logic;
			Whole: IN unsigned(7 DOWNTO 0);
			Frac: IN unsigned(51 DOWNTO 0);
			FP_Out: OUT unsigned(51 DOWNTO 0);
			Exp_Out: OUT unsigned(10 DOWNTO 0));
END ENTITY;

ARCHITECTURE Whole_Frac_Sum OF Whole_Frac_Sum IS
	SIGNAL auxOut: unsigned(51 DOWNTO 0);
	SIGNAL auxExp: unsigned(10 DOWNTO 0);
BEGIN
	PROCESS(clk)
		VARIABLE auxWhole: unsigned(7 DOWNTO 0);
		BEGIN
			auxWhole := Whole;
			IF(clk'EVENT and clk = '1') THEN
				FOR i IN 1 TO 7 LOOP
					IF (auxWhole(7) = '1') THEN
						auxWhole := shift_left(auxWhole, 1);
						auxOut(51 DOWNTO (44+i)) <= auxWhole(7 DOWNTO i);
						auxOut((43 + i) DOWNTO 0) <= Frac(51 DOWNTO (8 - i));
						auxExp <= (8 - i) + "01111111111";
						EXIT;
					ELSE
						auxWhole := shift_left(auxWhole, 1);
					END IF;
				END LOOP;
				FP_Out <= auxOut;
				Exp_Out <= auxExp;
			END IF;
	END PROCESS;
END ARCHITECTURE;