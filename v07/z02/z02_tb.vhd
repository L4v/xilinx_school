--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:00:48 12/06/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/v07/z02/z02_tb.vhd
-- Project Name:  z02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: z02
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
 
ENTITY z02_tb IS
END z02_tb;
 
ARCHITECTURE behavior OF z02_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT z02
    PORT(
         iCLK : IN  std_logic;
         iRST : IN  std_logic;
         iLOAD : IN  std_logic;
         iA : IN  std_logic_vector(3 downto 0);
         oFACT : OUT  std_logic_vector(31 downto 0);
         oDONE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iRST : std_logic := '0';
   signal iLOAD : std_logic := '0';
   signal iA : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal oFACT : std_logic_vector(31 downto 0);
   signal oDONE : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: z02 PORT MAP (
          iCLK => iCLK,
          iRST => iRST,
          iLOAD => iLOAD,
          iA => iA,
          oFACT => oFACT,
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
		
		iRST <= '0';
		iLOAD <= '1';
		iA <= "1101"; -- 13, izaziva overflow u shiftovanju, sto je dobro
		wait for iCLK_period;
		iLOAD <= '0';
		
      wait;
   end process;

END;
