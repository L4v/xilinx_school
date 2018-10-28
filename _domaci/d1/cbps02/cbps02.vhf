--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : cbps02.vhf
-- /___/   /\     Timestamp : 10/28/2018 12:12:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/jigsaw/workspace/xilinx/_domaci/d1/cbps02/cbps02.vhf -w /home/jigsaw/workspace/xilinx/_domaci/d1/cbps02/cbps02.sch
--Design Name: cbps02
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

entity cbps02 is
   port ( iA0 : in    std_logic; 
          iA1 : in    std_logic; 
          iA2 : in    std_logic; 
          iA3 : in    std_logic; 
          iB0 : in    std_logic; 
          iB1 : in    std_logic; 
          iB2 : in    std_logic; 
          iB3 : in    std_logic; 
          iC0 : in    std_logic; 
          oC  : out   std_logic; 
          oS0 : out   std_logic; 
          oS1 : out   std_logic; 
          oS2 : out   std_logic; 
          oS3 : out   std_logic);
end cbps02;

architecture BEHAVIORAL of cbps02 is
   attribute BOX_TYPE   : string ;
   signal XLXN_5   : std_logic;
   signal XLXN_9   : std_logic;
   signal XLXN_10  : std_logic;
   signal XLXN_26  : std_logic;
   signal XLXN_27  : std_logic;
   signal XLXN_32  : std_logic;
   signal XLXN_33  : std_logic;
   signal XLXN_34  : std_logic;
   signal XLXN_39  : std_logic;
   signal XLXN_40  : std_logic;
   signal XLXN_41  : std_logic;
   signal XLXN_46  : std_logic;
   signal XLXN_52  : std_logic;
   signal XLXN_53  : std_logic;
   signal oC_DUMMY : std_logic;
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
   oC <= oC_DUMMY;
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
                O=>XLXN_10);
   
   XLXI_4 : AND2
      port map (I0=>iB0,
                I1=>iA0,
                O=>XLXN_9);
   
   XLXI_5 : OR2
      port map (I0=>XLXN_9,
                I1=>XLXN_10,
                O=>oC_DUMMY);
   
   XLXI_11 : XOR2
      port map (I0=>iB1,
                I1=>iA1,
                O=>XLXN_32);
   
   XLXI_12 : XOR2
      port map (I0=>oC_DUMMY,
                I1=>XLXN_32,
                O=>oS1);
   
   XLXI_13 : AND2
      port map (I0=>oC_DUMMY,
                I1=>XLXN_32,
                O=>XLXN_26);
   
   XLXI_14 : AND2
      port map (I0=>iB1,
                I1=>iA1,
                O=>XLXN_27);
   
   XLXI_15 : OR2
      port map (I0=>XLXN_27,
                I1=>XLXN_26,
                O=>XLXN_52);
   
   XLXI_16 : XOR2
      port map (I0=>iB2,
                I1=>iA2,
                O=>XLXN_39);
   
   XLXI_17 : XOR2
      port map (I0=>XLXN_52,
                I1=>XLXN_39,
                O=>oS2);
   
   XLXI_18 : AND2
      port map (I0=>XLXN_52,
                I1=>XLXN_39,
                O=>XLXN_33);
   
   XLXI_19 : AND2
      port map (I0=>iB2,
                I1=>iA2,
                O=>XLXN_34);
   
   XLXI_20 : OR2
      port map (I0=>XLXN_34,
                I1=>XLXN_33,
                O=>XLXN_53);
   
   XLXI_21 : XOR2
      port map (I0=>iB3,
                I1=>iA3,
                O=>XLXN_46);
   
   XLXI_22 : XOR2
      port map (I0=>XLXN_53,
                I1=>XLXN_46,
                O=>oS3);
   
   XLXI_23 : AND2
      port map (I0=>XLXN_53,
                I1=>XLXN_46,
                O=>XLXN_40);
   
   XLXI_24 : AND2
      port map (I0=>iB3,
                I1=>iA3,
                O=>XLXN_41);
   
   XLXI_25 : OR2
      port map (I0=>XLXN_41,
                I1=>XLXN_40,
                O=>oC_DUMMY);
   
end BEHAVIORAL;


