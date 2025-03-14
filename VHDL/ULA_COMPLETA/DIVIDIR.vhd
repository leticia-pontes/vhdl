LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DIVIDIR_POR_2 IS
	PORT (E1: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			CARRY: OUT STD_LOGIC;
			S: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END DIVIDIR_POR_2;

ARCHITECTURE DIVIDIR_POR_2_ARCH OF DIVIDIR_POR_2 IS
BEGIN
	-- ATRIBUI O ÚLTIMO BIT AO CARRY
	CARRY <= E1(0);
	-- CONCATENA O '0' COM O RESTO DA ENTRADA
	S <= '0' & E1(7 DOWNTO 1);
END DIVIDIR_POR_2_ARCH;