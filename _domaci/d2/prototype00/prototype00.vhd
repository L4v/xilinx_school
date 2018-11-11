----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:26:20 11/11/2018 
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
    Port ( iSW : in  STD_LOGIC_VECTOR (7 downto 0);
           iSEL : in  STD_LOGIC;
           oLED : out  STD_LOGIC_VECTOR(7 downto 0));
end prototype00;

architecture Behavioral of prototype00 is

	signal sRAZ : STD_LOGIC_VECTOR(7 downto 0);
	signal sIND : STD_LOGIC_VECTOR(2 downto 0);

begin
	oLED <= not(iSW) when iSEL = '0' else
				sRAZ;
				
	sRAZ(3 downto 0) <= iSW(7 downto 4) - iSW(3 downto 0);
	sRAZ(4) <= '0' when iSW(7 downto 4) > iSW(3 downto 0) else
				'1';
	sRAZ(7 downto 5) <= sIND;
	
	sIND <= 
		"000" when iSW(0) = '1' else
		"001" when iSW(1) = '1' else
		"010" when iSW(2) = '1' else
		"011" when iSW(3) = '1' else
		"100" when iSW(4) = '1' else
		"101" when iSW(5) = '1' else
		"110" when iSW(6) = '1' else
		"111" when iSW(7) = '1' else
		 "000";
	
	--oLED(4) <= '1' when (iSW(7 downto 4) > iSW(3 downto 0)) and (iSEL = '1');
		
		

end Behavioral;

