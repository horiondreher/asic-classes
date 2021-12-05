LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY clockTo100Hz IS
	PORT (clk_50Mhz : IN  std_logic;
			rst       : IN  std_logic;
			clk_100Hz   : OUT std_logic);
END clockTo100Hz;

ARCHITECTURE clockTo100Hz OF clockTo100Hz IS

	SIGNAL prescaler : unsigned(19 DOWNTO 0);
	SIGNAL clk_100Hz_i : std_logic;
  
BEGIN

	gen_clk : PROCESS (clk_50Mhz, rst)
	BEGIN  -- process gen_clk
	
		IF rst = '1' THEN
			clk_100Hz_i   <= '0';
			prescaler   <= (OTHERS => '0');
		ELSIF falling_edge(clk_50Mhz) THEN   -- rising clock edge
			IF prescaler = X"3D090" THEN     -- 250 000 in hex
				prescaler   <= (OTHERS => '0');
				clk_100Hz_i   <= not clk_100Hz_i;
			ELSE
				prescaler <= prescaler + "1";
			END IF;
		END IF;
		
	END PROCESS gen_clk;

	clk_100Hz <= clk_100Hz_i;

END clockTo100Hz;