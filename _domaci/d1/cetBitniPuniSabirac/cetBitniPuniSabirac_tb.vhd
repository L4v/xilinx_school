--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jovan Ivosevic RA30/17
--
-- Create Date:   19:12:31 10/26/2018
-- Design Name:   
-- Module Name:   /home/jigsaw/workspace/xilinx/_domaci/d1/cetBitniPuniSabirac/cetBitniPuniSabirac_tb.vhd
-- Project Name:  cetBitniPuniSabirac
-- Target Device:  
-- Tool versions:  
-- Description:   Domaci zadatak za LPRS1
-- 
-- VHDL Test Bench Created by ISE for module: cetBitniPuniSabirac
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY cetBitniPuniSabirac_tb IS
END cetBitniPuniSabirac_tb;
 
ARCHITECTURE behavior OF cetBitniPuniSabirac_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cetBitniPuniSabirac
    PORT(
         iA0 : IN  std_logic;
         iA1 : IN  std_logic;
         iA2 : IN  std_logic;
         iA3 : IN  std_logic;
         iB0 : IN  std_logic;
         iB1 : IN  std_logic;
         iB2 : IN  std_logic;
         iB3 : IN  std_logic;
         iC0 : IN  std_logic;
         iC1 : IN  std_logic;
         iC2 : IN  std_logic;
         iC3 : IN  std_logic;
         oC0 : OUT  std_logic;
         oC1 : OUT  std_logic;
         oC2 : OUT  std_logic;
         oC3 : OUT  std_logic;
         oS0 : OUT  std_logic;
         oS1 : OUT  std_logic;
         oS2 : OUT  std_logic;
         oS3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iA0 : std_logic := '0';
   signal iA1 : std_logic := '0';
   signal iA2 : std_logic := '0';
   signal iA3 : std_logic := '0';
   signal iB0 : std_logic := '0';
   signal iB1 : std_logic := '0';
   signal iB2 : std_logic := '0';
   signal iB3 : std_logic := '0';
   signal iC0 : std_logic := '0';
   signal iC1 : std_logic := '0';
   signal iC2 : std_logic := '0';
   signal iC3 : std_logic := '0';

 	--Outputs
   signal oC0 : std_logic;
   signal oC1 : std_logic;
   signal oC2 : std_logic;
   signal oC3 : std_logic;
   signal oS0 : std_logic;
   signal oS1 : std_logic;
   signal oS2 : std_logic;
   signal oS3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cetBitniPuniSabirac PORT MAP (
          iA0 => iA0,
          iA1 => iA1,
          iA2 => iA2,
          iA3 => iA3,
          iB0 => iB0,
          iB1 => iB1,
          iB2 => iB2,
          iB3 => iB3,
          iC0 => iC0,
          iC1 => iC1,
          iC2 => iC2,
          iC3 => iC3,
          oC0 => oC0,
          oC1 => oC1,
          oC2 => oC2,
          oC3 => oC3,
          oS0 => oS0,
          oS1 => oS1,
          oS2 => oS2,
          oS3 => oS3
        );
 

   -- Stimulus process
   stim_proc: process
   begin	
	
		--iC0 <= '0';
		--iC1 <= '0';
		--iC2 <= '0';
		--iC3 <= '0';
		--sS0 <= '0';
	
	-- SLUCAJ 0
		iA0 <= '0';
		iB0 <= '0';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '0';
		--iC1 <= '0';
		
		iA2 <= '0';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '0';
		--iC1 <= '0';
		wait for 10 ns;
	
	-- SLUCAJ 1
		iA0 <= '1';
		iB0 <= '0';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '0';
		--iC1 <= '0';
		
		iA2 <= '0';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '0';
		--iC1 <= '0';
		wait for 10 ns;
		
	-- SLUCAJ 2
		iA0 <= '0';
		iB0 <= '1';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '0';
		--iC1 <= '0';
		
		iA2 <= '0';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '0';
		--iC1 <= '0';
		wait for 10 ns;
		
	
	-- SLUCAJ 3
		iA0 <= '0';
		iB0 <= '0';
		--iC0 <= '1';
		
		iA1 <= '1';
		iB1 <= '0';
		--iC1 <= '0';
		
		iA2 <= '0';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '0';
		--iC1 <= '0';
		wait for 10 ns;

	
	-- SLUCAJ 4
		iA0 <= '0';
		iB0 <= '0';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '1';
		--iC1 <= '0';
		
		iA2 <= '0';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '0';
		--iC1 <= '0';
		wait for 10 ns;
	
	-- SLUCAJ 5
		iA0 <= '0';
		iB0 <= '0';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '0';
		--iC1 <= '0';
		
		iA2 <= '1';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '0';
		--iC1 <= '0';
		wait for 10 ns;
	
	-- SLUCAJ 6
		iA0 <= '0';
		iB0 <= '0';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '1';
		--iC1 <= '1';
		
		iA2 <= '0';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '0';
		--iC1 <= '0';
		wait for 10 ns;
	
	-- SLUCAJ 7
		iA0 <= '0';
		iB0 <= '0';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '0';
		--iC1 <= '1';
		
		iA2 <= '1';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '0';
		--iC1 <= '0';
		wait for 10 ns;
	
	-- SLUCAJ 8
		iA0 <= '0';
		iB0 <= '0';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '0';
		--iC1 <= '1';
		
		iA2 <= '0';
		iB2 <= '1';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '0';
		--iC1 <= '0';
		wait for 10 ns;
	
	-- SLUCAJ 8
		iA0 <= '0';
		iB0 <= '0';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '0';
		--iC1 <= '1';
		
		iA2 <= '0';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '1';
		iB3 <= '0';
		--iC1 <= '0';
		wait for 10 ns;
	
	-- SLUCAJ 9
		iA0 <= '0';
		iB0 <= '0';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '0';
		--iC1 <= '1';
		
		iA2 <= '0';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '1';
		--iC1 <= '0';
		wait for 10 ns;
	
	-- SLUCAJ 10
		iA0 <= '1';
		iB0 <= '0';
		--iC0 <= '0';
		
		iA1 <= '0';
		iB1 <= '0';
		--iC1 <= '1';
		
		iA2 <= '0';
		iB2 <= '0';
		--iC1 <= '0';
		
		iA3 <= '0';
		iB3 <= '1';
		--iC1 <= '0';
		wait for 10 ns;
		
	-- SLUCAJ 11
		iA0 <= '0';
		iB0 <= '1';
		wait for 10 ns;
		
	-- SLUCAJ 12
		iB0 <= '0';
		iA1 <= '1';
		wait for 10 ns;
		
		iA1 <= '0';
		iB1 <= '1';
		wait for 10 ns;
		
		-- NASTAVITI
      wait;
   end process;

END;
