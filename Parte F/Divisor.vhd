library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- Librería para operaciones aritméticas

entity divisor is
    Port (
        A : in STD_LOGIC_VECTOR(5 downto 0);  -- Entrada A en formato (4,2)
        B : in STD_LOGIC_VECTOR(5 downto 0);  -- Entrada B en formato (3,3)
        Q : out STD_LOGIC_VECTOR(11 downto 0)  -- Salida del cociente final en formato (7,5)
    );
end divisor;

architecture behavioral of divisor is
    signal A_shifted : std_logic_vector(6 downto 0);  -- 7 bits para A desplazado
    signal A_int : integer;  -- Variable para almacenar el valor entero de A
    signal B_int : integer;  -- Variable para almacenar el valor entero de B
    signal cociente : integer;  -- Variable para almacenar el cociente
    signal resto : integer;      -- Variable para almacenar el resto
    signal parte_entera_bin : std_logic_vector(6 downto 0);  -- 7 bits para la parte entera
    signal parte_fracc_bin : std_logic_vector(4 downto 0);  -- 4 bits para la parte fraccionaria

	 begin
    A_shifted <= A & "0";  -- Añadir un cero a la derecha a A
    A_int <= to_integer(unsigned(A_shifted));  -- Convertir A_shifted a entero sin signo
    B_int <= to_integer(unsigned(B));  -- Convertir B a entero sin signo

    -- Se inicializa el resto con el valor de A_int
process (resto,A_int,B_int,cociente)
    begin
	 resto <= A_int;
	 for i in 0 to 130 loop
		if resto >= B_int then
			resto <= resto - B_int;  -- Restar B_int del resto
         cociente <= cociente + 1; -- Incrementar el contador de cociente
		end if;
	 end loop;
end process;

-- Asignar la parte entera del cociente
    parte_entera_bin <= std_logic_vector(to_unsigned(cociente , parte_entera_bin'length));

-- Asignar la parte fraccionaria
    parte_fracc_bin <= std_logic_vector(to_unsigned((resto * 32) / B_int , parte_fracc_bin'length));
-- Se multiplica y divide el resto por 32 y B_int, respectivamente, para obtener la parte fraccionaria en binario de 5 bits
	
-- Se concatena la parte entera con la fraccionaria
Q <= parte_entera_bin & parte_fracc_bin;
	 
end behavioral;
