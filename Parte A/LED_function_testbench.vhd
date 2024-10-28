library ieee;
use ieee.std_logic_1164.all;

entity LED_function_testbench is
end LED_function_testbench;

architecture behavior of LED_function_testbench is

	component LED_function --Component declaration
	port(
		SW1 : in std_logic;
		SW2 : in std_logic;
		SW3 : in std_logic;
		LED : out std_logic
		);
	end component;
	
	--Inputs
	signal SW1 : std_logic :='0';
	signal SW2 : std_logic :='0';
	signal SW3 : std_logic :='0';
	--Outputs
	signal LED : std_logic;

begin
	-- Instantiate the Unit Under Test (UUT)
	uut: LED_function port map (
		SW1 => SW1,
		SW2 => SW2,
		SW3 => SW3,
		LED => LED
	);

	stim_proc: process -- Stimulus process
	begin
		-- Stimulus
		SW1 <='0'; SW2 <='0'; SW3 <='0'; wait for 10ns;
		SW1 <='0'; SW2 <='0'; SW3 <='1'; wait for 10ns;
		SW1 <='0'; SW2 <='1'; SW3 <='0'; wait for 10ns;
		SW1 <='0'; SW2 <='1'; SW3 <='1'; wait for 10ns;
		SW1 <='1'; SW2 <='0'; SW3 <='0'; wait for 10ns;
		SW1 <='1'; SW2 <='0'; SW3 <='1'; wait for 10ns;
		SW1 <='1'; SW2 <='1'; SW3 <='0'; wait for 10ns;
		SW1 <='1'; SW2 <='1'; SW3 <='1'; wait for 10ns;
		wait;
	end process;
END;