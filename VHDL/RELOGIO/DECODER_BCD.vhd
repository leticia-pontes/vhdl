LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DECODER_BCD IS
    PORT (
        ENTRADA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        A, B, C, D, E, F, G : OUT STD_LOGIC
    );
END DECODER_BCD;

ARCHITECTURE BEHAVIOR OF DECODER_BCD IS
BEGIN
    PROCESS(ENTRADA)
    BEGIN
        CASE ENTRADA IS
            WHEN "0000" => 
				A <= '0'; 
				B <= '0'; 
				C <= '0'; 
				D <= '0'; 
				E <= '0'; 
				F <= '0'; 
				G <= '1';
				
            WHEN "0001" => 
				A <= '1'; 
				B <= '0'; 
				C <= '0'; 
				D <= '1'; 
				E <= '1'; 
				F <= '1'; 
				G <= '1';

            WHEN "0010" => 
				A <= '0'; 
				B <= '0'; 
				C <= '1'; 
				D <= '0'; 
				E <= '0'; 
				F <= '1'; 
				G <= '0';

            WHEN "0011" => 
				A <= '0'; 
				B <= '0'; 
				C <= '0'; 
				D <= '0'; 
				E <= '1'; 
				F <= '1'; 
				G <= '0';

            WHEN "0100" => 
				A <= '1'; 
				B <= '0'; 
				C <= '0'; 
				D <= '1'; 
				E <= '1'; 
				F <= '0'; 
				G <= '0';

            WHEN "0101" => 
				A <= '0'; 
				B <= '1'; 
				C <= '0'; 
				D <= '0'; 
				E <= '1'; 
				F <= '0'; 
				G <= '0';

            WHEN "0110" => 
				A <= '0'; 
				B <= '1'; 
				C <= '0'; 
				D <= '0'; 
				E <= '0'; 
				F <= '0'; 
				G <= '0';

            WHEN "0111" => 
				A <= '0'; 
				B <= '0'; 
				C <= '0'; 
				D <= '1'; 
				E <= '1'; 
				F <= '1'; 
				G <= '1';

            WHEN "1000" => 
				A <= '0'; 
				B <= '0'; 
				C <= '0'; 
				D <= '0'; 
				E <= '0'; 
				F <= '0'; 
				G <= '0';

            WHEN "1001" => 
				A <= '0'; 
				B <= '0'; 
				C <= '0'; 
				D <= '0'; 
				E <= '1'; 
				F <= '0'; 
				G <= '0';

            WHEN OTHERS => 
				A <= '1'; 
				B <= '1'; 
				C <= '1'; 
				D <= '1'; 
				E <= '1'; 
				F <= '1'; 
				G <= '1';
        END CASE;
    END PROCESS;
END BEHAVIOR;
