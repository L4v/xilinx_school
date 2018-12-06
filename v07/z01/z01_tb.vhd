--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:56:59 12/06/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/v07/z01/z01_tb.vhd
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
         iD : IN  std_logic;
         oPARITY_OK : OUT  std_logic;
         oDATA : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inRST : std_logic := '0';
   signal iD : std_logic := '0';

 	--Outputs
   signal oPARITY_OK : std_logic;
   signal oDATA : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: z01 PORT MAP (
          iCLK => iCLK,
          inRST => inRST,
          iD => iD,
          oPARITY_OK => oPARITY_OK,
          oDATA => oDATA
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
	
		--
		inRST <= '1';
		iD <='0';
      wait for iCLK_period;
		iD <='1';
      wait for iCLK_period;
		iD <='1';
      wait for iCLK_period;
		iD <='1';
      wait for iCLK_period;
		iD <='0';
      wait for iCLK_period;
		iD <='1';
      wait for iCLK_period;
		iD <='0';
      wait for iCLK_period;
		iD <='0';
      wait for iCLK_period;
		iD <='1';
		wait for 100 ns;
		--
		inRST <= '0';
		iD <='0';
      wait for iCLK_period;
		iD <='1';
      wait for iCLK_period;
		iD <='1';
      wait for iCLK_period;
		iD <='1';
      wait for iCLK_period;
		iD <='0';
      wait for iCLK_period;
		iD <='1';
      wait for iCLK_period;
		iD <='0';
      wait for iCLK_period;
		iD <='0';
      wait for iCLK_period;
		iD <='1';
	

      wait;
   end process;

END;
