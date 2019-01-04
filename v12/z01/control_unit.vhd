----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:53:42 01/04/2019 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_unit is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iZERO : in  STD_LOGIC;
           iSIGN : in  STD_LOGIC;
           iCARRY : in  STD_LOGIC;
           oREG_WE : out  STD_LOGIC_VECTOR (7 downto 0);
           oMUXA_SEL : out  STD_LOGIC_VECTOR (3 downto 0);
           oMUXB_SEL : out  STD_LOGIC_VECTOR (3 downto 0);
           oALU_SEL : out  STD_LOGIC_VECTOR (3 downto 0));
end control_unit;

architecture Behavioral of control_unit is
	
	type tSTATE is (S0, S1, S2, NOP);
	
	signal sSTATE, sNEXT : tSTATE;

begin

	-- Promena stanja
	process(iCLK, inRST) begin
		if(inRST = '0') then
			sSTATE <= S0;
		elsif(rising_edge(iCLK)) then
			sSTATE <= sNEXT;
		end if;
	end process;
	
	-- Sledece stanje
	process(sSTATE) begin
		case(sSTATE) is
			when S0 =>
				oREG_WE <= x"02";
				oMUXA_SEL <= x"0";
				oMUXB_SEL <= x"0"; -- nebitno
				oALU_SEL <= x"6";
				sNEXT <= S1;
			when S1 =>
				oREG_WE <= x"04";
				oMUXA_SEL <= x"0";
				oMUXB_SEL <= x"1"; -- nebitno
				oALU_SEL <= x"1";
				sNEXT <= S2;
			when S2 =>
				oREG_WE <= x"08";
				oMUXA_SEL <= x"1";
				oMUXB_SEL <= x"2"; -- nebitno
				oALU_SEL <= x"1";
				sNEXT <= NOP;
			when NOP =>
				oREG_WE <= x"00";
				oMUXA_SEL <= x"0";
				oMUXB_SEL <= x"0";
				oALU_SEL <= x"F";
				
	end process;

end Behavioral;

