library ieee;
use ieee.std_logic_1164.all;

entity FULL_SUB_testbench is
end FULL_SUB_testbench;

architecture behavior of FULL_SUB_testbench is

		component FULL_SUB --component declaration
		port(
			in_A: in std_logic;
			in_B: in std_logic;
			in_bin: in std_logic;
			clk: in std_logic;
			o_s: out std_logic;
			o_bout: out std_logic
			);
		end component;
		
		--Inputs
		signal in_A : std_logic := '0';
		signal in_B : std_logic := '0';
		signal in_bin : std_logic := '0';
		signal clk : std_logic := '0';
		--Outputs
		signal o_s : std_logic;
		signal o_bout : std_logic;
		
--Clock period definition
constant clock_period : time := 20ns;
		
begin 
		--Instantiate the Unit Under Test (UUT)
		uut: FULL_SUB port map (
			in_A => in_A,
			in_B => in_B,
			in_bin => in_bin,
			clk => clk,
			o_s => o_s,
			o_bout => o_bout
		);
		
	--Clock process definition
clock_process:process
	begin
		clk <= '0';
		wait for clock_period/2;
		clk <= '1';
		wait for clock_period/2;
end process;

	stim_proc:process --Stimulus process
	begin
		--stimulus
		in_A <= '0' ; in_B <= '0' ; in_bin <= '0' ; wait for 30ns;
		in_A <= '0' ; in_B <= '0' ; in_bin <= '1' ; wait for 30ns;
		in_A <= '0' ; in_B <= '1' ; in_bin <= '0' ; wait for 30ns;
		in_A <= '0' ; in_B <= '1' ; in_bin <= '1' ; wait for 30ns;
		in_A <= '1' ; in_B <= '0' ; in_bin <= '0' ; wait for 30ns;
		in_A <= '1' ; in_B <= '0' ; in_bin <= '1' ; wait for 30ns;
		in_A <= '1' ; in_B <= '1' ; in_bin <= '0' ; wait for 30ns;
		in_A <= '1' ; in_B <= '1' ; in_bin <= '1' ; wait for 30ns;
		wait;
	end process;
end;