----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:42 01/05/2019 
-- Design Name: 
-- Module Name:    cpu_top - Behavioral 
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

entity cpu_top is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iDATA : in  STD_LOGIC_VECTOR (15 downto 0);
           oDATA : out  STD_LOGIC_VECTOR (15 downto 0));
end cpu_top;

architecture Behavioral of cpu_top is

	type NIZ is array (0 to 7) of std_logic_vector(15 downto 0);
	
	signal sR : NIZ;
	signal sRESULT, sMUXA, sMUXB : std_logic_vector(15 downto 0);
	signal sREG_WE : std_logic_vector(7 downto 0);
	signal sMUXA_SEL, sMUXB_SEL, sALU_SEL : std_logic_vector(3 downto 0);
	signal sZERO, sSIGN, sCARRY : std_logic;
	
	component reg
		port(iCLK, inRST, iWE : in std_logic;
			  iD 			 	 	 : in std_logic_vector(15 downto 0);
			  oQ				 	 : out std_logic_vector(15 downto 0));
	end component;
	
	component mux
		port(iD0, iD1, iD2, iD3, iD4, iD5, iD6, iD7, iD8 : in std_logic_vector(15 downto 0);
			  iSEL											 : in std_logic_vector(3 downto 0);
			  oQ											 	 : out std_logic_vector(15 downto 0));
	end component;
	
	component alu
		port(iA, iB  				  : in std_logic_vector(15 downto 0);
			  iSEL 				  	  : in std_logic_vector(3 downto 0);
			  oC    				  	  : out std_logic_vector(15 downto 0);
			  oZERO, oSIGN, oCARRY : out std_Logic);
	end component;

begin

	-- REGISTRI R0 - R7
	REGISTRI: -- labela
		for i in 0 to 7 generate
			REG_I : reg port map(iCLK, inRST, sREG_WE(i), sRESULT, sR(i));
		end generate REGISTRI; -- kraj labele

	-- MULTIPLEXERI:
	-- MULTIPLEXER A
	MUXA : mux port map(sR(0), sR(1), sR(2), sR(3), sR(4), sR(5), sR(6), sR(7), iDATA,
								sMUXA_SEL, sMUXA);
	-- MULTIPLEXER B					
	MUXB : mux port map(sR(0), sR(1), sR(2), sR(3), sR(4), sR(5), sR(6), sR(7), iDATA,
								sMUXB_SEL, sMUXB);
	
	-- ARITMETICKO LOGICKA JEDINICA
	ALU_I : alu port map(sMUXA, sMUXB, sALU_SEL, sRESULT, sZERO, sSIGN, sCARRY);

end Behavioral;

