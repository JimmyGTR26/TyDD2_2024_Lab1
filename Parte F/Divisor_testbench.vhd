library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Divisor_testbench is
end Divisor_testbench;

architecture behavioral of Divisor_testbench is
    -- Declaración de componente para UUT
    component Divisor
        Port (
            A : in STD_LOGIC_VECTOR(5 downto 0);  -- Entrada A en formato (4,2)
            B : in STD_LOGIC_VECTOR(5 downto 0);  -- Entrada B en formato (3,3)
            Q : out STD_LOGIC_VECTOR(11 downto 0)  -- Salida del cociente final en formato (7,5)
        );
    end component;

    --Señales para componente en UUT
    signal A : STD_LOGIC_VECTOR(5 downto 0) ;
	 signal B : STD_LOGIC_VECTOR(5 downto 0) ;
    signal Q : STD_LOGIC_VECTOR(11 downto 0);

begin
    -- Instancia de UUT
    uut: Divisor
        Port map (
            A => A,
            B => B,
            Q => Q
        );

    -- Proceso de prueba
    test_process: process
    begin
        -- Prueba de caso con A = 15.0 and B = 2.5
        A <= "111100";  -- A = 15.0 en formato (4,2)
        B <= "010100";  -- B = 2.5 en formato (3,3)
        wait for 20 ns;
        
        -- Finalización
        wait;
    end process;
end behavioral;
