library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_4bit is
    Port (
        b_i           : in  std_logic_vector(3 downto 0); -- 3-0 (4bits)
        a_i           : in  std_logic_vector(3 downto 0); -- 3-0 (4bits)
        B_greater_A_o : out std_logic;
        B_equals_A_o  : out std_logic;
        B_less_A_o    : out std_logic
    );
end comparator_4bit;

architecture Behavioral of comparator_4bit is

begin
    B_greater_A_o <= '1' when (b_i > a_i) else '0';
    B_equals_A_o  <= '1' when (b_i = a_i) else '0';
    B_less_A_o    <= '1' when (b_i < a_i) else '0';

end Behavioral;
