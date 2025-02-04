library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity tb_template is
end tb_template;

architecture sim of tb_template is

	constant clk_hz : integer := 100e6;
	constant clk_period : time := 1 sec / clk_hz;

	signal clk : std_logic := '1';
	signal rst : std_logic := '1';

begin

	clk <= not clk after clk_period / 2;

	DUT : entity work.template(rtl)
	port map (
		clk => clk,
		rst => rst,
		
	);

	SEQUENCER_PROC : process
	begin
		wait for clk_period * 2;

		rst <= '0';

		wait for clk_period * 10;
		assert false
			report "Replace this with your test cases"
			severity failure;

		finish;
	end process;

end architecture;