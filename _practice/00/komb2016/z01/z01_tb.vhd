--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:36:26 12/07/2018
-- Design Name:   
-- Module Name:   /home/hk-47/workspace/xilinx/_practice/00/komb2016/z01/z01_tb.vhd
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
         iA : IN  std_logic_vector(7 downto 0);
         iB : IN  std_logic_vector(7 downto 0);
         iSEL : IN  std_logic_vector(7 downto 0);
         oY : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iA : std_logic_vector(7 downto 0) := (others => '0');
   signal iB : std_logic_vector(7 downto 0) := (others => '0');
   signal iSEL : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal oY : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: z01 PORT MAP (
          iA => iA,
          iB => iB,
          iSEL => iSEL,
          oY => oY
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		--1 __ PROMENUTI ISEL AAA
		iB <= "00000000";
		iA <= "00000010";
		iSEL <= "101";
		wait for 10 ns;
		
		--2
		iA <= "00001000";
		iSEL <= "010";
		wait for 10 ns;
		
		--3
		iA <= x"CD";
		iSEL <= "110";
		wait for 10 ns;
		
		--4
		iA<= "00011000";
		iSEL <= "100";
		wait for 10 ns;
		
		--5
		iSEL <= "000";
		iA <= "10000000";
		wait for 10 ns;
		
		--9
		iA <= "01000000";
		wait for 10 ns;
		
		--10
		iA <= "00100000";
		wait for 10 ns;
		
		--6
		iSEL <= "001";
		wait for 10 ns;
		
		--7
		iSEL <= "011";
		wait for 10 ns;
		
		--8
		iSEL <= "111";
		wait for 10 ns;
		
		
		
      wait;
   end process;

END;
