----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:49 12/07/2018 
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
    Port ( iA : in  STD_LOGIC_VECTOR (7 downto 0);
           iB : in  STD_LOGIC_VECTOR (7 downto 0);
           iSEL : in  STD_LOGIC_VECTOR (7 downto 0);
           oY : out  STD_LOGIC_VECTOR (7 downto 0));
end z01;

architecture Behavioral of z01 is
	signal sMUX : STD_LOGIC_VECTOR(7 downto 0);
	signal sADD : STD_LOGIC_VECTOR(7 downto 0);
	signal sCOMP : STD_LOGIC_VECTOR(7 downto 0);
	signal sDEC : STD_LOGIC_VECTOR(7 downto 0);
	signal sSHFT : STD_LOGIC_VECTOR(7 downto 0);
	signal sFUN : STD_LOGIC_VECTOR(7 downto 0);
	signal sGUN : STD_LOGIC_VECTOR(7 downto 0);
	signal sDMX1 : STD_LOGIC_VECTOR(7 downto 0);
	signal sDMX2 : STD_LOGIC_VECTOR(7 downto 0);
	signal sPRI : STD_LOGIC_VECTOR(2 downto 0);
	signal sLESS : STD_LOGIC;
begin

	-- MUX
	with sPRI select sMUX <=
		sADD when "000",
		sCOMP when "001",
		sDEC when "010",
		sSHFT when "011",
		sFUN when "100",
		sGUN when "101",
		sDMX1 when "110",
		sDMX2 when others;
	
	-- ADD
	sADD <= iA + iB;
	
	-- COMPLEMENT
	sCOMP <= not(iA) + 1;
	
	-- DECODER
	with iA(2 downto 0) select sDEC <=
		"00000001" when "000",
		"00000010" when "001",
		"00000100" when "010",
		"00001000" when "011",
		"00010000" when "100",
		"00100000" when "101",
		"01000000" when "110",
		"10000000" when others;
		
	-- SHIFTER
	sSHFT <= iA(7) & iA(6) & iA(5) & iA(4) & iA(3 downto 0);
	
	-- F(X)
	sFUN <= sCOMP + sCOMP + sCOMP;
	
	-- G(X)
	sGUN <="0000" & iA(3 downto 0) + 5 when iA <= 10 else
				"0000" & iA(3 downto 0) - 11;
				
	-- DEMUX
	with sLESS select sDMX1 <=
		iA when '1',
		x"00" when others;
		
	with sLESS select sDMX2 <=
		iA when '0',
		x"00" when others;
		
	-- sLESS
	sLESS <= '1' when iA < iB else
			'0';
		
	-- PRIORITY ENCODER
	sPRI<=
			"111" when iSEL(7) = '1' else
			"110" when iSEL(6) = '1' else
			"101" when iSEL(5) = '1' else
			"100" when iSEL(4) = '1' else
			"011" when iSEL(3) = '1' else
			"010" when iSEL(2) = '1' else
			"001" when iSEL(1) = '1' else
			"000";
		

end Behavioral;

