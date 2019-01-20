----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:47:08 01/11/2019 
-- Design Name: 
-- Module Name:    instr_rom - Behavioral 
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

entity instr_rom is
    Port ( iA : in  STD_LOGIC_VECTOR (4 downto 0);
           oQ : out  STD_LOGIC_VECTOR (14 downto 0));
end instr_rom;

architecture Behavioral of instr_rom is
	
	signal sROM : sTd_LoGiC_vEcToR(14 downto 0);

begin
		
	with iA select sROM <=
		"100000011000000" when "00000", -- R3 <- 4
		"000110011011000" when "00001", -- R3 <- R3 + 1
		"000010111011001" when "00010", -- R7(nebitno) <-- R1 - R3
		"010001000011111" when "00011", -- jmpz NOP
		"000000001000000" when "00100", -- R0 <- R1
		"000110010010000" when "00101", -- R2 <- R2 + 1
		"000000000000000" when "00110", -- R0 == 0? R0 <- R0
		"010001000001011" when "00111", -- jmpz 01011
		"001000010000010" when "01000", -- R2 <- shl(R2)
		"000111000000000" when "01001", -- R0 <- R0 - 1
		"010000000000110" when "01010", -- jmp 00110
		"000110001000001" when "01011", -- R1 <- R1 + 1
		"000000000000010" when "01100", -- jmp 00010
		"111111111111111" when others;
		
	oQ <= sROM;

end Behavioral;

