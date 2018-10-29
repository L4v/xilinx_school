-- Vhdl test bench created from schematic /home/jigsaw/workspace/xilinx/_domaci/d1/cbps02/cbps02.sch - Sun Oct 28 12:12:19 2018
-- AUTOR: JOVAN IVOSEVIC RA30/2017
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
   PORT( iA0	:	IN	STD_LOGIC; 
          iB0	:	IN	STD_LOGIC; 
     --     iC0	:	IN	STD_LOGIC; 
          oS0	:	OUT	STD_LOGIC; 
          oC	:	OUT	STD_LOGIC; 
          oS1	:	OUT	STD_LOGIC; 
          iA1	:	IN	STD_LOGIC; 
          iB1	:	IN	STD_LOGIC; 
          oS2	:	OUT	STD_LOGIC; 
          iA2	:	IN	STD_LOGIC; 
          iB2	:	IN	STD_LOGIC; 
          oS3	:	OUT	STD_LOGIC; 
          iA3	:	IN	STD_LOGIC; 
          iB3	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL iA0	:	STD_LOGIC;
   SIGNAL iB0	:	STD_LOGIC;
   --SIGNAL iC0	:	STD_LOGIC;
   SIGNAL oS0	:	STD_LOGIC;
   SIGNAL oC	:	STD_LOGIC;
   SIGNAL oS1	:	STD_LOGIC;
   SIGNAL iA1	:	STD_LOGIC;
   SIGNAL iB1	:	STD_LOGIC;
   SIGNAL oS2	:	STD_LOGIC;
   SIGNAL iA2	:	STD_LOGIC;
   SIGNAL iB2	:	STD_LOGIC;
   SIGNAL oS3	:	STD_LOGIC;
   SIGNAL iA3	:	STD_LOGIC;
   SIGNAL iB3	:	STD_LOGIC;

BEGIN

   UUT: cbps02 PORT MAP(
		iA0 => iA0, 
		iB0 => iB0, 
		--iC0 => iC0, 
		oS0 => oS0, 
		oC => oC, 
		oS1 => oS1, 
		iA1 => iA1, 
		iB1 => iB1, 
		oS2 => oS2, 
		iA2 => iA2, 
		iB2 => iB2, 
		oS3 => oS3, 
		iA3 => iA3, 
		iB3 => iB3
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		
		iA0 <= '0';
		iB0 <= '0';
		--iC0 <= '0';
		iA1 <= '0';
		iB1 <= '0';
		iA2 <= '0';
		iB2 <= '0';
		iA3 <= '0';
		iB3 <= '0';
		wait for 100 ns;
		
		iA0 <= '1';
		iB0 <= '1';
		--iC0 <= '0';
		iA1 <= '0';
		iB1 <= '0';
		iA2 <= '1';
		iB2 <= '0';
		iA3 <= '0';
		iB3 <= '0';
		wait for 100 ns;
		
		iA0 <= '1';
		iB0 <= '1';
		--iC0 <= '1';
		iA1 <= '0';
		iB1 <= '0';
		iA2 <= '0';
		iB2 <= '0';
		iA3 <= '0';
		iB3 <= '0';
		wait for 100 ns;
		
		iA0 <= '1';
		iB0 <= '1';
		--iC0 <= '1';
		iA1 <= '0';
		iB1 <= '0';
		iA2 <= '1';
		iB2 <= '1';
		iA3 <= '0';
		iB3 <= '0';
		wait for 100 ns;
		
		iA0 <= '1';
		iB0 <= '1';
		--iC0 <= '1';
		iA1 <= '1';
		iB1 <= '1';
		iA2 <= '1';
		iB2 <= '1';
		iA3 <= '1';
		iB3 <= '1';
		wait for 100 ns;
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
