library ieee;
use ieee.std_logic_1164.all;

entity FULL_SUB is
	port (
		in_A: in std_logic;
		in_B: in std_logic;
		in_bin: in std_logic;
		clk: in std_logic;
		o_s: out std_logic;
		o_bout: out std_logic);
	end FULL_SUB;

architecture behavioral of FULL_SUB is

component D_FF
	port (D,clk: in std_logic;
			Q: out std_logic);
end component;
	
	signal a,b,bin,s,bout: std_logic;
begin
		s <= ((not(a)) and (not(b)) and bin)  or  ((not(a)) and b and (not(bin)))  or  (a and b and bin)  or  (a and (not(b)) and (not(bin)));
		bout <= ((not(a)) and b)  or  ((not(a)) and bin)  or (b and bin);

		D1: D_FF port map (in_A,clk,a);
		D2: D_FF port map (in_B,clk,b);
		D3: D_FF port map (in_bin,clk,bin);
		D4: D_FF port map (s,clk,o_s);
		D5: D_FF port map (bout,clk,o_bout);
end behavioral;