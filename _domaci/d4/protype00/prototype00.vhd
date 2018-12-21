----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:35:28 12/20/2018 
-- Design Name: 
-- Module Name:    prototype00 - Behavioral 
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

entity prototype00 is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           inOK : in  STD_LOGIC;
           inHAZ : in  STD_LOGIC;
           oRED : out  STD_LOGIC_VECTOR (1 downto 0);
           oYELLOW : out  STD_LOGIC_VECTOR (1 downto 0);
           oGREEN : out  STD_LOGIC_VECTOR (1 downto 0));
end prototype00;

architecture Behavioral of prototype00 is

	type tSTATE is (IDLE, RED, RED_YELLOW, GREEN, YELLOW, HAZARD, BHAZ);
	signal sSTATE, sNEXT : tSTATE;
	signal sSEM : STD_LOGIC_VECTOR(5 downto 0);
	signal sCNT, sCNTN : STD_LOGIC_VECTOR(23 downto 0);
	signal sTC, sTCN : STD_LOGIC;
	
begin

	-- COUNTER
	process (iCLK, inRST) begin
		if(inRST = '0') then
			sCNT <= "000000000000000000000000";--000000000000000000000000
			sTC <= '0';
		elsif(rising_edge(iCLK)) then
			sCNT <= sCNTN;
			sTC <= sTCN;
		end if;
	end process;
	
	sCNTN <= "000000000000000000000000" when sCNT = 12000000 - 1 else
				sCNT + 1;
	sTCN <= '1' when sCNT = 12000000 - 1 else '0';
	
	-- STATE
	process (iCLK, inRST, sTC) begin
		if(inRST = '0') then
			sSTATE <= IDLE;
		elsif(rising_edge(iCLK)) then
			if(sTC = '1') then
				sSTATE <= sNEXT;
			else
				sSTATE <= sSTATE;
			end if;
		end if;
	end process;

	-- PROMENA STANJA
	process (sSTATE, inOK, inHAZ, sTC) begin
		if(inHAZ = '0') then
			if(inOK = '0') then
				sNEXT <= RED;
			else
				if(sSTATE = BHAZ) then
					sNEXT <= HAZARD;
				else
					sNEXT <= BHAZ;
				end if;
			end if;
		else
			case(sSTATE) is
				when IDLE =>
					if(inOK = '0') then
						sNEXT <= RED;
					else
						sNEXT <= sSTATE;
					end if;
				when RED =>
					sNEXT <= RED_YELLOW;
				when RED_YELLOW =>
					sNEXT <= GREEN;
				when GREEN =>
					sNEXT <= YELLOW;
				when YELLOW =>
					sNEXT <= RED;
				when HAZARD =>
					if(inOK = '0') then
						sNEXT <= RED;
					else
						if(sTC = '1') then
							sNEXT <= BHAZ;
						else
							sNEXT <= sSTATE;
						end if;
					end if;
				when BHAZ =>
					if(inOK = '0') then
						sNEXT <= RED;
					else
						if(sTC = '1') then
							sNEXT <= HAZARD;
						else
							sNEXT <= sSTATE;
						end if;
					end if;
				end case;
			end if;
	end process;
	
	-- SEMAFOR
	process(sSTATE) begin
		if(sSTATE = IDLE) then
			sSEM <= "000000";
		elsif(sSTATE = RED) then
			sSEM <= "110000";
		elsif(sSTATE = RED_YELLOW) then
			sSEM <= "111100";
		elsif(sSTATE = GREEN) then
			sSEM <= "000011";
		elsif(sSTATE = YELLOW) then
			sSEM <= "001100";
		elsif(sSTATE = HAZARD) then
			sSEM <= "001100";
		else
			sSEM <= "000000";
		end if;
	end process;
	
	oRED <= sSEM(5 downto 4);
	oYELLOW <= sSEM(3 downto 2);
	oGREEN <= sSEM(1 downto 0);
	
end Behavioral;

