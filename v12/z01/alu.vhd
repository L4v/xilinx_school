----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:46:11 01/04/2019 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

entity alu is
    Port ( iA : in  STD_LOGIC_VECTOR (15 downto 0);
           iB : in  STD_LOGIC_VECTOR (15 downto 0);
           iSEL : in  STD_LOGIC_VECTOR (3 downto 0);
           oC : out  STD_LOGIC_VECTOR (15 downto 0);
           oZERO : out  STD_LOGIC;
           oSIGN : out  STD_LOGIC;
           oCARRY : out  STD_LOGIC);
end alu;

architecture Behavioral of alu is

	signal sADD : STD_LOGIC_VECTOR(16 downto 0);
	signal sALU : STD_LOGIC_VECTOR(16 downto 0);
	
begin

	with iSEL select sALU <=
		'0' & iA when x"0",
		'0' & iA + '0' & iB when x"1",
		'0' & iA - '0' & iB when x"2",
		('0' & iA) and ('0' & iB) when x"3",
		('0' & iA) or ('0' & iB) when x"4",
		'0' & not(iA) when x"5",
		'0' & iA + 1 when x"6",
		'0' & iA - 1 when x"7",
		iA(15 downto 0) & '0' when x"8",
		"00" & iA(15 downto 1) when x"9",
		'1' & (not(iA) + 1) when x"A",
		iA(15) & iA(15) & iA(14 downto 0) when x"B",
		'0'& x"0000" when others;

	oZERO <= '1' when sALU(15 downto 0) = x"0000" else '0';
	oCARRY <= sALU(16);
	oSIGN <= sALU(15);
	oC <= sALU(15 downto 0);

end Behavioral;

