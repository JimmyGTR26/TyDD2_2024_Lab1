library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2C_Controller is
    Port (
        clk         : in std_logic;
        reset       : in std_logic;
        SDA         : in std_logic;
        fin_dato    : in std_logic;
        fin_dir     : in std_logic;
        soy         : in std_logic;
        enable_dir  : out std_logic;    -- habilitación de transmisión de dirección
        enable_data : out std_logic;    -- habilitación de transmisión de dato
        ack         : out std_logic     -- señal de ACK
    );
end I2C_Controller;

architecture Behavioral of I2C_Controller is
    type state_type is (IDLE, START , SAVE_DIR , R_W, ACK_STATE , SAVE_DATA);
    signal state, next_state : state_type;

begin
    -- Proceso de transición de estados
    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    -- Lógica de transición de estados
    process(state, SDA, fin_dato, fin_dir, soy)
    begin
        -- Valores por defecto de salidas
        enable_dir   <= '0';
        enable_data  <= '0';
        ack          <= '0';
        next_state   <= state;  -- Valor por defecto para evitar latch

        case state is
            when IDLE =>
                if SDA = '0' then               -- Espera que SDA=0 para iniciar
                    next_state <= START;
                end if;

            when start =>
					enable_dir   <= '0';
					enable_data  <= '0';
					ack          <= '0';
               next_state <= SAVE_DIR;   -- Transición directa a SAVE_DIR

            when SAVE_DIR =>
					 enable_data  <= '0';
                ack          <= '0';
                enable_dir <= '1';              -- Activar habilitación de dirección
                if fin_dir = '1' then
                    if soy = '1' then           -- Si la dirección es correcta (soy=1)
                        next_state <= R_W;
                    else
                        next_state <= IDLE;     -- Si la dirección es incorrecta (soy=0) volver a IDLE
                    end if;
                end if;

            when R_W =>
                enable_dir   <= '0';
					 enable_data  <= '0';
					 ack          <= '0';              -- Desactivar habilitación de dirección
                next_state <= ACK_STATE;        -- Transición directa al estado ACK_STATE

            when ACK_STATE =>
                ack <= '1';                     -- Activar la señal ACK
                next_state <= SAVE_DATA;        -- Pasar al estado SAVE_DATA

            when SAVE_DATA =>
                enable_data <= '1';             -- Activar habilitación de dato
                ack <= '0';                     -- Desactivar ACK
                if fin_dato = '1' then
                    next_state <= IDLE;         -- Volver a IDLE una vez terminado el dato
                end if;

            when others =>
                next_state <= IDLE;
        end case;
    end process;
end behavioral;
