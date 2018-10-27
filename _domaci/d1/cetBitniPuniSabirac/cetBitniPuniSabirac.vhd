----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:03:36 10/26/2018 
-- Design Name: 
-- Module Name:    cetBitniPuniSabirac - Behavioral 
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

entity cetBitniPuniSabirac is
    Port ( iA0 : in  STD_LOGIC;
           iA1 : in  STD_LOGIC;
           iA2 : in  STD_LOGIC;
           iA3 : in  STD_LOGIC;
           iB0 : in  STD_LOGIC;
           iB1 : in  STD_LOGIC;
           iB2 : in  STD_LOGIC;
           iB3 : in  STD_LOGIC;
           iC0 : in  STD_LOGIC;
           iC1 : in  STD_LOGIC;
           iC2 : in  STD_LOGIC;
           iC3 : in  STD_LOGIC;
           oC0 : out  STD_LOGIC;
           oC1 : out  STD_LOGIC;
           oC2 : out  STD_LOGIC;
           oC3 : out  STD_LOGIC;
           oS0 : out  STD_LOGIC;
           oS1 : out  STD_LOGIC;
           oS2 : out  STD_LOGIC;
           oS3 : out  STD_LOGIC);
end cetBitniPuniSabirac;

architecture Behavioral of cetBitniPuniSabirac is

begin

oS0 <= (iA0 xor iB0) xor iC0;
oS1 <= (iA1 xor iB1) xor iC1;
oS2 <= (iA2 xor iB2) xor iC2;
oS3 <= (iA3 xor iB3) xor iC3;

oC0 <= ((iA0 xor iB0) and iC0) or (iA0 and iB0);
oC1 <= ((iA1 xor iB1) and iC1) or (iA1 and iB1);
oC2 <= ((iA2 xor iB2) and iC2) or (iA2 and iB2);
oC3 <= ((iA3 xor iB3) and iC3) or (iA3 and iB3);

iC1 <= oC0;
iC2 <= oC1;
iC3 <= oC2;

end Behavioral;
