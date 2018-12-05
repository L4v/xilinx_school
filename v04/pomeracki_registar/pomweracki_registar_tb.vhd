--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:26:18 12/05/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/v04/pomeracki_registar/pomweracki_registar_tb.vhd
-- Project Name:  pomeracki_registar
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pomeracki_registar
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
 
ENTITY pomweracki_registar_tb IS
END pomweracki_registar_tb;
 
ARCHITECTURE behavior OF pomweracki_registar_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pomeracki_registar
    PORT(
         iARITH : IN  std_logic;
         iLOAD : IN  std_logic;
         iDATA : IN  std_logic_vector(7 downto 0);
         iSHL : IN  std_logic;
         iSHR : IN  std_logic;
         iCLK : IN  std_logic;
         inRST : IN  std_logic;
         oSHREG : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iARITH : std_logic := '0';
   signal iLOAD : std_logic := '0';
   signal iDATA : std_logic_vector(7 downto 0) := (others => '0');
   signal iSHL : std_logic := '0';
   signal iSHR : std_logic := '0';
   signal iCLK : std_logic := '0';
   signal inRST : std_logic := '0';

 	--Outputs
   signal oSHREG : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pomeracki_registar PORT MAP (
          iARITH => iARITH,
          iLOAD => iLOAD,
          iDATA => iDATA,
          iSHL => iSHL,
          iSHR => iSHR,
          iCLK => iCLK,
          inRST => inRST,
          oSHREG => oSHREG
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
		iDATA <= "10100011";
		inRST <= '1';
		
		iLOAD <= '1';
		
		
      wait for iCLK_period*5.25;

      -- insert stimulus here 

      wait;
   end process;

END;
