library ieee;
use ieee.std_logic_1164.all;

ENTITY multiplier_To_LCD IS
	PORT(	clk : IN  STD_LOGIC;  
			D11, D12, D13, D14, D21, D22, D23, D24, D31, D32, D33, D34, D35, D36, D37, D38, D39: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			rw, rs, e : OUT STD_LOGIC; 
			lcd_data  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
   
END ENTITY;


ARCHITECTURE multiplier_To_LCD OF multiplier_To_LCD IS 
	SIGNAL   lcd_enable : STD_LOGIC;
   SIGNAL   lcd_bus    : STD_LOGIC_VECTOR(9 DOWNTO 0);
   SIGNAL   lcd_busy   : STD_LOGIC;
	
	COMPONENT lcd_controller IS
		PORT(	clk        : IN  STD_LOGIC; --system clock
				reset_n    : IN  STD_LOGIC; --active low reinitializes lcd
				lcd_enable : IN  STD_LOGIC; --latches data into lcd controller
				lcd_bus    : IN  STD_LOGIC_VECTOR(9 DOWNTO 0); --data and control signals
				busy       : OUT STD_LOGIC; --lcd controller busy/idle feedback
				rw, rs, e  : OUT STD_LOGIC; --read/write, setup/data, and enable for lcd
				lcd_data   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
   END COMPONENT;
	
BEGIN
	multiplier_To_LCD:lcd_controller PORT MAP(clk, '1', lcd_enable, lcd_bus, lcd_busy, rw, rs, e, lcd_data);
	PROCESS(clk)
		VARIABLE char  :  INTEGER RANGE 0 TO 25 := 0;
	BEGIN
		IF(clk'EVENT AND clk = '1') THEN
			IF(lcd_busy = '0' AND lcd_enable = '0') THEN
		
				lcd_enable <= '1';
		  
				IF(char < 25) THEN
					char := char + 1;
				ELSIF char=18 THEN
					char := 0;			 
				END IF;
		  
				CASE char IS
					WHEN 1 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D11;
					WHEN 2 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D12;
					WHEN 3 => lcd_bus <= "1000101110"; -- dot symbol
					WHEN 4 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D13;
					WHEN 5 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D14;
					
					WHEN 6 => lcd_bus <= "1000101010"; -- multiplication symbol
					
					WHEN 7 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D21;
					WHEN 8 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D22;
					WHEN 9 => lcd_bus <= "1000101110"; -- dot symbol
					WHEN 10 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D23;
					WHEN 11 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D24;
					
					WHEN 12 => lcd_bus <= "1000111101"; -- equal symbol
					
					WHEN 13 => lcd_bus <= "0011000000"; -- line 2
					
					WHEN 14 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D31;
					WHEN 15 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D32;
					WHEN 16 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D33;
					WHEN 17 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D34;
					WHEN 18 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D35;
					WHEN 19 => lcd_bus <= "1000101110"; -- dot symbol
					WHEN 20 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D36;
					WHEN 21 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D37;
					WHEN 22 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D38;
					WHEN 23 => lcd_bus(9 DOWNTO 4) <=  "100011";	lcd_bus(3 DOWNTO 0)	<= D39;
					WHEN 24 => lcd_bus <= "0010000000";
					WHEN OTHERS => lcd_enable <= '0';
				END CASE;
			ELSE
				lcd_enable <= '0';
			END IF;
		END IF;
	END PROCESS;
											
END ARCHITECTURE;
	