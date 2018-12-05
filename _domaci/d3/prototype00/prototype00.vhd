----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:24 12/05/2018 
-- Design Name: 
-- Module Name:    prototype00 - Behavioral 
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

entity prototype00 is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           oTC : out  STD_LOGIC;
			  oRES : out STD_LOGIC_VECTOR(7 downto 0));
end prototype00;

architecture Behavioral of prototype00 is
	signal sCNT : STD_LOGIC_VECTOR(24 downto 0);
	signal sTC : STD_LOGIC;
	signal sCNTNEXT : STD_LOGIC_VECTOR(24 downto 0);
	signal sTCNEXT : STD_LOGIC;
	signal sRES : STD_LOGIC_VECTOR(7 downto 0);
begin

	-- Brojanje
	process(iCLK, inRST) begin
		if (inRST = '0') then
			sCNT <= "0000000000000000000000000";
			sTC <= '0';
		elsif(rising_edge(iCLK))then
			sCNT <= sCNTNEXT;
			sTC <= sTCNEXT;
		end if;
	end process;
	
	-- Prosla sekunda
	process(sCNT) begin
		if(sCNT = 24 -1)then
			sCNTNEXT <= "0000000000000000000000000";
			sTCNEXT <= '1';
		else
			sTCNEXT <= '0';
			sCNTNEXT <= sCNT + 1;
		end if;
	end process;
	
	-- Pomerac
	process (iCLK, inRST) begin
		if(inRST = '0') then
			sRES <= "00011110";
		elsif(rising_edge(iCLK))then
			if(sTC = '1')then
				sRES <= sRES(0) & sRES(7 downto 1);
			else
				sRES <= sRES;
			end if;
		end if;
	end process;
	
oTC <= sTC;
oRES <= sRES;

end Behavioral;

