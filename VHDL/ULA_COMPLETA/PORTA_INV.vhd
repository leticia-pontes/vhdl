LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PORTA_INV IS
	PORT (E1: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			S: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END PORTA_INV;

ARCHITECTURE PORTA_INV_ARCH OF PORTA_INV IS
BEGIN
	S <= NOT E1;
END PORTA_INV_ARCH;