----------------------------------------------------------------------------------
-- Company: FTN Domaci
-- Engineer: Jovan Ivosevic RA30/2017
-- 
-- Create Date:    10:21:31 10/28/2018 
-- Design Name: 
-- Module Name:    cbps00 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cbps00 is
    Port ( iA0 : in  STD_LOGIC;
           iB0 : in  STD_LOGIC;
           iC0 : in  STD_LOGIC;
           oS0 : out  STD_LOGIC;
           oC0 : out  STD_LOGIC;
			  iA1 : in STD_LOGIC;
			  iB1 : in STD_LOGIC;
			  oS1 : out STD_LOGIC;
			  oC1 : out STD_LOGIC;
			  );
end cbps00;

architecture Behavioral of cbps00 is

begin

oS0 <= (iA0 xor iB0) xor iC0;
oC0 <= (iA0 and iB0) or ((iA0 xor iB0) and iC0);

oS1 <= (iA1 xor iB1) xor oC0;
oC1 <= (iA1 and iB1) or ((iA1 xor iB1) and oC0);
 
end Behavioral;

