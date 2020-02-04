-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Feb  4 17:17:36 2020
-- Host        : lnx231.classe.cornell.edu running 64-bit Scientific Linux release 7.7 (Nitrogen)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MC_L3PHIC_stub.vhdl
-- Design      : MC_L3PHIC
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu7p-flvb2104-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    match1_dataarray_data_V_ce0 : out STD_LOGIC;
    match2_dataarray_data_V_ce0 : out STD_LOGIC;
    match3_dataarray_data_V_ce0 : out STD_LOGIC;
    match4_dataarray_data_V_ce0 : out STD_LOGIC;
    match5_dataarray_data_V_ce0 : out STD_LOGIC;
    match6_dataarray_data_V_ce0 : out STD_LOGIC;
    match7_dataarray_data_V_ce0 : out STD_LOGIC;
    match8_dataarray_data_V_ce0 : out STD_LOGIC;
    allstub_dataarray_data_V_ce0 : out STD_LOGIC;
    allproj_dataarray_data_V_ce0 : out STD_LOGIC;
    bx_o_V_ap_vld : out STD_LOGIC;
    fullmatch1_dataarray_data_V_ce0 : out STD_LOGIC;
    fullmatch1_dataarray_data_V_we0 : out STD_LOGIC;
    fullmatch1_nentries_0_V_ap_vld : out STD_LOGIC;
    fullmatch1_nentries_1_V_ap_vld : out STD_LOGIC;
    fullmatch2_dataarray_data_V_ce0 : out STD_LOGIC;
    fullmatch2_dataarray_data_V_we0 : out STD_LOGIC;
    fullmatch2_nentries_0_V_ap_vld : out STD_LOGIC;
    fullmatch2_nentries_1_V_ap_vld : out STD_LOGIC;
    fullmatch3_dataarray_data_V_ce0 : out STD_LOGIC;
    fullmatch3_dataarray_data_V_we0 : out STD_LOGIC;
    fullmatch3_nentries_0_V_ap_vld : out STD_LOGIC;
    fullmatch3_nentries_1_V_ap_vld : out STD_LOGIC;
    fullmatch4_dataarray_data_V_ce0 : out STD_LOGIC;
    fullmatch4_dataarray_data_V_we0 : out STD_LOGIC;
    fullmatch4_nentries_0_V_ap_vld : out STD_LOGIC;
    fullmatch4_nentries_1_V_ap_vld : out STD_LOGIC;
    fullmatch5_dataarray_data_V_ce0 : out STD_LOGIC;
    fullmatch5_dataarray_data_V_we0 : out STD_LOGIC;
    fullmatch5_nentries_0_V_ap_vld : out STD_LOGIC;
    fullmatch5_nentries_1_V_ap_vld : out STD_LOGIC;
    fullmatch6_dataarray_data_V_ce0 : out STD_LOGIC;
    fullmatch6_dataarray_data_V_we0 : out STD_LOGIC;
    fullmatch6_nentries_0_V_ap_vld : out STD_LOGIC;
    fullmatch6_nentries_1_V_ap_vld : out STD_LOGIC;
    fullmatch7_dataarray_data_V_ce0 : out STD_LOGIC;
    fullmatch7_dataarray_data_V_we0 : out STD_LOGIC;
    fullmatch7_nentries_0_V_ap_vld : out STD_LOGIC;
    fullmatch7_nentries_1_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    bx_V : in STD_LOGIC_VECTOR ( 2 downto 0 );
    match1_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    match1_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    match1_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match1_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match2_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    match2_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    match2_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match2_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match3_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    match3_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    match3_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match3_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match4_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    match4_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    match4_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match4_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match5_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    match5_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    match5_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match5_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match6_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    match6_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    match6_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match6_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match7_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    match7_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    match7_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match7_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match8_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    match8_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    match8_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    match8_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allstub_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    allstub_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 35 downto 0 );
    allstub_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allstub_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allstub_nentries_2_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allstub_nentries_3_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allstub_nentries_4_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allstub_nentries_5_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allstub_nentries_6_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allstub_nentries_7_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allproj_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    allproj_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    allproj_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allproj_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allproj_nentries_2_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allproj_nentries_3_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allproj_nentries_4_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allproj_nentries_5_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allproj_nentries_6_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    allproj_nentries_7_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bx_o_V : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fullmatch1_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch1_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 44 downto 0 );
    fullmatch1_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch1_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch2_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch2_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 44 downto 0 );
    fullmatch2_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch2_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch3_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch3_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 44 downto 0 );
    fullmatch3_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch3_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch4_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch4_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 44 downto 0 );
    fullmatch4_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch4_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch5_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch5_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 44 downto 0 );
    fullmatch5_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch5_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch6_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch6_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 44 downto 0 );
    fullmatch6_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch6_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch7_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch7_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 44 downto 0 );
    fullmatch7_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fullmatch7_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "match1_dataarray_data_V_ce0,match2_dataarray_data_V_ce0,match3_dataarray_data_V_ce0,match4_dataarray_data_V_ce0,match5_dataarray_data_V_ce0,match6_dataarray_data_V_ce0,match7_dataarray_data_V_ce0,match8_dataarray_data_V_ce0,allstub_dataarray_data_V_ce0,allproj_dataarray_data_V_ce0,bx_o_V_ap_vld,fullmatch1_dataarray_data_V_ce0,fullmatch1_dataarray_data_V_we0,fullmatch1_nentries_0_V_ap_vld,fullmatch1_nentries_1_V_ap_vld,fullmatch2_dataarray_data_V_ce0,fullmatch2_dataarray_data_V_we0,fullmatch2_nentries_0_V_ap_vld,fullmatch2_nentries_1_V_ap_vld,fullmatch3_dataarray_data_V_ce0,fullmatch3_dataarray_data_V_we0,fullmatch3_nentries_0_V_ap_vld,fullmatch3_nentries_1_V_ap_vld,fullmatch4_dataarray_data_V_ce0,fullmatch4_dataarray_data_V_we0,fullmatch4_nentries_0_V_ap_vld,fullmatch4_nentries_1_V_ap_vld,fullmatch5_dataarray_data_V_ce0,fullmatch5_dataarray_data_V_we0,fullmatch5_nentries_0_V_ap_vld,fullmatch5_nentries_1_V_ap_vld,fullmatch6_dataarray_data_V_ce0,fullmatch6_dataarray_data_V_we0,fullmatch6_nentries_0_V_ap_vld,fullmatch6_nentries_1_V_ap_vld,fullmatch7_dataarray_data_V_ce0,fullmatch7_dataarray_data_V_we0,fullmatch7_nentries_0_V_ap_vld,fullmatch7_nentries_1_V_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bx_V[2:0],match1_dataarray_data_V_address0[7:0],match1_dataarray_data_V_q0[13:0],match1_nentries_0_V[7:0],match1_nentries_1_V[7:0],match2_dataarray_data_V_address0[7:0],match2_dataarray_data_V_q0[13:0],match2_nentries_0_V[7:0],match2_nentries_1_V[7:0],match3_dataarray_data_V_address0[7:0],match3_dataarray_data_V_q0[13:0],match3_nentries_0_V[7:0],match3_nentries_1_V[7:0],match4_dataarray_data_V_address0[7:0],match4_dataarray_data_V_q0[13:0],match4_nentries_0_V[7:0],match4_nentries_1_V[7:0],match5_dataarray_data_V_address0[7:0],match5_dataarray_data_V_q0[13:0],match5_nentries_0_V[7:0],match5_nentries_1_V[7:0],match6_dataarray_data_V_address0[7:0],match6_dataarray_data_V_q0[13:0],match6_nentries_0_V[7:0],match6_nentries_1_V[7:0],match7_dataarray_data_V_address0[7:0],match7_dataarray_data_V_q0[13:0],match7_nentries_0_V[7:0],match7_nentries_1_V[7:0],match8_dataarray_data_V_address0[7:0],match8_dataarray_data_V_q0[13:0],match8_nentries_0_V[7:0],match8_nentries_1_V[7:0],allstub_dataarray_data_V_address0[9:0],allstub_dataarray_data_V_q0[35:0],allstub_nentries_0_V[7:0],allstub_nentries_1_V[7:0],allstub_nentries_2_V[7:0],allstub_nentries_3_V[7:0],allstub_nentries_4_V[7:0],allstub_nentries_5_V[7:0],allstub_nentries_6_V[7:0],allstub_nentries_7_V[7:0],allproj_dataarray_data_V_address0[9:0],allproj_dataarray_data_V_q0[59:0],allproj_nentries_0_V[7:0],allproj_nentries_1_V[7:0],allproj_nentries_2_V[7:0],allproj_nentries_3_V[7:0],allproj_nentries_4_V[7:0],allproj_nentries_5_V[7:0],allproj_nentries_6_V[7:0],allproj_nentries_7_V[7:0],bx_o_V[2:0],fullmatch1_dataarray_data_V_address0[7:0],fullmatch1_dataarray_data_V_d0[44:0],fullmatch1_nentries_0_V[7:0],fullmatch1_nentries_1_V[7:0],fullmatch2_dataarray_data_V_address0[7:0],fullmatch2_dataarray_data_V_d0[44:0],fullmatch2_nentries_0_V[7:0],fullmatch2_nentries_1_V[7:0],fullmatch3_dataarray_data_V_address0[7:0],fullmatch3_dataarray_data_V_d0[44:0],fullmatch3_nentries_0_V[7:0],fullmatch3_nentries_1_V[7:0],fullmatch4_dataarray_data_V_address0[7:0],fullmatch4_dataarray_data_V_d0[44:0],fullmatch4_nentries_0_V[7:0],fullmatch4_nentries_1_V[7:0],fullmatch5_dataarray_data_V_address0[7:0],fullmatch5_dataarray_data_V_d0[44:0],fullmatch5_nentries_0_V[7:0],fullmatch5_nentries_1_V[7:0],fullmatch6_dataarray_data_V_address0[7:0],fullmatch6_dataarray_data_V_d0[44:0],fullmatch6_nentries_0_V[7:0],fullmatch6_nentries_1_V[7:0],fullmatch7_dataarray_data_V_address0[7:0],fullmatch7_dataarray_data_V_d0[44:0],fullmatch7_nentries_0_V[7:0],fullmatch7_nentries_1_V[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MatchCalculatorTop,Vivado 2018.2";
begin
end;
