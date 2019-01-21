----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:39:08 01/05/2019 
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

	signal sAUX : STD_LOGIC_VECTOR(16 downto 0);

begin

	with iSEL select sAUX <=
		('0' & iA) 								when x"0",
		('0' & iA) + ('0' & iB) 			when x"1",
		('0' & iA) + (not('0' & iB) + 1) when x"2", -- drugi komplement  (not('0' & iB) + 1)
		('0' & iA) and ('0' & iB) 			when x"3",
		('0' & iA) or ('0' & iB) 			when x"4",
		not('0' & iA) 							when x"5",
		('0' & iA) + 1 						when x"6",
		('0' & iA) + x"FFFF" 				when x"7", -- x"FFFF" je -1
		iA(15 downto 0) & '0' 				when x"8",
		iA(0) & '0' & iA(15 downto 1) 	when x"9",
		not('0' & iA) + 1 					when x"A",
		iA(0) & iA(15) & iA(15 downto 1) when x"B",
		'1' & x"FFFF" 									when others;-- vraca default
	
	oCARRY <= sAUX(16);
	oSIGN <= sAUX(15);
	oZERO <= '1' when sAUX(15 downto 0) = x"0000" else '0';
	oC <= sAUX(15 downto 0);

end Behavioral;

