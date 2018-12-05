--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:27:03 12/05/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/_domaci/d3/prototype00/prototype00_tb.vhd
-- Project Name:  prototype00
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: prototype00
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
 
ENTITY prototype00_tb IS
END prototype00_tb;
 
ARCHITECTURE behavior OF prototype00_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT prototype00
    PORT(
         iCLK : IN  std_logic;
         inRST : IN  std_logic;
         oTC : OUT  std_logic;
			oRES : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inRST : std_logic := '0';

 	--Outputs
   signal oTC : std_logic;
	signal oRES : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns; -- 10
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: prototype00 PORT MAP (
          iCLK => iCLK,
          inRST => inRST,
          oTC => oTC,
			 oRES => oRES
        );

   -- Clock process definitions
   iCLK_process :process
   begin
		iCLK <= '0';
		wait for iCLK_period/2;
		iCLK <= '1';
		wait for iCLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		inRST <= '1';
      wait for 900 ns;	
		inRST <= '0';	

      -- insert stimulus here 

      wait;
   end process;

END;
