library ieee;
use ieee.std_logic_1164.all;

entity LED_function is
	port (SW1,SW2,SW3 : in std_logic;
			LED : out std_logic);
end LED_function;

Architecture behavioral of LED_function is
begin
		LED <= (SW1 xnor (not SW2)) or (SW3 and (not SW2));
end behavioral;