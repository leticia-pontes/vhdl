LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY TB_CONTADOR4BITS IS
END TB_CONTADOR4BITS;

ARCHITECTURE TB OF TB_CONTADOR4BITS IS
    COMPONENT CONTADOR4BITS IS
        PORT(
            CLK, RST, LOAD: IN STD_LOGIC;
            DIN: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            S: OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL CLK, RST, LOAD: STD_LOGIC;
    SIGNAL DIN, S: STD_LOGIC_VECTOR(4 DOWNTO 0);
    
BEGIN
    DUT: CONTADOR4BITS
    PORT MAP (CLK  => CLK,
              RST  => RST,
              LOAD => LOAD,
              DIN  => DIN,
              S    => S);

    CLK_PROCESS: PROCESS
    BEGIN
        WHILE TRUE LOOP
            CLK <= '0';
            WAIT FOR 5 NS;
            CLK <= '1';
            WAIT FOR 5 NS;
        END LOOP;
    END PROCESS;

    SIMULATION: PROCESS
    BEGIN
        RST  <= '1';
        LOAD <= '0';
        DIN  <= (OTHERS => '0');

        WAIT FOR 20 NS;
        RST <= '0';

        WAIT FOR 100 NS;

        LOAD <= '1';
        DIN  <= "00101";
        WAIT FOR 10 NS;
        LOAD <= '0';

        WAIT FOR 100 NS;

        WAIT;
    END PROCESS;

END TB;
