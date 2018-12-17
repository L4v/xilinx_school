----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:17:26 12/17/2018 
-- Design Name: 
-- Module Name:    z02 - Behavioral 
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

entity z02 is
    Port ( iLED : in  STD_LOGIC_VECTOR (7 downto 0);
			  iCLK : in STD_LOGIC;
			  inRST : in STD_LOGIC;
           oPRIG : out  STD_LOGIC_VECTOR (7 downto 0));
end z02;

architecture Behavioral of z02 is
	signal sLED : STD_LOGIC_VECTOR(7 downto 0);
	signal sCNT, sCNTN : STD_LOGIC_VECTOR(24 downto 0);
begin
	
	-- COUNTER
	process(sCNT) begin
		if(sCNT = 24 - 1) then
			sCNTN <= "0000000000000000000000000";
		else
			sCNTN <= sCNT + 1;
		end if;
	end process;
	
	process(iCLK, inRST) begin
		if(inRST = '0') then
			sCNT <= "0000000000000000000000000";
		elsif(rising_edge(iCLK)) then
			sCNT <= sCNTN;
		end if;
	end process;
	
	-- DIMMER
	process(sCNT) begin
		if(sCNT <= 4800000) then -- 4800000
			if(sCNT <= 1200000) then
				sLED <= iLED;
			else
				sLED <= x"00";
			end if;
		elsif(sCNT > 4800000 and sCNT <= 9600000) then
			if(sCNT <= 4800000 + 2400000) then
				sLED <= iLED;
			else
				sLED <= x"00";
			end if;
		elsif(sCNT > 9600000 and sCNT <= 14400000) then
			sLED <= iLED;
		elsif(sCNT > 14400000 and sCNT <= 19200000) then
			if(sCNT <= 14400000 + 2400000) then
				sLED <= iLED;
			else
				sLED <= x"00";
			end if;
		else
			if(sCNT <= 19200000 + 1200000) then
				sLED <= iLED;
			else
				sLED <= x"00";
			end if;
		end if;
	end process;

	oPRIG <= sLED;

end Behavioral;

