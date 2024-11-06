library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2C_Controller_testbench is
end I2C_Controller_testbench;

architecture behavioral of I2C_Controller_testbench is
    -- Declaración del componente I2C_Controller
    component I2C_Controller
        Port (
            clk          : in std_logic;
            reset        : in std_logic;
            SDA          : inout std_logic;
            fin_dato     : in std_logic;
            fin_dir      : in std_logic;
            soy          : in std_logic;
            enable_dir   : out std_logic;
            enable_data  : out std_logic;
            ack          : out std_logic
        );
    end component;

    -- Declaración de señales para conectar al controlador I2C
    signal clk          : std_logic := '0';
    signal reset        : std_logic := '1';
    signal SDA          : std_logic := '1';
    signal fin_dato     : std_logic := '0';
    signal fin_dir      : std_logic := '0';
    signal soy          : std_logic := '0';
    signal enable_dir   : std_logic;
    signal enable_data  : std_logic;
    signal ack          : std_logic := '0';

    -- Constantes de prueba
    constant direccion_esclavo : std_logic_vector(6 downto 0) := "1010101"; -- Dirección esperada del esclavo
    constant direccion_enviar  : std_logic_vector(6 downto 0) := "1010101"; -- Dirección a enviar
    constant dato_enviar       : std_logic_vector(7 downto 0) := "11011010"; -- Dato a enviar

	begin
    -- Instanciación del controlador I2C
    uut: I2C_Controller
        Port map (
            clk          => clk,
            reset        => reset,
            SDA          => SDA,
            fin_dato     => fin_dato,
            fin_dir      => fin_dir,
            soy          => soy,
            enable_dir   => enable_dir,
            enable_data  => enable_data,
            ack          => ack
        );

    -- Generación de reloj: 50 MHz (20 ns period)
    clk_process : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    -- Proceso de estímulos para la simulación
    stimulus : process
    begin
        -- Inicialización: aplicar reset
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;

        -- Mantener SDA en '1' (estado IDLE)
        SDA <= '1';
        wait for 20 ns;

        -- Condición de START: SDA baja a '0'
        SDA <= '0';
        wait for 20 ns;
			
		  -- Transición a START
		  
        -- Transición a SAVE_DIRECTION
        fin_dir <= '0';
        soy <= '0';

        -- Enviar dirección bit a bit
        for i in 6 downto 0 loop
            SDA <= direccion_enviar(i);
            wait for 20 ns;
        end loop;

        -- Finalización de la dirección
        fin_dir <= '1';

        -- Verificar si la dirección coincide
        if direccion_enviar = direccion_esclavo then
            soy <= '1';  -- Dirección coincide, esclavo responde
        else
            soy <= '0';  -- Dirección incorrecta, regresar a IDLE
        end if;
        wait for 20 ns;

        -- Asumimos que soy = 1 (dirección válida)
        fin_dir <= '0';
        soy <= '1';

        -- Enviar bit R/W (asumimos escritura, R/W = '0')
        SDA <= '0';  -- Escribir en esclavo
        wait for 20 ns;

        -- Simular ACK recibido
        ack <= '1';
        wait for 20 ns;

        -- Transición a SAVE_DATA
        fin_dato <= '0';
		  ack <= '0';

        -- Enviar dato bit a bit
        for j in 7 downto 0 loop
            SDA <= dato_enviar(j);
            wait for 20 ns;
        end loop;

        -- Finalización de la transmisión de dato
        fin_dato <= '1';
        wait for 20 ns;

        -- Finalizar transmisión: volver a estado IDLE
        SDA <= '1';
        fin_dato <= '0';
        soy <= '0';
        wait for 100 ns;

        -- Terminar la simulación
        wait;
    end process;
end behavioral;