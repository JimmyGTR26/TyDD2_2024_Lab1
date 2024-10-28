library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;

entity D_FF is
port (D,clk: in std_logic;
		Q: out std_logic);
end D_FF;

architecture behavioral of D_FF is
	begin
		process (clk)
		begin
			if (rising_edge(clk)) then
				Q <= D;
			end if;
		end process;
end behavioral;