----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:02 01/11/2019 
-- Design Name: 
-- Module Name:    cnt - Behavioral 
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

entity cnt is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iD : in  STD_LOGIC_VECTOR (15 downto 0);
           iEN : in  STD_LOGIC;
           iLOAD : in  STD_LOGIC;
           oQ : out  STD_LOGIC_VECTOR (15 downto 0));
end cnt;

architecture Behavioral of cnt is

	signal sCNT, sCNTN : std_logic_vector(15 downto 0);

begin

	process (iCLK, inRST, iEN, iLOAD, iD) begin
		if (inRST = '0') then
			sCNT <= x"0000";
		elsif (rising_edge(iCLK)) then
			if (iEN = '1') then
				if (iLOAD = '1') then
					sCNT <= iD;
				else
					sCNT <= sCNTN;
				end if;
			else
				sCNT <= sCNT;
			end if;
		end if;
	end process;
	
		sCNTN <= sCNT + 1;
	
--	process (sCNT, iEN, iLOAD, iD) begin
--		if(iEN = '1') then
--			if(iLOAD = '1') then
--				sCNTN <= iD;
--			else
--				sCNTN <= sCNT + 1;
--			end if;
--		else
--			sCNTN <= sCNT;
--		end if;
--	end process;
--process (iCLK, inRST, iEN, iLOAD) begin
--	if(inRST <= '0') then
--		sCNT <= x"0000";
--	elsif(rising_edge(iCLK)) then
--			if(iEN = '1') then
--			if(iLOAD = '1') then
--				sCNT <= iD;
--			else
--				sCNT <= sCNT + 1;
--			end if;
--		else
--			sCNT <= sCNT;
--		end if;
--	end if;
--end process;
	
	oQ <= sCNT;
	
end Behavioral;

