LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY centesimal IS
	PORT (clk_100Hz : IN  std_logic;
			centesimalNum	: OUT unsigned(3 DOWNTO 0);
			pulse : OUT BIT);
END centesimal;

ARCHITECTURE centesimal OF centesimal IS

	SIGNAL counter : unsigned(3 DOWNTO 0);
	
BEGIN

	countTo10 : PROCESS (clk_100Hz)
	BEGIN 
	
	IF falling_edge(clk_100Hz) THEN
		IF counter = X"9" THEN
			counter   <= (OTHERS => '0');
			pulse <= '1';
		ELSE
			pulse <= '0';
			counter <= counter + "1";
      END IF;
	END IF;
	
	END PROCESS countTo10;

	centesimalNum <= counter;

END centesimal;