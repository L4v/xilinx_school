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
	signal sSHL : STD_LOGIC_VECTOR(7 downto 0);
	signal sSHR : STD_LOGIC_VECTOR(7 downto 0);
	signal sSH : STD_LOGIC_VECTOR(7 downto 0);
	signal sSHREG : STD_LOGIC_VECTOR(7 downto 0);
	signal sSHSEL : STD_LOGIC_VECTOR (1 downto 0);
	signal sREG : STD_LOGIC_VECTOR(7 downto 0);
	
begin

	
	-- sREG
	process (iCLK, inRST) begin
		if(inRST = '0')then
			sREG <= x"00";
		elsif(rising_edge(iCLK))then
			sREG <= sSHREG;
		end if;
	end process;
	
	-- MUX 3
	with iLOAD select sSHREG <=
		iDATA when '1',
		sSH when others;
	
	-- MUX 2
	with iSHSEL select sSH <=
		sSHL when "10",
		sSHR when "01",
		sSH when others;
		
	-- MUX 1
	with iARTH select sSHR <=
		iDATA(6 downto 0) & '0' when '0',
		iDATA(7) & iDATA(5 downto 0) & '0' when others;
		
	-- MUX 0
	with iARTH select sSHR <=
		'0' & iDATA(7 downto 1) when '0',
		iDATA(7) & '0' & iDATA(5 downto 1) when others;
		
	oSHREG <= sREG;
	sSHSEL <= iSHL & iSHR;

end Behavioral;

