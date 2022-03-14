library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux_3bit_4to1 is
    --  Port ( );
end tb_mux_3bit_4to1;

architecture Behavioral of tb_mux_3bit_4to1 is
    -- Local signals
    signal s_a     :   std_logic_vector(2 downto 0);
    signal s_b     :   std_logic_vector(2 downto 0);
    signal s_c     :   std_logic_vector(2 downto 0);
    signal s_d     :   std_logic_vector(2 downto 0);
    signal s_sel   :   std_logic_vector(1 downto 0);
    signal s_f     :   std_logic_vector(2 downto 0);
begin

    utt_mux_3bit_4to1 : entity work.mux_3bit_4to1
        port map(

            a_i => s_a,
            b_i  => s_b,
            c_i => s_c,
            d_i => s_d,
            sel_i  => s_sel,
            f_o   => s_f
        );
    p_stimulus : process
    begin
        s_a <= "101";
        s_b <= "110";
        s_c <= "111";
        s_d <= "011";
        s_sel <= "00";
        wait for 100 ns;
        assert (s_f = "101");

        
        s_sel <= "01";
        wait for 100 ns;
        assert (s_f = "110");

        s_sel <= "10";
        wait for 100 ns;
        assert (s_f = "111");

        s_sel <= "11";
        wait for 100 ns;
        assert (s_f = "011");


        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait; -- Data generation process is suspended forever

    end process p_stimulus;
end Behavioral;
