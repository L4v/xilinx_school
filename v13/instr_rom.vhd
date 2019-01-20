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
		"000110100100000" when "00000", -- R4 <- R4 + 1
		"000110100100000" when "00001", -- R4 <- R4 + 1
		"000110100100000" when "00010", -- R4 <- R4 + 1
		"000110100100000" when "00011", -- R4 <- R4 + 1
		"110000000100111" when "00100", -- STORE R4 u 0x0000
		"100000011000111" when "00101", -- R3 <- 4
		"000110011001000" when "00110", -- R3 <- R3 + 1
		"000010111001011" when "00111", -- R7(nebitno) <-- R1 - R3 -- 00010
		"010001000011111" when "01000", -- jmpz NOP
		"000000000001000" when "01001", -- R0 <- R1
		"000110010010000" when "01010", -- R2 <- R2 + 1
		"000000000000000" when "01011", -- R0 == 0? R0 <- R0 -- 00110
		"010001000010000" when "01100", -- jmpz 01011+
		"001000010010000" when "01101", -- R2 <- shl(R2)
		"000111000000000" when "01110", -- R0 <- R0 - 1
		"010000000001011" when "01111", -- jmp 00110+
		"000110001001000" when "10000", -- R1 <- R1 + 1 -- 01011
		"010000000000111" when "10001", -- jmp 00010+
		"111111111111111" when others;
		
	oQ <= sROM;

end Behavioral;

