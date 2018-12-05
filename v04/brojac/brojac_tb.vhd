--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:32:40 12/05/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/v04/brojac/brojac_tb.vhd
-- Project Name:  brojac
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: brojac
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
 
ENTITY brojac_tb IS
END brojac_tb;
 
ARCHITECTURE behavior OF brojac_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT brojac
    PORT(
         iEN : IN  std_logic;
         iCLK : IN  std_logic;
         inRST : IN  std_logic;
         oCNT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iEN : std_logic := '0';
   signal iCLK : std_logic := '0';
   signal inRST : std_logic := '0';

 	--Outputs
   signal oCNT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: brojac PORT MAP (
          iEN => iEN,
          iCLK => iCLK,
          inRST => inRST,
          oCNT => oCNT
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
		iEN <= '1';
		inRST <= '1';
      wait for iCLK_period*5.25;
		
		inRST<='0';
      wait for iCLK_period*5.25;
		
		iEN <='0';
		inRST <= '1';
      wait for iCLK_period*5.25;
		
		iEN <= '0';
		inRST <= '0';
      wait for iCLK_period*5.25;
		
		iEN <= '1';
		inRST <= '1';
      wait for iCLK_period*5.25;
		
		iEN <='0';
      wait for iCLK_period*5.25;
		
		inRST <= '0';
      wait for iCLK_period*5.25;
      wait;
   end process;

END;
