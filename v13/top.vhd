----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:24:01 01/20/2019 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC);
end top;

architecture Behavioral of top is

	signal sDATA_ST  : std_logic_vector(15 downto 0);
	signal sDATA_LD  : std_logic_vector(15 downto 0);
	signal sADDR     : std_logic_vector(15 downto 0);
	signal sPC       : std_logic_vector(15 downto 0);
	signal sMEM_WE   : std_logic;
	signal sINSTR    : std_logic_vector(14 downto 0);

	-- CPU TOP
	component cpu_top is
		port(iCLK    : in  STD_LOGIC;
           inRST   : in  STD_LOGIC;
           iDATA   : in  STD_LOGIC_VECTOR (15 downto 0);
			  iINSTR  : in std_logic_vector(14 downto 0);
			  oPC     : out std_logic_vector(15 downto 0);
			  oADDR   : out std_logic_vector(15 downto 0);
			  oMEM_WE : out std_logic;
           oDATA   : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	-- RAM
	component data_ram is
		port(iCLK  : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iA    : in  STD_LOGIC_VECTOR (4 downto 0);
           iD    : in  STD_LOGIC_VECTOR (15 downto 0);
           iWE   : in  STD_LOGIC;
           oQ    : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	-- INSTRUCTION ROM
	component instr_rom is
		port(iA : in  STD_LOGIC_VECTOR (4 downto 0);
           oQ : out  STD_LOGIC_VECTOR (14 downto 0));
	end component;

begin

	CPU : cpu_top port map(iCLK, inRST, sDATA_LD, sINSTR, sPC, sADDR, sMEM_WE, sDATA_ST);
	
	RAM : data_ram port map(iCLK, inRST, sADDR(4 downto 0), sDATA_ST, sMEM_WE, sDATA_LD);
	
	ROM : instr_rom port map(sPC(4 downto 0), sINSTR(14 downto 0));

end Behavioral;

