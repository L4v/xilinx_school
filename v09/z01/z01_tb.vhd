--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:23:43 12/17/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/v9/z01/z01_tb.vhd
-- Project Name:  z01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: z01
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
 
ENTITY z01_tb IS
END z01_tb;
 
ARCHITECTURE behavior OF z01_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT z01
    PORT(
         inSTOP : IN  std_logic;
         inRL : IN  std_logic;
         inRR : IN  std_logic;
         inBLINK : IN  std_logic;
         iCLK : IN  std_logic;
         inRST : IN  std_logic;
         oLED : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inSTOP : std_logic := '0';
   signal inRL : std_logic := '0';
   signal inRR : std_logic := '0';
   signal inBLINK : std_logic := '0';
   signal iCLK : std_logic := '0';
   signal inRST : std_logic := '0';

 	--Outputs
   signal oLED : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 41.667 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: z01 PORT MAP (
          inSTOP => inSTOP,
          inRL => inRL,
          inRR => inRR,
          inBLINK => inBLINK,
          iCLK => iCLK,
          inRST => inRST,
          oLED => oLED
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
		inRL <= '1';
		inRR <= '1';
		inBLINK <= '1';
		inSTOP <= '1';
		wait for 4 us;
		
		inRL <= '0';
		wait for 4 us;
		
		inRL <= '1';
		wait for 4 us;
		inSTOP <= '0';
		wait for 4 us;
		
		inSTOP <= '1';
		inRR <= '0';
		wait for 4 us;
		
		inRR <= '1';
		wait for 4 us;
		inSTOP <= '0';
		wait for 4 us;
		
		inSTOP <= '1';
		inBLINK <= '0';
		wait for 4 us;
		inSTOP <= '0';
		wait for 4 us;

      wait;
   end process;

END;
