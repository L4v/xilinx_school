----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:27:28 12/05/2018 
-- Design Name: 
-- Module Name:    brojac - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity brojac is
    Port ( iEN : in  STD_LOGIC;
           iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           oCNT : out  STD_LOGIC_VECTOR (7 downto 0));
end brojac;

architecture Behavioral of brojac is

	signal sCNT : STD_LOGIC_VECTOR(7 downto 0);

begin
	-- Brojac
	process (iCLK, inRST) begin
		if(inRST = '0')then
			sCNT <= x"00";
		elsif(rising_edge(iCLK))then
			if(iEN = '1') then
				if(sCNT = "11111111") then
					sCNT <= x"00";
				else
					sCNT <= sCNT + 1;
				end if;
			end if;
		end if;
	end process;

	oCNT <= sCNT;

end Behavioral;

