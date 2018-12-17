----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:06 12/17/2018 
-- Design Name: 
-- Module Name:    z01 - Behavioral 
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

entity z01 is
    Port ( inSTOP : in  STD_LOGIC;
           inRL : in  STD_LOGIC;
           inRR : in  STD_LOGIC;
           inBLINK : in  STD_LOGIC;
           iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           oLED : out  STD_LOGIC_VECTOR (7 downto 0));
end z01;

architecture Behavioral of z01 is

	type tSTANJE is (IDLE, ROTATE_LEFT, ROTATE_RIGHT, BLINK);
	signal sSTANJE, sNEXT : tSTANJE;
	signal sLED,sPRIG : STD_LOGIC_VECTOR(7 downto 0);
	signal sCNT, sCNTN : STD_LOGIC_VECTOR(24 downto 0);
	signal sTC, sTCN : STD_LOGIC;
	
	component z02 is
		port( X : in std_logic_vector(7 downto 0);
				C : in std_logic;
				R : in std_logic;
				P : out std_logic_vector(7 downto 0));
	end component;

begin

	iPRIG : z02 port map(
		X => sLED,
		C => iCLK,
		R => inRST,
		P => sPRIG
	);

	-- COUNTER
	process(sCNT) begin
		if(sCNT = 24 - 1) then
			sCNTN <= "0000000000000000000000000";
			sTCN <= '1';
		else
			sCNTN <= sCNT + 1;
			sTCN <= '0';
		end if;
	end process;
	
	process(iCLK, inRST) begin
		if(inRST = '0') then
			sCNT <= "0000000000000000000000000";
			sTC <= '0';
		elsif(rising_edge(iCLK)) then
			sCNT <= sCNTN;
			sTC <= sTCN;
		end if;
	end process;

	-- PRELAZ
	process(sSTANJE, inSTOP, inRL, inRR, inBLINK) begin
		case(sSTANJE) is
			when IDLE =>
				if(inRL = '0' and inSTOP = '1') then
					sNEXT <= ROTATE_LEFT;
				elsif(inRR ='0' and inSTOP = '1') then
					sNEXT <= ROTATE_RIGHT;
				elsif(inBLINK = '0' and inSTOP = '1') then
					sNEXT <= BLINK;
				else
					sNEXT <= sSTANJE;
				end if;
			when ROTATE_LEFT =>
				if(inSTOP = '0') then
					sNEXT <= IDLE;
				else
					sNEXT <= sSTANJE;
				end if;
			when ROTATE_RIGHT =>
				if(inSTOP = '0') then
					sNEXT <= IDLE;
				else
					sNEXT <= sSTANJE;
				end if;
			when BLINK =>
				if(inSTOP = '0') then
					sNEXT <= IDLE;
				else
					sNEXT <= sSTANJE;
				end if;
			end case;
	end process;
	
	-- TRENUTNO STANJE
	process(iCLK, inRST) begin
		if(inRST = '0') then
			sSTANJE <= IDLE;
		elsif(rising_edge(iCLK)) then
			sSTANJE <= sNEXT;
		end if;
	end process;

	-- LED SHOW
	process(iCLK, inRST, sSTANJE, sTC) begin
		if(inRST = '0') then
			sLED <= x"01";
		elsif(rising_edge(iCLK)) then
			if(sTC = '1') then
				case(sSTANJE) is
					when IDLE =>
						sLED <= x"01";
					when ROTATE_LEFT =>
						sLED <= sLED(6 downto 0) & sLED(7);
					when ROTATE_RIGHT =>
						sLED <= sLED(0) & sLED(7 downto 1);
					when BLINK =>
						sLED <= not(sLED);
				end case;
			end if;
		end if;
	end process;

	

	oLED <= sPRIG;
	
	

end Behavioral;

