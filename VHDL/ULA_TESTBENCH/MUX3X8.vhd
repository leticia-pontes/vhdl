LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY MUX3X8 IS
	PORT (E1, E2, E3, E4, E5, E6, E7: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			SEL: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			S: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END MUX3X8;

ARCHITECTURE MUX3X8_ARCH OF MUX3X8 IS
BEGIN
	PROCESS(SEL, E1, E2, E3, E4, E5, E6, E7)
	BEGIN
		CASE SEL IS
			WHEN "000" => S <= E1;
			WHEN "001" => S <= E2;
			WHEN "010" => S <= E3;
			WHEN "011" => S <= E4;
			WHEN "100" => S <= E5;
			WHEN "101" => S <= E6;
			WHEN "110" => S <= E7;
			WHEN OTHERS => NULL;
		END CASE;
	END PROCESS;
END MUX3X8_ARCH;
