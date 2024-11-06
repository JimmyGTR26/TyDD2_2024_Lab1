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

begin
		s <= ((not(in_A)) and (not(in_B)) and in_bin)  or  ((not(in_A)) and in_B and (not(in_bin)))  or  (in_A and in_B and in_bin)  or  (in_A and (not(in_B)) and (not(in_bin)));
		bout <= ((not(in_A)) and in_B)  or  ((not(in_A)) and in_bin)  or (in_B and in_bin);
end behavioral