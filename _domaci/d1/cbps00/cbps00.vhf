--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : cbps00.vhf
-- /___/   /\     Timestamp : 10/28/2018 11:01:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/hk-47/workspace/xilinx/_domaci/d1/cbps00/cbps00.vhf -w /home/hk-47/workspace/xilinx/_domaci/d1/cbps00/cbps00.sch
--Design Name: cbps00
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

entity cbps00 is
   port ( iA0 : in    std_logic; 
          iA1 : in    std_logic; 
          iB0 : in    std_logic; 
          iB1 : in    std_logic; 
          iC0 : in    std_logic; 
          oC0 : out   std_logic; 
          oC1 : out   std_logic; 
          oS0 : out   std_logic; 
          oS1 : out   std_logic);
end cbps00;

architecture BEHAVIORAL of cbps00 is
   attribute BOX_TYPE   : string ;
   signal XLXN_5    : std_logic;
   signal XLXN_7    : std_logic;
   signal XLXN_8    : std_logic;
   signal XLXN_14   : std_logic;
   signal XLXN_15   : std_logic;
   signal XLXN_16   : std_logic;
   signal oC0_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   oC0 <= oC0_DUMMY;
   XLXI_1 : XOR2
      port map (I0=>iB0,
                I1=>iA0,
                O=>XLXN_5);
   
   XLXI_2 : XOR2
      port map (I0=>iC0,
                I1=>XLXN_5,
                O=>oS0);
   
   XLXI_3 : AND2
      port map (I0=>iC0,
                I1=>XLXN_5,
                O=>XLXN_7);
   
   XLXI_4 : AND2
      port map (I0=>iB0,
                I1=>iA0,
                O=>XLXN_8);
   
   XLXI_5 : OR2
      port map (I0=>XLXN_8,
                I1=>XLXN_7,
                O=>oC0_DUMMY);
   
   XLXI_6 : XOR2
      port map (I0=>iB1,
                I1=>iA1,
                O=>XLXN_14);
   
   XLXI_7 : XOR2
      port map (I0=>oC0_DUMMY,
                I1=>XLXN_14,
                O=>oS1);
   
   XLXI_8 : AND2
      port map (I0=>oC0_DUMMY,
                I1=>XLXN_14,
                O=>XLXN_15);
   
   XLXI_9 : OR2
      port map (I0=>XLXN_16,
                I1=>XLXN_15,
                O=>oC1);
   
   XLXI_10 : AND2
      port map (I0=>iB1,
                I1=>iA1,
                O=>XLXN_16);
   
end BEHAVIORAL;


