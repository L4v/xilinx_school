--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:59:03 11/11/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/_domaci/d2/prototype00/prototype00_tb.vhd
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
         iSW : IN  std_logic_vector(7 downto 0);
         iSEL : IN  std_logic;
         oLED : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iSW : std_logic_vector(7 downto 0) := (others => '0');
   signal iSEL : std_logic := '0';

 	--Outputs
   signal oLED : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: prototype00 PORT MAP (
          iSW => iSW,
          iSEL => iSEL,
          oLED => oLED
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
		iSEL <= '0';
		iSW <= "10010010";wait for 10 ns;
		iSW <= "11010011";wait for 10 ns;
		iSW <= "11111111";wait for 10 ns;
		iSW <= "10011001";wait for 10 ns;
		iSW <= "00000000";wait for 10 ns;
		iSW <= "10001100";wait for 10 ns;
		iSW <= "10001001";wait for 10 ns;
		
		iSEL <= '1';
		iSW <= "10010010";wait for 10 ns;
		iSW <= "11010011";wait for 10 ns;
		iSW <= "11111111";wait for 10 ns;
		iSW <= "10011001";wait for 10 ns;
		iSW <= "00000000";wait for 10 ns;
		iSW <= "10001001";wait for 10 ns;
		iSW <= "10001100";wait for 10 ns;
		

      wait;
   end process;

END;
