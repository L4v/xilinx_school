----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:04 01/05/2019 
-- Design Name: 
-- Module Name:    control_unit - Behavioral 
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

entity control_unit is
    Port ( iCLK		: in  STD_LOGIC;
           inRST		: in  STD_LOGIC;
           iZERO		: in  STD_LOGIC;
           iSIGN		: in  STD_LOGIC;
           iCARRY 	: in  STD_LOGIC;
			  iINSTR		: in STD_LOGIC_VECTOR(14 downto 0);
			  oPC_EN		: out std_logic;
			  oPC_LOAD	: out std_logic;
			  oPC_IN		: out std_logic_vector(15 downto 0);
			  oMEM_WE 	: out std_logic;
           oREG_WE 	: out  STD_LOGIC_VECTOR (7 downto 0);
           oMUXA_SEL : out  STD_LOGIC_VECTOR (3 downto 0);
           oMUXB_SEL : out  STD_LOGIC_VECTOR (3 downto 0);
           oALU_SEL 	: out  STD_LOGIC_VECTOR (3 downto 0));
end control_unit;

architecture Behavioral of control_unit is
--	type t_STATE is (S0, S1, S2, NOP);
--	
--	signal sSTATE, sNEXT : t_STATE;
--	signal sCNT, sCNTN : std_logic_vector(3 downto 0);
--	signal sTC, sTCN	 : std_logic;
	signal sCU : std_logic_vector(14 downto 0);
	signal sREGZ, sREGX, sREGY : std_logic_vector(7 downto 0);
	
begin
	process(iCLK, inRST) begin
		if(inRST = '0') then
			sCU <= "000000000000000";
		elsif(rising_edge(iCLK)) then
			sCU <= iINSTR;
		end if;
	end process;
	
	with sCU(8 downto 6) select sREGZ <=
		x"0001" when "000",
		x"0002" when "001",
		x"0004" when "010",
		x"0008" when "011",
		x"0010" when "100",
		x"0020" when "101",
		x"0040" when "110",
		x"0080" when others;
		
	with sCU(5 downto 3) select sREGX <=
		x"0001" when "000",
		x"0002" when "001",
		x"0004" when "010",
		x"0008" when "011",
		x"0010" when "100",
		x"0020" when "101",
		x"0040" when "110",
		x"0080" when others;
		
	with sCU(2 downto 0) select sREGY <=
		x"0001" when "000",
		x"0002" when "001",
		x"0004" when "010",
		x"0008" when "011",
		x"0010" when "100",
		x"0020" when "101",
		x"0040" when "110",
		x"0080" when others;
--
--	process(sSTATE) begin
--		case sSTATE is
--			when S0 =>
--				sNEXT <= S1;
--			when S1 =>
--				sNEXT <= S2;
--			when S2 =>
--				sNEXT <= NOP;
--			when NOP =>
--				sNEXT <= sSTATE;
--		end case;
--	end process;
--	
--	process(sSTATE) begin
--	-- Pocetni zadatak: R1 <= R0 + 1; R2 <= R0 + R1; R3 <= R1 + R2
----		case sSTATE is
----			when S0 =>
----				oREG_WE <= x"02";
----				oMUXA_SEL <= x"0";
----				oMUXB_SEL <= x"0"; -- '-', nebitno
----				oALU_SEL <= x"6";
----			when S1 =>
----				oREG_WE <= x"04";
----				oMUXA_SEL <= x"0";
----				oMUXB_SEL <= x"1";
----				oALU_SEL <= x"1";
----			when S2 =>
----				oREG_WE <= x"08";
----				oMUXA_SEL <= x"1";
----				oMUXB_SEL <= x"2";
----				oALU_SEL <= x"1";
----			when NOP =>
----				oREG_WE <= x"00";
----				oMUXA_SEL <= x"0"; -- '-', nebitno
----				oMUXB_SEL <= x"0"; -- '-', nebitno
----				oALU_SEL <= x"F"; -- '-', nebitno
----		end case;
----	 "Slozeniji" zadatak: R0 <= iDATA(=8); R1 <= R0 - 1; R2 <= -R1;
--		case sSTATE is
--			when S0 =>
--				oREG_WE <= x"01";
--				oMUXA_SEL <= x"8";
--				oMUXB_SEL <= x"0"; -- '-', nebitno
--				oALU_SEL <= x"0";
--			
--			when S1 =>
--				oREG_WE <= x"02";
--				oMUXA_SEL <= x"0";
--				oMUXB_SEL <= x"0"; -- '-', nebitno
--				oALU_SEL <= x"7";
--			
--			when S2 =>
--				oREG_WE <= x"04";
--				oMUXA_SEL <= x"1";
--				oMUXB_SEL <= x"0"; -- '-', nebitno
--				oALU_SEL <= x"A";
--			
--			when NOP =>
--				oREG_WE <= x"00";
--				oMUXA_SEL <= x"0";
--				oMUXB_SEL <= x"0"; -- '-', nebitno
--				oALU_SEL <= x"F"; -- '-', nebitno
--		end case;
--	end process;

	process(sCU) begin
		case sCU(14 downto 9) is
			when "000000" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto  3);
				oMUXB_SEL <= "000"; -- "-"
				oALU_SEL <= x"0";
			when "000001" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= sCU(2 downto 0);
				oALU_SEL <= x"1";
			when "000010" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= sCU(2 downto 0);
				oALU_SEL <= x"2";
			when "000011" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= sCU(2 downto 0);
				oALU_SEL <= x"3";
			when "000100" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= sCU(2 downto 0);
				oALU_SEL <= x"4";
			when "000101" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= "000"; -- "-"
				oALU_SEL <= x"5";
			when "000110" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= "000";
				oALU_SEL <= x"6";
			when "000111" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= "000";
				oALU_SEL <= x"7";
			when "001000" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= "000";
				oALU_SEL <= x"8";
			when "001001" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= "000";
				oALU_SEL <= x"9";
			when "001010" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= "000";
				oALU_SEL <= x"A";
			when "001011" =>
				oREGWE <= sREGZ;
				oMUXA_SEL <= sCU(5 downto 3);
				oMUXB_SEL <= "000";
				oALU_SEL <= x"B";
			when others =>
				oREGWE <= x"0000";
				oMUXA_SEL <= "000";
				oMUXB_SEL <= "000";
				oALU_SEL <= x"F";
			end case;
	end process;

end Behavioral;

