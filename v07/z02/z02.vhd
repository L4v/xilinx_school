----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:08 12/06/2018 
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
    Port ( iCLK : in  STD_LOGIC;
           iRST : in  STD_LOGIC;
           iLOAD : in  STD_LOGIC;
           iA : in  STD_LOGIC_VECTOR (3 downto 0);
           oFACT : out  STD_LOGIC_VECTOR (31 downto 0);
           oDONE : out  STD_LOGIC);
end z02;

architecture Behavioral of z02 is
	
	signal sCNT : STD_LOGIC_VECTOR( 3 downto 0);
	signal sSHL3 : STD_LOGIC_VECTOR(31 downto 0);
	signal sSHL2 : STD_LOGIC_VECTOR(31 downto 0);
	signal sSHL1 : STD_LOGIC_VECTOR(31 downto 0);
	signal sSHL0 : STD_LOGIC_VECTOR(31 downto 0);
	signal sFACT : STD_LOGIC_VECTOR(31 downto 0);
	signal sPROD : STD_LOGIC_VECTOR(31 downto 0);
	signal sRST : STD_LOGIC;

begin

	-- CNT DOWN
	process (iCLK, iRST) begin
		if(iRST = '1') then
			sCNT <= "0001";
		elsif(rising_edge(iCLK)) then
			if(iLOAD = '1') then
				sCNT <= iA;
			else
				if(sCNT = "0001") then
					sCNT <= sCNT;
				else
					sCNT <= sCNT - 1;
				end if;
			end if;
		end if;
	end process;

	
	process(sCNT) begin
		if(sCNT(3) = '1')then
			sSHL3 <= sFACT(28 downto 0) & "000";
		else
			sSHL3 <= x"00000000";
		end if;
		
		if(sCNT(2) = '1')then
			sSHL2 <= sFACT(29 downto 0) & "00";
		else
			sSHL2 <= x"00000000";
		end if;
		
		if(sCNT(1) = '1')then
			sSHL1 <= sFACT(30 downto 0) & '0';
		else
			sSHL1 <= x"00000000";
		end if;
		
		if(SCNT(0) = '1') then
			sSHL0 <= sFACT(31 downto 0);
		else 
			sSHL0 <= x"00000000";
		end if;
	end process;
	
	-- REG
	process (iCLK, sRST) begin
		if(sRST = '1') then
			sFACT <= x"00000001";
		elsif(rising_edge(iCLK)) then
			sFACT <= sPROD;
		end if;
	end process;
	
	-- sPROD
	sPROD <= sSHL3 + sSHL2 + sSHL1 + sSHL0;
		
	
	-- sRST
	sRST <= iLOAD or iRST;
	
	-- oDONE
	oDONE <= not(sCNT(3)) and not(sCNT(2)) and not(sCNT(1)) and sCNT(0);
	
	-- oFACT
	oFACT <= sFACT;

end Behavioral;

