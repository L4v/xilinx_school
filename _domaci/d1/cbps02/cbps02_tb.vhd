-- Vhdl test bench created from schematic /home/jigsaw/workspace/xilinx/_domaci/d1/cbps02/cbps02.sch - Sun Oct 28 12:03:10 2018
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY cbps02_cbps02_sch_tb IS
END cbps02_cbps02_sch_tb;
ARCHITECTURE behavioral OF cbps02_cbps02_sch_tb IS 

   COMPONENT cbps02
   PORT( iA	:	IN	STD_LOGIC; 
          iB	:	IN	STD_LOGIC; 
          iC	:	IN	STD_LOGIC; 
          oS	:	OUT	STD_LOGIC; 
          oC	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL iA	:	STD_LOGIC;
   SIGNAL iB	:	STD_LOGIC;
   SIGNAL iC	:	STD_LOGIC;
   SIGNAL oS	:	STD_LOGIC;
   SIGNAL oC	:	STD_LOGIC;

BEGIN

   UUT: cbps02 PORT MAP(
		iA => iA, 
		iB => iB, 
		iC => iC, 
		oS => oS, 
		oC => oC
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		
		iA <= '0';
		iB <= '0';
		iC <= '0';
		wait for 100 ns;
		
		iA <= '1';
		iB <= '0';
		iC <= '0';
		wait for 100 ns;
		
		iA <= '0';
		iB <= '1';
		iC <= '0';
		wait for 100 ns;
		
		iA <= '1';
		iB <= '1';
		iC <= '0';
		wait for 100 ns;
		
		iA <= '0';
		iB <= '0';
		iC <= '1';
		wait for 100 ns;
		
		iA <= '1';
		iB <= '0';
		iC <= '1';
		wait for 100 ns;
		
		iA <= '0';
		iB <= '1';
		iC <= '1';
		wait for 100 ns;
		
		iA <= '1';
		iB <= '1';
		iC <= '1';
		wait for 100 ns;
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
