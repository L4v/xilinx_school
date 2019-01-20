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
	signal sADD : std_logic_vector(15 downto 0);
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
		x"01" when "000",
		x"02" when "001",
		x"04" when "010",
		x"08" when "011",
		x"10" when "100",
		x"20" when "101",
		x"40" when "110",
		x"80" when others;
		
	with sCU(5 downto 3) select sREGX <=
		x"01" when "000",
		x"02" when "001",
		x"04" when "010",
		x"08" when "011",
		x"10" when "100",
		x"20" when "101",
		x"40" when "110",
		x"80" when others;
		
	with sCU(2 downto 0) select sREGY <=
		x"01" when "000",
		x"02" when "001",
		x"04" when "010",
		x"08" when "011",
		x"10" when "100",
		x"20" when "101",
		x"40" when "110",
		x"80" when others;
		
	with sCU(8 downto 0) select sADD <=
		x"0000" when "000000000",
		x"0001" when "000000001",
		x"0002" when "000000010",
		x"0003" when "000000011",
		x"0004" when "000000100",
		x"0005" when "000000101",
		x"0006" when "000000110",
		x"0007" when "000000111",
		x"0008" when "000001000",
		x"0009" when "000001001",
		x"000A" when "000001010",
		x"000B" when "000001011",
		x"000C" when "000001100",
		x"000D" when "000001101",
		x"000E" when "000001110",
		x"000F" when "000001111",
		x"0010" when "000010000",
		x"0011" when "000010001",
		x"0012" when "000010010",
		x"0013" when "000010011",
		x"0014" when "000010100",
		x"0015" when "000010101",
		x"0016" when "000010110",
		x"0017" when "000010111",
		x"0018" when "000011000",
		x"0019" when "000011001",
		x"001A" when "000011010",
		x"001B" when "000011011",
		x"001C" when "000011100",
		x"001D" when "000011101",
		x"001E" when "000011110",
		x"001F" when others;
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

	process(sCU, sREGZ, sADD) begin
		case sCU(14 downto 9) is
			when "000000" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto  3);
				oMUXB_SEL <= "0000"; -- "-"
				oALU_SEL <= x"0";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "000001" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= '0' & sCU(2 downto 0);
				oALU_SEL <= x"1";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "000010" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= '0' & sCU(2 downto 0);
				oALU_SEL <= x"2";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "000011" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= '0' & sCU(2 downto 0);
				oALU_SEL <= x"3";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "000100" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= '0' & sCU(2 downto 0);
				oALU_SEL <= x"4";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "000101" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= "0000"; -- "-"
				oALU_SEL <= x"5";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "000110" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"6";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "000111" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"7";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "001000" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"8";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "001001" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"9";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "001010" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"A";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "001011" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"B";
				oPC_EN <= '0';
				oPC_LOAD <= '0';
				oPC_IN <= x"0000";
				oMEM_WE <= '0';
			when "010000" =>
				oREG_WE <= x"00";
				oMUXA_SEL <= "0000";
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"F";
				oPC_EN <= '1';
				oPC_LOAD <= '1';
				oPC_IN <= sADD;
				oMEM_WE <= '0';
			when "010001" =>
				oREG_WE <= x"00";
				oMUXA_SEL <= "0000";
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"F";
				oPC_EN <= '1';
				if (iZERO = '1') then
					oPC_LOAD <= '1';
				else
					oPC_LOAD <= '0';
				end if;
				oPC_IN <= sADD;
				oMEM_WE <= '0';
			when "010010" =>
				oREG_WE <= x"00";
				oMUXA_SEL <= "0000";
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"F";
				oPC_EN <= '1';
				if (iSIGN = '1') then
					oPC_LOAD <= '1';
				else
					oPC_LOAD <= '0';
				end if;
				oPC_IN <= sADD;
				oMEM_WE <= '0';
			when "010011" =>
				oREG_WE <= x"00";
				oMUXA_SEL <= "0000";
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"F";
				oPC_EN <= '1';
				if (iCARRY = '1') then
					oPC_LOAD <= '1';
				else
					oPC_LOAD <= '0';
				end if;
				oPC_IN <= sADD;
				oMEM_WE <= '0';
			when "010101" =>
				oREG_WE <= x"00";
				oMUXA_SEL <= "0000";
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"F";
				oPC_EN <= '1';
				if (iZERO = '0') then
					oPC_LOAD <= '1';
				else
					oPC_LOAD <= '0';
				end if;
				oPC_IN <= sADD;
				oMEM_WE <= '0';
			when "010110" =>
				oREG_WE <= x"00";
				oMUXA_SEL <= "0000";
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"F";
				oPC_EN <= '1';
				if (iSIGN = '0') then
					oPC_LOAD <= '1';
				else
					oPC_LOAD <= '0';
				end if;
				oPC_IN <= sADD;
				oMEM_WE <= '0';
			when "010111" =>
				oREG_WE <= x"00";
				oMUXA_SEL <= "0000";
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"F";
				oPC_EN <= '1';
				if (iCARRY = '0') then
					oPC_LOAD <= '1';
				else
					oPC_LOAD <= '0';
				end if;
				oPC_IN <= sADD;
				oMEM_WE <= '0';
			when "100000" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= "1000";
				oMUXB_SEL <= '0' & sCU(2 downto 0);
				oALU_SEL <= x"0";
				oPC_EN <= '1';
				oPC_LOAD <= '0';
				oPC_IN <= sADD;
				oMEM_WE <= '0';
			when "110000" =>
				oREG_WE <= sREGZ;
				oMUXA_SEL <= '0' & sCU(5 downto 3);
				oMUXB_SEL <= '0' & sCU(2 downto 0);
				oALU_SEL <= x"0";
				oPC_EN <= '1';
				oPC_LOAD <= '0';
				oPC_IN <= sADD;
				oMEM_WE <= '1';
			when others =>
				oREG_WE <= x"00";
				oMUXA_SEL <= "0000";
				oMUXB_SEL <= "0000";
				oALU_SEL <= x"F";
				oPC_EN <= '1';
				oPC_LOAD <= '0';
				oPC_IN <= sADD;
				oMEM_WE <= '0';
			end case;
	end process;
end Behavioral;

