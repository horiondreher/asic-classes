LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY check_Norm IS
	PORT (clk: IN std_logic;
			sigResIn: IN unsigned(105 DOWNTO 0);
			normPulse: OUT std_logic;
			sigResOut: OUT unsigned(51 DOWNTO 0));
END ENTITY;

ARCHITECTURE check_Norm OF check_Norm IS
BEGIN
		PROCESS(clk)
			VARIABLE auxRes: unsigned(105 DOWNTO 0);
		BEGIN
			auxRes := sigResIn;
			IF(clk'EVENT and clk = '1') THEN
				IF (auxRes(105) = '1')  THEN
					sigResOut <= shift_left(sigResIn(105 DOWNTO 54), 1);
					normPulse <= '1';
				ELSIF (auxRes(104) = '1') THEN
					sigResOut <=  shift_left(sigResIn(105 DOWNTO 54), 2);
					normPulse <= '0';
				END IF;
			END IF;
		END PROCESS;
END ARCHITECTURE;