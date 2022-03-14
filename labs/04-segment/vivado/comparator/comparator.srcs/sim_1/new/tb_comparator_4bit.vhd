library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_comparator_4bit is
--  Port ( );
end tb_comparator_4bit;

architecture testbench of tb_comparator_4bit is

-- Local signals
    signal s_a           : std_logic_vector(3 downto 0); -- 3-0 (4bits)
    signal s_b           : std_logic_vector(3 downto 0); -- 3-0 (4bits)
    signal s_B_greater_A : std_logic;
    signal s_B_equals_A  : std_logic;
    signal s_B_less_A    : std_logic;
    
       
begin
    -- Connecting testbench signals with comparator_4bit
    -- entity (Unit Under Test)
    uut_comparator_4bit : entity work.comparator_4bit
        port map(
            a_i           => s_a,
            b_i           => s_b,
            B_greater_A_o => s_B_greater_A,
            B_equals_A_o  => s_B_equals_A,
            B_less_A_o    => s_B_less_A
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case (s_b = 3(sec. dig.), s_a = 2(first dig.))
        s_b <= "0011";s_a <= "0010"; wait for 100 ns; 
        -- expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0011 and 0010 FAILED" severity error;

        -- TEST CASE with the error report HERE
        s_b <= "0011"; s_a <= "0011"; wait for 100 ns;
        -- expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0000, 0001 FAILED" severity error;
        
        
        -- OTHER TEST CASES HERE
        -- s_b <= "0000"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "0000"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "0000"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "0000"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "0000"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "0000"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "0000"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "0000"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "0000"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "0000"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "0000"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "0000"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "0000"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "0000"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "0000"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "0000"; s_a <= "1111"; wait for 100 ns;
        
        -- s_b <= "0001"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "0001"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "0001"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "0001"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "0001"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "0001"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "0001"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "0001"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "0001"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "0001"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "0001"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "0001"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "0001"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "0001"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "0001"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "0001"; s_a <= "1111"; wait for 100 ns;
      
        -- s_b <= "0010"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "0010"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "0010"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "0010"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "0010"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "0010"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "0010"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "0010"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "0010"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "0010"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "0010"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "0010"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "0010"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "0010"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "0010"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "0010"; s_a <= "1111"; wait for 100 ns;

        -- s_b <= "0011"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "0011"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "0011"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "0011"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "0011"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "0011"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "0011"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "0011"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "0011"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "0011"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "0011"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "0011"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "0011"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "0011"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "0011"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "0011"; s_a <= "1111"; wait for 100 ns;

        -- s_b <= "0100"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "0100"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "0100"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "0100"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "0100"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "0100"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "0100"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "0100"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "0100"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "0100"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "0100"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "0100"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "0100"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "0100"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "0100"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "0100"; s_a <= "1111"; wait for 100 ns;
        
        -- s_b <= "0101"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "0101"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "0101"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "0101"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "0101"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "0101"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "0101"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "0101"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "0101"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "0101"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "0101"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "0101"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "0101"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "0101"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "0101"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "0101"; s_a <= "1111"; wait for 100 ns;
      
        -- s_b <= "0110"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "0110"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "0110"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "0110"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "0110"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "0110"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "0110"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "0110"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "0110"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "0110"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "0110"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "0110"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "0110"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "0110"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "0110"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "0110"; s_a <= "1111"; wait for 100 ns;
        
        -- s_b <= "0111"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "0111"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "0111"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "0111"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "0111"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "0111"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "0111"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "0111"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "0111"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "0111"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "0111"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "0111"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "0111"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "0111"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "0111"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "0111"; s_a <= "1111"; wait for 100 ns;

		-- s_b <= "1000"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "1000"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "1000"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "1000"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "1000"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "1000"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "1000"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "1000"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "1000"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "1000"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "1000"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "1000"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "1000"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "1000"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "1000"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "1000"; s_a <= "1111"; wait for 100 ns;
        
        -- s_b <= "1001"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "1001"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "1001"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "1001"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "1001"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "1001"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "1001"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "1001"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "1001"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "1001"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "1001"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "1001"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "1001"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "1001"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "1001"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "1001"; s_a <= "1111"; wait for 100 ns;
      
        -- s_b <= "1010"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "1010"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "1010"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "1010"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "1010"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "1010"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "1010"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "1010"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "1010"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "1010"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "1010"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "1010"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "1010"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "1010"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "1010"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "1010"; s_a <= "1111"; wait for 100 ns;

        -- s_b <= "1011"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "1011"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "1011"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "1011"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "1011"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "1011"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "1011"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "1011"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "1011"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "1011"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "1011"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "1011"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "1011"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "1011"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "1011"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "1011"; s_a <= "1111"; wait for 100 ns;

        -- s_b <= "1100"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "1100"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "1100"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "1100"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "1100"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "1100"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "1100"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "1100"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "1100"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "1100"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "1100"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "1100"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "1100"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "1100"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "1100"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "1100"; s_a <= "1111"; wait for 100 ns;
        
        -- s_b <= "1101"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "1101"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "1101"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "1101"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "1101"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "1101"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "1101"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "1101"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "1101"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "1101"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "1101"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "1101"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "1101"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "1101"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "1101"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "1101"; s_a <= "1111"; wait for 100 ns;
      
        -- s_b <= "1110"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "1110"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "1110"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "1110"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "1110"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "1110"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "1110"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "1110"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "1110"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "1110"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "1110"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "1110"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "1110"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "1110"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "1110"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "1110"; s_a <= "1111"; wait for 100 ns;
        
        -- s_b <= "1111"; s_a <= "0000"; wait for 100 ns;
        -- s_b <= "1111"; s_a <= "0001"; wait for 100 ns;
      	-- s_b <= "1111"; s_a <= "0010"; wait for 100 ns;
      	-- s_b <= "1111"; s_a <= "0011"; wait for 100 ns;
        -- s_b <= "1111"; s_a <= "0100"; wait for 100 ns;
        -- s_b <= "1111"; s_a <= "0101"; wait for 100 ns;
      	-- s_b <= "1111"; s_a <= "0110"; wait for 100 ns;
      	-- s_b <= "1111"; s_a <= "0111"; wait for 100 ns;
        -- s_b <= "1111"; s_a <= "1000"; wait for 100 ns;
        -- s_b <= "1111"; s_a <= "1001"; wait for 100 ns;
      	-- s_b <= "1111"; s_a <= "1010"; wait for 100 ns;
      	-- s_b <= "1111"; s_a <= "1011"; wait for 100 ns;
        -- s_b <= "1111"; s_a <= "1100"; wait for 100 ns;
        -- s_b <= "1111"; s_a <= "1101"; wait for 100 ns;
      	-- s_b <= "1111"; s_a <= "1110"; wait for 100 ns;
      	-- s_b <= "1111"; s_a <= "1111"; wait for 100 ns;


        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait; -- Data generation process is suspended forever
    end process p_stimulus;

end testbench;
