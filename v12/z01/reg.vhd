----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:23:57 01/05/2019 
-- Design Name: 
-- Module Name:    reg - Behavioral 
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

entity reg is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iWE : in  STD_LOGIC;
           iD : in  STD_LOGIC_VECTOR (15 downto 0);
           oQ : out  STD_LOGIC_VECTOR (15 downto 0));
end reg;

architecture Behavioral of reg is
	
	signal sREG : STD_LOGIC_VECTOR(15 downto 0);
	
begin

	process(iCLK, inRST, iWE) begin
		if(inRST = '0') then
			sREG <= x"0000";
		elsif(rising_edge(iCLK)) then
			if(iWE = '1') then
				sREG <= iD;
			else
				sREG <= sREG;
			end if;
		end if;
	end process;

	oQ <= sREG;

end Behavioral;

