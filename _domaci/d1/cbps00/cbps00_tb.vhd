--------------------------------------------------------------------------------
-- Company: FTN Domaci
-- Engineer: Jovan Ivosevic RA30/2017
--
-- Create Date:   10:25:11 10/28/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/_domaci/d1/cbps00/cbps00_tb.vhd
-- Project Name:  cbps00
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cbps00
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
 
ENTITY cbps00_tb IS
END cbps00_tb;
 
ARCHITECTURE behavior OF cbps00_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cbps00
    PORT(
         iA0 : IN  std_logic;
         iB0 : IN  std_logic;
         iC0 : IN  std_logic;
         oC0 : OUT  std_logic;
         oS0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iA0 : std_logic := '0';
   signal iB0 : std_logic := '0';
   signal iC0 : std_logic := '0';

 	--Outputs
   signal oC0 : std_logic;
   signal oS0 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cbps00 PORT MAP (
          iA0 => iA0,
          iB0 => iB0,
          iC0 => iC0,
          oC0 => oC0,
          oS0 => oS0
        );
 

   -- Stimulus process
   stim_proc: process
   begin	
	-- iC0iB0iA0
	-- 000
		iA0 <= '0';
		iB0 <= '0';
		iC0 <= '0';
		wait for 100 ns;
	-- 001
		iA0 <= '1';
		iB0 <= '0';
		iC0 <= '0';
		wait for 100 ns;
	-- 010
		iA0 <= '0';
		iB0 <= '1';
		iC0 <= '0';
		wait for 100 ns;
	-- 011
		iA0 <= '1';
		iB0 <= '1';
		iC0 <= '0';
		wait for 100 ns;
	-- 100
		iA0 <= '0';
		iB0 <= '0';
		iC0 <= '1';
		wait for 100 ns;
	-- 101
		iA0 <= '1';
		iB0 <= '0';
		iC0 <= '1';
		wait for 100 ns;
	-- 110
		iA0 <= '0';
		iB0 <= '1';
		iC0 <= '1';
		wait for 100 ns;
	-- 111
		iA0 <= '1';
		iB0 <= '1';
		iC0 <= '1';

      wait;
   end process;

END;
