----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:58:48 12/08/2018 
-- Design Name: 
-- Module Name:    z01 - Behavioral 
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

entity z01 is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iA : in  STD_LOGIC_VECTOR (15 downto 0);
           iB : in  STD_LOGIC_VECTOR (15 downto 0);
           oREM : out  STD_LOGIC_VECTOR (15 downto 0);
           oDIV : out  STD_LOGIC_VECTOR (15 downto 0);
           oDONE : out  STD_LOGIC);
end z01;

architecture Behavioral of z01 is

	signal sREG : STD_LOGIC_VECTOR(15 downto 0);
	signal sCNT : STD_LOGIC_VECTOR(15 downto 0);
	signal sMUX : STD_LOGIC;
	signal sDONE : STD_LOGIC;
	signal sCNTEN : STD_LOGIC;
	signal sREG0 : STD_LOGIC;
	signal sCNT0 : STD_LOGIC;
	signal sRBB : STD_LOGIC;
	signal sB0 : STD_LOGIC;
	

begin

	-- REG
	process (iCLK, inRST) begin
		if(inRST = '0')then
			sREG <= x"0000";
		elsif(rising_edge(iCLK))then
			if(sDONE = '0') then
				if(sMUX = '1')then
					sREG <= sREG - iB;
				else
					sREG <= iA;
				end if;
			else
				sREG <= sREG;
			end if;
		end if;
	end process;
	
	-- CNT
	process (iCLK, inRST) begin
		if(inRST = '0')then
			sCNT <= x"0000";
		elsif(rising_edge(iCLK))then
			if(sCNTEN = '1')then
				sCNT <= sCNT + 1;
			else
				sCNT <= sCNT;
			end if;
		end if;
	end process;

	-- sMUX
	sMUX <= not(sREG0) or not(sCNT0);
	
	sREG0 <= '1' when sREG = x"0000" else
				'0';
	
	sCNT0 <= '1' when sCNT = x"0000" else
				'0';
	
	-- sDONE
	sDONE <= not(sRBB) and not(sCNT0);
	
	sRBB <= '0' when sREG < iB else
			  '1';
	
	-- sCLKEN
	sCNTEN <= sRBB and not(sB0);
	
	sB0 <= '1' when iB = x"0000" else
			'0';
	
	-- oREM
	oREM <= sREG;
	
	--oDIV
	oDIV <= sCNT;
	
	--oDONE
	oDONE <= sDONE;

end Behavioral;

