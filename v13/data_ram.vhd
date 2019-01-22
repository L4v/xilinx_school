----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:56:10 01/11/2019 
-- Design Name: 
-- Module Name:    data_ram - Behavioral 
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
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_ram is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iA : in  STD_LOGIC_VECTOR (4 downto 0);
           iD : in  STD_LOGIC_VECTOR (15 downto 0);
           iWE : in  STD_LOGIC;
           oQ : out  STD_LOGIC_VECTOR (15 downto 0));
end data_ram;

architecture Behavioral of data_ram is
	type NIZ is array (0 to 31) of std_logic_vector(15 downto 0);
	
	signal sR : NIZ := ((others => (others=>'0')));
	signal sRAM : std_logic_vector(15 downto 0);
	signal index : std_logic_vector(4 downto 0);

begin

	process(iCLK) begin
		if(falling_edge(iCLK)) then		
			if(inRST = '0') then
				for i in 0 to 31 loop
					sR(i) <= x"0000";
				end loop;
			else
				if (iWE = '1') then
					sR(to_integer(unsigned(iA))) <= iD;
				else
					sRAM <= sR(to_integer(unsigned(iA)));
				end if;
			end if;
		end if;
	end process;

	oQ <= sRAM;

end Behavioral;

