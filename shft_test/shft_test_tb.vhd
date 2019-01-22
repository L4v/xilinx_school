--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:11:02 01/21/2019
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/shft_test/shft_test_tb.vhd
-- Project Name:  shft_test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shft_test
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
 
ENTITY shft_test_tb IS
END shft_test_tb;
 
ARCHITECTURE behavior OF shft_test_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shft_test
    PORT(
         iA : IN  std_logic_vector(15 downto 0);
         iSEL : IN  std_logic_vector(1 downto 0);
         oY : OUT  std_logic_vector(15 downto 0);
         oSIGN : OUT  std_logic;
         oCARRY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iA : std_logic_vector(15 downto 0) := (others => '0');
   signal iSEL : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal oY : std_logic_vector(15 downto 0);
   signal oSIGN : std_logic;
   signal oCARRY : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shft_test PORT MAP (
          iA => iA,
          iSEL => iSEL,
          oY => oY,
          oSIGN => oSIGN,
          oCARRY => oCARRY
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		iA <= x"0008";
		iSEL <= "00";
      wait for 100 ns;
		iSEL <= "01";
		wait for 100 ns;
		iA <= x"F001";
		iSEL <= "00";
		wait for 100 ns;
		iSEL <= "01";

      -- insert stimulus here 

      wait;
   end process;

END;
