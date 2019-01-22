----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:08:11 01/21/2019 
-- Design Name: 
-- Module Name:    shft_test - Behavioral 
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

entity shft_test is
    Port ( iA : in  STD_LOGIC_VECTOR (15 downto 0);
			  iSEL : in std_logic_vector(1 downto 0);
           oY : out  STD_LOGIC_VECTOR (15 downto 0);
           oSIGN : out  STD_LOGIC;
           oCARRY : out  STD_LOGIC);
end shft_test;

architecture Behavioral of shft_test is

	signal sOUT : std_logic_vector(16 downto 0);

begin

with iSEL select sOUT <=
	iA(14) & iA(15) & iA(13 downto 0) & '0' when "00",
	iA(0) & iA(15) & iA(15 downto 1) when others;

oY <= sOUT(15 downto 0);
oSIGN <= sOUT(15);
oCARRY <= sOUT(16);

end Behavioral;

