--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:47:32 10/26/2018
-- Design Name:   
-- Module Name:   /home/jigsaw/workspace/xilinx/_domaci/d1/prototip_1/prototip_1_tb.vhd
-- Project Name:  prototip_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: prototip_1
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
 
ENTITY prototip_1_tb IS
END prototip_1_tb;
 
ARCHITECTURE behavior OF prototip_1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT prototip_1
    PORT(
         iA : IN  std_logic;
         iB : IN  std_logic;
         iC : IN  std_logic;
         oS : OUT  std_logic;
         oC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iA : std_logic := '0';
   signal iB : std_logic := '0';
   signal iC : std_logic := '0';

 	--Outputs
   signal oS : std_logic;
   signal oC : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: prototip_1 PORT MAP (
          iA => iA,
          iB => iB,
          iC => iC,
          oS => oS,
          oC => oC
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      iA <= '0';
		iB <= '0';
		iC <= '0';
		wait for 100 ns;
		
      iA <= '0';
		iB <= '0';
		iC <= '1';
		wait for 100 ns;
		
      iA <= '0';
		iB <= '1';
		iC <= '1';
		wait for 100 ns;
		
      iA <= '1';
		iB <= '0';
		iC <= '0';
		wait for 100 ns;
		
      iA <= '1';
		iB <= '0';
		iC <= '1';
		wait for 100 ns;
		
      iA <= '1';
		iB <= '1';
		iC <= '0';
		wait for 100 ns;
		
      iA <= '1';
		iB <= '1';
		iC <= '1';

      wait;
   end process;

END;
