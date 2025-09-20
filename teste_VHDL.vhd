LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY teste_VHDL IS
END teste_VHDL;

ARCHITECTURE behavior OF teste_VHDL IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT MUX_A_B
    PORT(
         A  : IN  std_logic;
         B  : IN  std_logic;
         S  : IN  std_logic_vector(1 downto 0);
         EN : IN  std_logic;
         Y  : OUT  std_logic
        );
    END COMPONENT;
   

   --Inputs
   signal A  : std_logic := '0';
   signal B  : std_logic := '0';
   signal S  : std_logic_vector(1 downto 0) := (others => '0');
   signal EN : std_logic := '0';

   --Outputs
   signal Y : std_logic;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
   uut: MUX_A_B PORT MAP (
          A  => A,
          B  => B,
          S  => S,
          EN => EN,
          Y  => Y
        );

   -- Processo de estímulo (stimulus process)
   -- Este processo aplica todas as combinações de entrada e verifica a saída.
   stim_proc: process
   begin
      -- Teste 1: EN = '0' (desabilitado). A saída deve ser 'Z'.
      EN <= '0';
      A  <= '1';
      B  <= '1';
      S  <= "00";
      wait for 10 ns;
      
      -- Teste 2: EN = '1' (habilitado).
      EN <= '1';
      wait for 10 ns;

      -- Teste 3: S = "00" (Y = A AND B)
      S <= "00";
      A <= '0'; B <= '0'; wait for 10 ns;
      A <= '0'; B <= '1'; wait for 10 ns;
      A <= '1'; B <= '0'; wait for 10 ns;
      A <= '1'; B <= '1'; wait for 10 ns;

      -- Teste 4: S = "01" (Y = A OR B)
      S <= "01";
      A <= '0'; B <= '0'; wait for 10 ns;
      A <= '0'; B <= '1'; wait for 10 ns;
      A <= '1'; B <= '0'; wait for 10 ns;
      A <= '1'; B <= '1'; wait for 10 ns;

      -- Teste 5: S = "10" (Y = NOT B)
      S <= "10";
      B <= '0'; wait for 10 ns;
      B <= '1'; wait for 10 ns;

      -- Teste 6: S = "11" (Y = A)
      S <= "11";
      A <= '0'; wait for 10 ns;
      A <= '1'; wait for 10 ns;

      wait; -- Finaliza a simulação
   end process;
   
END;