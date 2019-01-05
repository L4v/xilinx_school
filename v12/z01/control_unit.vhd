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
           oREG_WE 	: out  STD_LOGIC_VECTOR (7 downto 0);
           oMUXA_SEL : out  STD_LOGIC_VECTOR (3 downto 0);
           oMUXB_SEL : out  STD_LOGIC_VECTOR (3 downto 0);
           oALU_SEL 	: out  STD_LOGIC_VECTOR (3 downto 0));
end control_unit;

architecture Behavioral of control_unit is
	type t_STATE is (S0, S1, S2, NOP);
	
	signal sSTATE, sNEXT : t_STATE;
	signal sCNT, sCNTN : std_logic_vector(3 downto 0);
	signal sTC, sTCN	 : std_logic;
	
begin

	process(iCLK, inRST) begin
		if(inRST <= '0') then
			sCNT <= x"0";
			sTC <= '0';
		elsif(rising_edge(iCLK)) then
			sCNT <= sCNTN;
			sTC <= sTCN;
		end if;
	end process;
	
	process(sCNT) begin
		if(sCNT = x"F") then
			sCNTN <= x"0";
			sTCN <= '1';
		else
			sCNTN <= sCNT + 1;
			sTCN <= '0';
		end if;
	end process;

	process(iCLK, inRST, sTC) begin
		if(inRST = '0') then
			sSTATE <= S0;
		elsif(rising_edge(iCLK)) then
			if(sTC <= '1') then
				sSTATE <= sNEXT;
			else
				sSTATE <= sSTATE;
			end if;
		end if;
	end process;

	process(sSTATE) begin
		case sSTATE is
			when S0 =>
				sNEXT <= S1;
			when S1 =>
				sNEXT <= S2;
			when S2 =>
				sNEXT <= NOP;
			when NOP =>
				sNEXT <= sSTATE;
		end case;
	end process;
	
	process(sSTATE) begin
	-- Pocetni zadatak: R1 <= R0 + 1; R2 <= R0 + R1; R3 <= R1 + R2
--		case sSTATE is
--			when S0 =>
--				oREG_WE <= x"02";
--				oMUXA_SEL <= x"0";
--				oMUXB_SEL <= x"0"; -- '-', nebitno
--				oALU_SEL <= x"6";
--			when S1 =>
--				oREG_WE <= x"04";
--				oMUXA_SEL <= x"0";
--				oMUXB_SEL <= x"1";
--				oALU_SEL <= x"1";
--			when S2 =>
--				oREG_WE <= x"08";
--				oMUXA_SEL <= x"1";
--				oMUXB_SEL <= x"2";
--				oALU_SEL <= x"1";
--			when NOP =>
--				oREG_WE <= x"00";
--				oMUXA_SEL <= x"0"; -- '-', nebitno
--				oMUXB_SEL <= x"0"; -- '-', nebitno
--				oALU_SEL <= x"F"; -- '-', nebitno
--		end case;
	-- "Slozeniji" zadatak: R0 <= iDATA(=8); R1 <= R0 - 1; R2 <= -R1;
		case sSTATE is
			when S0 =>
				oREG_WE <= x"01";
				oMUXA_SEL <= x"8";
				oMUXB_SEL <= x"0"; -- '-', nebitno
				oALU_SEL <= x"0";
			
			when S1 =>
				oREG_WE <= x"02";
				oMUXA_SEL <= x"0";
				oMUXB_SEL <= x"0"; -- '-', nebitno
				oALU_SEL <= x"7";
			
			when S2 =>
				oREG_WE <= x"04";
				oMUXA_SEL <= x"1";
				oMUXB_SEL <= x"0"; -- '-', nebitno
				oALU_SEL <= x"A";
			
			when NOP =>
				oREG_WE <= x"00";
				oMUXA_SEL <= x"0";
				oMUXB_SEL <= x"0"; -- '-', nebitno
				oALU_SEL <= x"F"; -- '-', nebitno
		end case;
	end process;

end Behavioral;

