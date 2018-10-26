--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : MyFirstDigitalSystem.vhf
-- /___/   /\     Timestamp : 10/23/2018 07:43:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/jigsaw/workspace/xilinx/v01/MyFirstDigitalSystem/MyFirstDigitalSystem.vhf -w /home/jigsaw/workspace/xilinx/v01/MyFirstDigitalSystem/MyFirstDigitalSystem.sch
--Design Name: MyFirstDigitalSystem
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MyFirstDigitalSystem is
   port ( iA : in    std_logic; 
          iB : in    std_logic; 
          oY : out   std_logic);
end MyFirstDigitalSystem;

architecture BEHAVIORAL of MyFirstDigitalSystem is
   attribute BOX_TYPE   : string ;
   signal S  : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>iB,
                I1=>iA,
                O=>S);
   
   XLXI_2 : INV
      port map (I=>S,
                O=>oY);
   
end BEHAVIORAL;


