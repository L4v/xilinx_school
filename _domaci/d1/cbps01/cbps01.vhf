--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : cbps01.vhf
-- /___/   /\     Timestamp : 10/28/2018 11:55:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/jigsaw/workspace/xilinx/_domaci/d1/cbps01/cbps01.vhf -w /home/jigsaw/workspace/xilinx/_domaci/d1/cbps01/cbps01.sch
--Design Name: cbps01
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

entity cbps01 is
   port ( iA0 : in    std_logic; 
          iA1 : in    std_logic; 
          iA2 : in    std_logic; 
          iA3 : in    std_logic; 
          iB0 : in    std_logic; 
          iB1 : in    std_logic; 
          iB2 : in    std_logic; 
          iB3 : in    std_logic; 
          iC0 : in    std_logic; 
          oC3 : out   std_logic; 
          oS0 : out   std_logic; 
          oS1 : out   std_logic; 
          oS2 : out   std_logic; 
          oS3 : out   std_logic);
end cbps01;

architecture BEHAVIORAL of cbps01 is
   attribute BOX_TYPE   : string ;
   signal oC0     : std_logic;
   signal oC1     : std_logic;
   signal oC2     : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_31 : std_logic;
   signal XLXN_32 : std_logic;
   signal XLXN_33 : std_logic;
   signal XLXN_40 : std_logic;
   signal XLXN_41 : std_logic;
   signal XLXN_42 : std_logic;
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
   XLXI_1 : XOR2
      port map (I0=>iB0,
                I1=>iA0,
                O=>XLXN_4);
   
   XLXI_2 : XOR2
      port map (I0=>iC0,
                I1=>XLXN_4,
                O=>oS0);
   
   XLXI_3 : AND2
      port map (I0=>iC0,
                I1=>XLXN_4,
                O=>XLXN_3);
   
   XLXI_4 : AND2
      port map (I0=>iB0,
                I1=>iA0,
                O=>XLXN_2);
   
   XLXI_5 : OR2
      port map (I0=>XLXN_2,
                I1=>XLXN_3,
                O=>oC0);
   
   XLXI_6 : XOR2
      port map (I0=>iB1,
                I1=>iA1,
                O=>XLXN_15);
   
   XLXI_7 : XOR2
      port map (I0=>oC0,
                I1=>XLXN_15,
                O=>oS1);
   
   XLXI_8 : AND2
      port map (I0=>oC0,
                I1=>XLXN_15,
                O=>XLXN_14);
   
   XLXI_9 : AND2
      port map (I0=>iB1,
                I1=>iA1,
                O=>XLXN_13);
   
   XLXI_10 : OR2
      port map (I0=>XLXN_13,
                I1=>XLXN_14,
                O=>oC1);
   
   XLXI_16 : XOR2
      port map (I0=>iB2,
                I1=>iA2,
                O=>XLXN_33);
   
   XLXI_17 : XOR2
      port map (I0=>oC1,
                I1=>XLXN_33,
                O=>oS2);
   
   XLXI_18 : AND2
      port map (I0=>oC1,
                I1=>XLXN_33,
                O=>XLXN_32);
   
   XLXI_19 : AND2
      port map (I0=>iB2,
                I1=>iA2,
                O=>XLXN_31);
   
   XLXI_20 : OR2
      port map (I0=>XLXN_31,
                I1=>XLXN_32,
                O=>oC2);
   
   XLXI_21 : XOR2
      port map (I0=>iB3,
                I1=>iA3,
                O=>XLXN_42);
   
   XLXI_22 : XOR2
      port map (I0=>oC2,
                I1=>XLXN_42,
                O=>oS3);
   
   XLXI_23 : AND2
      port map (I0=>oC2,
                I1=>XLXN_42,
                O=>XLXN_41);
   
   XLXI_24 : AND2
      port map (I0=>iB3,
                I1=>iA3,
                O=>XLXN_40);
   
   XLXI_25 : OR2
      port map (I0=>XLXN_40,
                I1=>XLXN_41,
                O=>oC3);
   
end BEHAVIORAL;


