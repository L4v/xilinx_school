----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:37:09 12/06/2018 
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
           iD : in  STD_LOGIC;
           oPARITY_OK : out  STD_LOGIC;
           oDATA : out  STD_LOGIC_VECTOR (7 downto 0));
end z01;

architecture Behavioral of z01 is
	
	signal sTC : STD_LOGIC;
	signal sDATA : STD_LOGIC_VECTOR(8 downto 0);
	signal sTCN : STD_LOGIC;
	signal sCNT : STD_LOGIC_VECTOR (4 downto 0);
	signal sCNTN : STD_LOGIC_VECTOR(4 downto 0);
	signal sPAR : STD_LOGIC;
	signal sREG : STD_LOGIC_VECTOR(7 downto 0);
	
begin

	-- CNT
	process(iCLK, inRST) begin
		if(inRST = '0') then
			sCNT <= "00000";
			sTC <= '0';
		elsif(rising_edge(iCLK))then
			sCNT <= sCNTN;
			sTC <= sTCN;
		end if;
	end process;
	
	-- CNTN OVO JE SA BAFEROVANJEM (???)
	process (sCNT) begin
		if(sCNT = 8)then
			sCNTN <= "00000";
			sTCN <= '1';
		else
			sCNTN <= sCNT + 1;
			sTCN <= '0';
		end if;
	end process;

	-- SHFT_REG
	process (iCLK, inRST) begin
		if(inRST = '0') then
			sDATA <= "000000000";
		elsif(rising_edge(iCLK))then
			sDATA <= iD & sDATA(8 downto 1);
		end if;
	end process;
	
	-- PARITY REG
	process (iCLK, inRST) begin
		if(inRST  = '0') then
			sPAR <= '0';
		elsif (rising_edge(iCLK)) then
			if(sTC = '1') then
				sPAR <= sDATA(8) xor sDATA(7) xor sDATA(6) xor sDATA(5) xor sDATA(4) xor sDATA(3) xor sDATA(2) xor sDATA(1) xor sDATA(0);
			end if;
		end if;
	end process;
	
	-- REG
	process (iCLK, inRST) begin
		if(inRST = '0') then
			sREG <= x"00";
		elsif(rising_edge(iCLK))then
			if(sTC = '1') then
				sREG <= sDATA(7 downto 0);
			else
				sREG <= sREG;
			end if;
		end if;
	end process;
	
	oPARITY_OK <= not(sPAR);
	oDATA <= sREG;

end Behavioral;

