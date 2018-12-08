--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:24:07 12/08/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/_practice/01/sekv2010/z01/z01_tb.vhd
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
         iCLK : IN  std_logic;
         inRST : IN  std_logic;
         iA : IN  std_logic_vector(15 downto 0);
         iB : IN  std_logic_vector(15 downto 0);
         oREM : OUT  std_logic_vector(15 downto 0);
         oDIV : OUT  std_logic_vector(15 downto 0);
         oDONE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inRST : std_logic := '0';
   signal iA : std_logic_vector(15 downto 0) := (others => '0');
   signal iB : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal oREM : std_logic_vector(15 downto 0);
   signal oDIV : std_logic_vector(15 downto 0);
   signal oDONE : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: z01 PORT MAP (
          iCLK => iCLK,
          inRST => inRST,
          iA => iA,
          iB => iB,
          oREM => oREM,
          oDIV => oDIV,
          oDONE => oDONE
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
		iA <= x"0010";
		iB <= x"0004";
      wait for 100 ns;
		inRST <= '0';
		wait for iCLK_period;
		inRST <= '1';
		iA <= x"0011";
		wait for 100 ns;
		inRST <= '0';
		wait for iCLK_period;
		inRST <= '1';
		iB <= x"0000";

      wait;
   end process;

END;
