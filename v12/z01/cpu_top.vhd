----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:12:27 01/04/2019 
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
	
	type NIZ is array (0 to 7) of STD_LOGIC_VECTOR(15 downto 0);
	signal sR : NIZ;
	signal sREG_WE : STD_LOGIC_VECTOR(7 downto 0);
	signal sMUXA_SEL, sMUXB_SEL, sALU_SEL : STD_LOGIC_VECTOR(3 downto 0);
	signal sZERO, sCARRY, sSIGN : STD_LOGIC;
	signal sRESULT, sMUXA, sMUXB : STD_LOGIC_VECTOR(15 downto 0);
	
	component mux
		port(id0 : in std_logic_vector(15 downto 0);
			  id1 : in std_logic_vector(15 downto 0);
			  id2 : in std_logic_vector(15 downto 0);
			  id3 : in std_logic_vector(15 downto 0);
			  id4 : in std_logic_vector(15 downto 0);
			  id5 : in std_logic_vector(15 downto 0);
			  id6 : in std_logic_vector(15 downto 0);
			  id7 : in std_logic_vector(15 downto 0);
			  id8 : in std_logic_vector(15 downto 0);
			  isel : in std_logic_vector(3 downto 0);
			  oq : out std_logic_vector(15 downto 0));
	end component;
	
	component alu
		port(a : in std_logic_vector(15 downto 0);
			  b : in std_logic_vector(15 downto 0);
			  sel : in std_logic_vector(3 downto 0);
			  c : out std_logic_vector(15 downto 0);
			  carry : out std_logic;
			  sign : out std_logic;
			  zero : out std_logic);
	end component;
	
	component control_unit
		port(clk : in std_logic;
			  nrst : in std_logic;
			  zero : in std_logic;
			  sign : in std_logic;
			  carry : in std_logic;
			  reg_we : out std_logic_vector(7 downto 0);
			  muxa : out std_logic_vector(3 downto 0);
			  muxb : out std_logic_vector(3 downto 0);
			  alu : out std_logic_vector(3 downto 0));
	end component;
	
	component reg
		port(iclk: in std_logic;
			  inrst : in std_logic;
			  iwe : in std_logic;
			  id : in std_logic_vector(15 downto 0);
			  oq : out std_logic_vector(15 downto 0));
	end component;
	
begin
	
	-- REGISTRI
	
	REGISTRI_GEN:
		for i in 0 to 7 generate
				REG_I : reg port map(iCLK, inRST, sREG_WE(i), sRESULT, sR(i));
		end generate REGISTRI_GEN;

	-- MUXA
	MUXA : mux port map(
		id0 => sR(0),
		id1 => sR(1),
		id2 => sR(2),
		id3 => sR(3),
		id4 => sR(4),
		id5 => sR(5),
		id6 => sR(6),
		id7 => sR(7),
		id8 => iDATA,
		isel => sMUXA_SEL,
		oq => sMUXA
	);
	
	-- MUXB
	MUXB : mux port map(
		id0 => sR(0),
		id1 => sR(1),
		id2 => sR(2),
		id3 => sR(3),
		id4 => sR(4),
		id5 => sR(5),
		id6 => sR(6),
		id7 => sR(7),
		id8 => iDATA,
		isel => sMUXB_SEL,
		oq => sMUXB
	);
	
	-- ALU
	ALU_i : alu port map(
		a => sMUXA,
		b => sMUXB,
		sel => sALU_SEL,
		c => sRESULT,
		carry => sCARRY,
		sign => sSIGN,
		zero => sZERO
	);

	-- DATA
	oDATA <= sRESULT;
	
	-- CONTROL UNIT
	C_UNIT : control_unit port map(
		clk => iCLK,
		nrst => inRST,
		zero => sZERO,
		sign => sSIGN,
		carry => sCARRY,
		reg_we => sREG_WE,
		muxa => sMUXA_SEL,
		muxb => sMUXB_SEL,
		alu => sALU_SEL
	);

end Behavioral;

