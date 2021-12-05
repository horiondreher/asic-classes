LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY dividerToLCD IS
	PORT (ready: IN  std_logic;
			A0, A1, A2, B0, B1, B2, S0, S1, S2, R0, R1, R2: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			LCD_Out   : OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
END dividerToLCD;

ARCHITECTURE dividerToLCD OF dividerToLCD IS

	SIGNAL counter : INTEGER RANGE 0 TO 15;
		
BEGIN

	sendNum: PROCESS(ready)
	
	BEGIN
	IF (ready'EVENT AND ready = '1') THEN
		
		CASE counter IS
			WHEN 0 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= A2;
			WHEN 1 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= A1;
			WHEN 2 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= A0;
			WHEN 3 => LCD_Out <= "1000101111"; -- divider symbol
			WHEN 4 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= B2;
			WHEN 5 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= B1;
			WHEN 6 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= B0;
			WHEN 7 => LCD_Out <= "1000111101"; -- equal symbol
			WHEN 8 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= S2;
			WHEN 9 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= S1;
			WHEN 10 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= S0;
			WHEN 11 => LCD_Out <= "1001110010"; -- r
			WHEN 12 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= R2;
			WHEN 13 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= R1;
			WHEN 14 => LCD_Out(9 DOWNTO 4) <=  "100011";	LCD_Out(3 DOWNTO 0)	<= R0;
			WHEN 15 => LCD_Out <= "0010000001"; counter <= 0; -- back to pos 0
						  
		END CASE;
		counter <= counter + 1;
			
	END IF;
	END PROCESS sendNum;

END ARCHITECTURE;