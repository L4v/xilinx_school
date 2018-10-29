-- Vhdl test bench created from schematic /home/hk-47/workspace/xilinx/_domaci/d1/cbps00/cbps00.sch - Sun Oct 28 11:17:08 2018
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
ENTITY cbps00_cbps00_sch_tb IS
END cbps00_cbps00_sch_tb;
ARCHITECTURE behavioral OF cbps00_cbps00_sch_tb IS 

   COMPONENT cbps00
   PORT( iA0	:	IN	STD_LOGIC; 
          iB0	:	IN	STD_LOGIC; 
          iC0	:	IN	STD_LOGIC; 
          oC0	:	OUT	STD_LOGIC; 
          oS0	:	OUT	STD_LOGIC; 
          iA1	:	IN	STD_LOGIC; 
          iB1	:	IN	STD_LOGIC; 
          oC1	:	OUT	STD_LOGIC; 
          oS1	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL iA0	:	STD_LOGIC;
   SIGNAL iB0	:	STD_LOGIC;
   SIGNAL iC0	:	STD_LOGIC;
   SIGNAL oC0	:	STD_LOGIC;
   SIGNAL oS0	:	STD_LOGIC;
   SIGNAL iA1	:	STD_LOGIC;
   SIGNAL iB1	:	STD_LOGIC;
   SIGNAL oC1	:	STD_LOGIC;
   SIGNAL oS1	:	STD_LOGIC;

BEGIN

   UUT: cbps00 PORT MAP(
		iA0 => iA0, 
		iB0 => iB0, 
		iC0 => iC0, 
		oC0 => oC0, 
		oS0 => oS0, 
		iA1 => iA1, 
		iB1 => iB1, 
		oC1 => oC1, 
		oS1 => oS1
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	
		iA0 <= '1';
		iB0 <= '1';
		iC0 <= '0';
		iA1 <= '0';
		iB1 <= '0';
		wait for 100 ns;
		iA1 <= '1';
		iB1 <= '1';
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
