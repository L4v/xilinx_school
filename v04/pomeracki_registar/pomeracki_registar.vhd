----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:57 12/05/2018 
-- Design Name: 
-- Module Name:    pomeracki_registar - Behavioral 
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

entity pomeracki_registar is
    Port ( iARITH : in  STD_LOGIC;
           iLOAD : in  STD_LOGIC;
           iDATA : in  STD_LOGIC_VECTOR (7 downto 0);
           iSHL : in  STD_LOGIC;
           iSHR : in  STD_LOGIC;
           iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           oSHREG : out  STD_LOGIC_VECTOR (7 downto 0));
end pomeracki_registar;

architecture Behavioral of pomeracki_registar is

	signal sREG : STD_LOGIC_VECTOR (7 downto 0);
	signal sSHSEL : STD_LOGIC_VECTOR (1 downto 0);
	signal sSHL : STD_LOGIC_VECTOR ( 7 downto 0);
	signal sSHR : STD_LOGIC_VECTOR (7 downto 0);
	signal sSHFT : STD_LOGIC_VECTOR (7 downto 0);
	
begin

	
	-- sREG
	process (iCLK, inRST) begin
		if(inRST = '0')then
			sREG <= x"00";
		elsif(rising_edge(iCLK))then
			if(iLOAD = '1') then
				sREG <= iDATA;
			else
				--
				sREG <= sSHFT;
				--
			end if;
		end if;
	end process;
	
	with iARITH select sSHR <=
		iDATA(7) & '0' & iDATA(5 downto 1) when '1',
		'0' & iDATA(7 downto 1) when others;
		
	with iARITH select sSHL <=
		iDATA(7) & iDATA(5 downto 0) when '0',
		iDATA(7 downto 1) & '0' when others;
		
	with sSHSEL select sSHFT <=
		sSHL when "10",
		sSHR when "01",
		sSHFT when others;
		
	oSHREG <= sREG;
	sSHSEL <= iSHL & iSHR;

end Behavioral;

