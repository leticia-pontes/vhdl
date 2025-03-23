LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--USE IEEE.STD_LOGIC_UNSIGNED.ALL; -- Quartus
USE IEEE.NUMERIC_STD.ALL; -- GHDL

ENTITY TB_ULA IS
END TB_ULA;

ARCHITECTURE TB OF TB_ULA IS
    COMPONENT ULA IS
        PORT (
            CLK, RST: IN STD_LOGIC;
			A, B: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			SEL1, SEL2: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			SEL_CARRY: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			MAIOR, MENOR, IGUAL, CARRY: OUT STD_LOGIC;
			S1, S2: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL CLK, RST: STD_LOGIC;
	SIGNAL A, B: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL SEL1, SEL2: STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL SEL_CARRY: STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL MAIOR, MENOR, IGUAL, CARRY: STD_LOGIC;
	SIGNAL S1, S2: STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL PAUSE: STD_LOGIC := '0';
BEGIN
    CLK <= NOT CLK AFTER 50 NS WHEN PAUSE = '0' ELSE '0';

    DUT: ULA 
        PORT MAP (
            CLK => CLK,
            RST => RST,
            A => A,
            B => B,
            SEL1 => SEL1,
            SEL2 => SEL2,
            SEL_CARRY => SEL_CARRY,
            MAIOR => MAIOR,
            MENOR => MENOR,
            IGUAL => IGUAL,
            CARRY => CARRY,
            S1 => S1,
            S2 => S2
        );

    STIMULI: PROCESS
    BEGIN

        RST <= '0';
        A <= (OTHERS => '0');
        B <= (OTHERS => '0');
        SEL1 <= (OTHERS => '0');
        SEL2 <= (OTHERS => '0');
        SEL_CARRY <= (OTHERS => '0');
        WAIT FOR 100 NS;

        RST <= '1';
        WAIT FOR 100 NS;
        
        RST <= '0';
        WAIT FOR 100 NS;

        A <= "00001001";
        B <= "00000011";
        WAIT FOR 200 NS;

        SEL1 <= "001";
        SEL2 <= "001";
        SEL_CARRY <= "01";
        WAIT FOR 200 NS;

        SEL1 <= "010";
        SEL2 <= "010";
        SEL_CARRY <= "01";
        WAIT FOR 200 NS;
        
        SEL1 <= "011";
        SEL2 <= "011";
        SEL_CARRY <= "01";
        WAIT FOR 200 NS;
        
        SEL1 <= "100";
        SEL2 <= "100";
        SEL_CARRY <= "01";
        WAIT FOR 200 NS;
        
        SEL1 <= "101";
        SEL2 <= "101";
        SEL_CARRY <= "01";
        WAIT FOR 200 NS;
        
        SEL1 <= "110";
        SEL2 <= "110";
        SEL_CARRY <= "01";
        WAIT FOR 200 NS;

        WAIT FOR 1000 NS;
        
        PAUSE <= '1';
        WAIT;
    END PROCESS;
END TB;