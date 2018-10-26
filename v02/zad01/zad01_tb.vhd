--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:57:16 10/26/2018
-- Design Name:   
-- Module Name:   /home/jigsaw/workspace/xilinx/v02/zad01/zad01_tb.vhd
-- Project Name:  zad01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: zad01
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
 
ENTITY zad01_tb IS
END zad01_tb;
 
ARCHITECTURE behavior OF zad01_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT zad01
    PORT(
         iA : IN  std_logic;
         iB : IN  std_logic;
         oY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iA : std_logic := '0';
   signal iB : std_logic := '0';

 	--Outputs
   signal oY : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: zad01 PORT MAP (
          iA => iA,
          iB => iB,
          oY => oY
        );
 

   -- Stimulus process
   stim_proc: process
   begin
      -- insert stimulus here 
		iA<='0';
		iB<='0';
		wait for 100 ns;
		
		iA<='1';
		iB<='0';
		wait for 100 ns;
		
		iA<='0';
		iB<='1';
		wait for 100 ns;
		
		iA<='1';
		iB<='1';
		wait for 100 ns;
		
		

      wait;
   end process;

END;
