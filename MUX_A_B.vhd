----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:41:48 09/20/2025 
-- Design Name: 
-- Module Name:    MUX_A_B - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_A_B is
    Port ( 
			  A,B : in  STD_LOGIC; --Entrada de Dados
           S : in STD_LOGIC_VECTOR(1 downto 0); -- 2 bits
           EN : in  STD_LOGIC; --enable
           Y : out  STD_LOGIC); --saida
end MUX_A_B;

architecture Behavioral of MUX_A_B is
	signal D0,D1,D2,D3 : STD_LOGIC; -- sinais internos do mux
begin

	process(D0,D1,D2,D3,S,EN)
	begin
	 -- aqui você calcula cada entrada do mux como quiser:
    D0 <= A and B;       -- entrada 0 = A AND B
    D1 <= A or B;        -- entrada 1 = A OR B
    D2 <= not B;         -- entrada 2 = NOT B
    D3 <= A;             -- entrada 3 = apenas A
	 
		if EN = '1' then
			case S is
				 when "00" => Y <= D0;
				 when "01" => Y <= D1;
				 when "10" => Y <= D2;
				 when "11" => Y <= D3;
				 when others => Y <= '0';
			end case;
		else
			Y <= 'Z'; -- saída flutuante quando desabilitado
		end if;
	end process;

end Behavioral;

