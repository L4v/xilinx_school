----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jovan Ivosevic RA30/17
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
			  iINSTR : in std_logic_vector(14 downto 0);
			  oPC : out std_logic_vector(15 downto 0);
			  oADDR : out std_logic_vector(15 downto 0);
			  oMEM_WE : out std_logic;
           oDATA : out  STD_LOGIC_VECTOR (15 downto 0));
end cpu_top;

architecture Behavioral of cpu_top is

	type NIZ is array (0 to 7) of std_logic_vector(15 downto 0);
	
	signal sR : NIZ;
	signal sRESULT, sMUXA, sMUXB, sPC, sPC_IN : std_logic_vector(15 downto 0);
	signal sREG_WE : std_logic_vector(7 downto 0);
	signal sMUXA_SEL, sMUXB_SEL, sALU_SEL : std_logic_vector(3 downto 0);
	signal sZERO, sSIGN, sCARRY, sMEM_WE, sPC_WE, sPC_LOAD, sPC_EN : std_logic;
	
	-- KOMPONENTE:
	
	-- PROGRAMSKI BROJAC
	component cnt
		port(iCLK, inRST, iEN, iLOAD : in std_logic;
			  iD							  : in std_logic_vector(15 downto 0);
			  oQ 							  : out std_logic_vector(15 downto 0));
	end component;
	
	-- REGISTAR
	component reg
		port(iCLK, inRST, iWE : in std_logic;
			  iD 			 	 	 : in std_logic_vector(15 downto 0);
			  oQ				 	 : out std_logic_vector(15 downto 0));
	end component;
	
	-- MULTIPLEKSER
	component mux
		port(iD0, iD1, iD2, iD3, iD4, iD5, iD6, iD7, iD8 : in std_logic_vector(15 downto 0);
			  iSEL											 : in std_logic_vector(3 downto 0);
			  oQ											 	 : out std_logic_vector(15 downto 0));
	end component;
	
	-- ARITMETICKO LOGICKA JEDINICA
	component alu
		port(iA, iB  				  : in std_logic_vector(15 downto 0);
			  iSEL 				  	  : in std_logic_vector(3 downto 0);
			  oC    				  	  : out std_logic_vector(15 downto 0);
			  oZERO, oSIGN, oCARRY : out std_Logic);
	end component;

	-- KONTROLNA JEDINICA
	component control_unit
		port(iCLK 		: in  STD_LOGIC;
           inRST 		: in  STD_LOGIC;
           iZERO 		: in  STD_LOGIC;
           iSIGN 		: in  STD_LOGIC;
           iCARRY 	: in  STD_LOGIC;
			  iINSTR		: in STD_LOGIC_VECTOR(14 downto 0);
			  oPC_EN 	: out std_logic;
			  oPC_LOAD	: out std_logic;
			  oPC_IN 	: out std_logic_vector(15 downto 0);
			  oMEM_WE	: out std_logic;
           oREG_WE 	: out  STD_LOGIC_VECTOR (7 downto 0);
           oMUXA_SEL : out  STD_LOGIC_VECTOR (3 downto 0);
           oMUXB_SEL : out  STD_LOGIC_VECTOR (3 downto 0);
           oALU_SEL 	: out  STD_LOGIC_VECTOR (3 downto 0));
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

	-- KONTROLNA JEDINICA
	C_UNIT : control_unit port map(iCLK, inRST,sZERO, sSIGN, sCARRY, iINSTR, sPC_EN, sPC_LOAD, sPC_IN, sMEM_WE,
							sREG_WE, sMUXA_SEL, sMUXB_SEL, sALU_SEL);
												
	P_CNT : cnt port map(iCLK, inRST, sPC_EN, sPC_LOAD, sPC_IN, sPC);
	
	oPC <= sPC;
	oMEM_WE <= sMEM_WE;
	oADDR <= sMUXB;
	oDATA <= sRESULT;
	
end Behavioral;

