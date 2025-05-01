LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY CONTADOR_BCD IS
    PORT (
        CLK     : IN STD_LOGIC;
        RST     : IN STD_LOGIC;
        ENABLE  : IN STD_LOGIC;
        BCD_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        CARRY   : OUT STD_LOGIC
    );
END CONTADOR_BCD;

ARCHITECTURE BEHAVIOR OF CONTADOR_BCD IS
    SIGNAL COUNT : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
BEGIN
    PROCESS (CLK)
    BEGIN
        IF RST = '1' THEN
            COUNT <= "0000";
            CARRY <= '0';
        ELSIF RISING_EDGE(CLK) THEN
            IF ENABLE = '1' THEN
                IF COUNT = "1001" THEN -- 9 em BCD
                    COUNT <= "0000";
                    CARRY <= '1';
                ELSE
                    COUNT <= COUNT + 1;
                    CARRY <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    BCD_OUT <= COUNT;
END BEHAVIOR;
