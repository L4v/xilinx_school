--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:12:12 12/20/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/_domaci/d4/protype00/prototype00_tb.vhd
-- Project Name:  protype00
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
         inOK : IN  std_logic;
         inHAZ : IN  std_logic;
         oRED : OUT  std_logic_vector(1 downto 0);
         oYELLOW : OUT  std_logic_vector(1 downto 0);
         oGREEN : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inRST : std_logic := '0';
   signal inOK : std_logic := '0';
   signal inHAZ : std_logic := '0';

 	--Outputs
   signal oRED : std_logic_vector(1 downto 0);
   signal oYELLOW : std_logic_vector(1 downto 0);
   signal oGREEN : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 41.667 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: prototype00 PORT MAP (
          iCLK => iCLK,
          inRST => inRST,
          inOK => inOK,
          inHAZ => inHAZ,
          oRED => oRED,
          oYELLOW => oYELLOW,
          oGREEN => oGREEN
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
      inOK <= '1';
		inHAZ <= '1';
		inRST <= '1';
		wait for 3 us;
		inOK <= '0';
		wait for 3 us;
		inOK <= '1';
		wait for 3 us;
		inHAZ <= '0';
		wait for 3 us;
		inHAZ <= '1';
		wait for 3 us;
		inOK <= '0';
		wait for 3 us;
		inRST <= '0';
		inHAZ <= '0';

      wait;
   end process;

END;
