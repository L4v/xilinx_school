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
		
	with iA select oQ <=
		"000110100100000" when "00000", -- R4 <- R4 + 1 R4 = 1
		"001000100100000" when "00001", -- R4 <- shl(R4) R4 = 2
		"001000100100000" when "00010", -- R4 <- shl(R4) R4 = 4
		"110000000100111" when "00011", -- st R7, R4 cuva R4 na 0x0000 adresu
		"100000011000111" when "00100", -- ld R3, R7 ucitava u R3 sa 0x0000 adrese
		--"000110011011000" when "00101", -- R3 <- R3 + 1
		"000010111011010" when "00101", -- R7(nebitno) <- R3 - R2, za proveru da li je 0
		"010001000011110" when "00110", -- jmpz 11111 (NOP)
		"000110001001000" when "00111", -- R1 <- R1 + 1, tu ce biti rezultat
		"000000000010000" when "01000", -- R0 <- R2, za brojanje mnozenja sa 2
		"000110010010000" when "01001", -- R2 <- R2 + 1
		"000000000000000" when "01010", -- R0 <- R0, za proveru = 0
		"010001000000101" when "01011", -- jmpz 00110+
		"001000001001000" when "01100", -- R1 <- shl(R1), mnozenje sa 2
		"000111000000000" when "01101", -- R0 <- R0 - 1, smanjujemo brojac
		"010000000001010" when "01110", -- jmp 01011+
		"111111111111111" when others; -- R6 <- R6, NOP
		
	--oQ <= sROM;

end Behavioral;

