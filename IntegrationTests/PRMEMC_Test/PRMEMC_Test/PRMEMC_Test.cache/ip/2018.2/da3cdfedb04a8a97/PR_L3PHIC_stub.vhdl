-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Feb  4 17:40:14 2020
-- Host        : lnx231.classe.cornell.edu running 64-bit Scientific Linux release 7.7 (Nitrogen)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PR_L3PHIC_stub.vhdl
-- Design      : PR_L3PHIC
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu7p-flvb2104-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    proj1in_dataarray_data_V_ce0 : out STD_LOGIC;
    proj2in_dataarray_data_V_ce0 : out STD_LOGIC;
    proj3in_dataarray_data_V_ce0 : out STD_LOGIC;
    proj4in_dataarray_data_V_ce0 : out STD_LOGIC;
    proj5in_dataarray_data_V_ce0 : out STD_LOGIC;
    proj6in_dataarray_data_V_ce0 : out STD_LOGIC;
    proj7in_dataarray_data_V_ce0 : out STD_LOGIC;
    proj8in_dataarray_data_V_ce0 : out STD_LOGIC;
    bx_o_V_ap_vld : out STD_LOGIC;
    allprojout_dataarray_data_V_ce0 : out STD_LOGIC;
    allprojout_dataarray_data_V_we0 : out STD_LOGIC;
    allprojout_nentries_0_V_ap_vld : out STD_LOGIC;
    allprojout_nentries_1_V_ap_vld : out STD_LOGIC;
    allprojout_nentries_2_V_ap_vld : out STD_LOGIC;
    allprojout_nentries_3_V_ap_vld : out STD_LOGIC;
    allprojout_nentries_4_V_ap_vld : out STD_LOGIC;
    allprojout_nentries_5_V_ap_vld : out STD_LOGIC;
    allprojout_nentries_6_V_ap_vld : out STD_LOGIC;
    allprojout_nentries_7_V_ap_vld : out STD_LOGIC;
    vmprojout1_dataarray_data_V_ce0 : out STD_LOGIC;
    vmprojout1_dataarray_data_V_we0 : out STD_LOGIC;
    vmprojout1_nentries_0_V_ap_vld : out STD_LOGIC;
    vmprojout1_nentries_1_V_ap_vld : out STD_LOGIC;
    vmprojout2_dataarray_data_V_ce0 : out STD_LOGIC;
    vmprojout2_dataarray_data_V_we0 : out STD_LOGIC;
    vmprojout2_nentries_0_V_ap_vld : out STD_LOGIC;
    vmprojout2_nentries_1_V_ap_vld : out STD_LOGIC;
    vmprojout3_dataarray_data_V_ce0 : out STD_LOGIC;
    vmprojout3_dataarray_data_V_we0 : out STD_LOGIC;
    vmprojout3_nentries_0_V_ap_vld : out STD_LOGIC;
    vmprojout3_nentries_1_V_ap_vld : out STD_LOGIC;
    vmprojout4_dataarray_data_V_ce0 : out STD_LOGIC;
    vmprojout4_dataarray_data_V_we0 : out STD_LOGIC;
    vmprojout4_nentries_0_V_ap_vld : out STD_LOGIC;
    vmprojout4_nentries_1_V_ap_vld : out STD_LOGIC;
    vmprojout5_dataarray_data_V_ce0 : out STD_LOGIC;
    vmprojout5_dataarray_data_V_we0 : out STD_LOGIC;
    vmprojout5_nentries_0_V_ap_vld : out STD_LOGIC;
    vmprojout5_nentries_1_V_ap_vld : out STD_LOGIC;
    vmprojout6_dataarray_data_V_ce0 : out STD_LOGIC;
    vmprojout6_dataarray_data_V_we0 : out STD_LOGIC;
    vmprojout6_nentries_0_V_ap_vld : out STD_LOGIC;
    vmprojout6_nentries_1_V_ap_vld : out STD_LOGIC;
    vmprojout7_dataarray_data_V_ce0 : out STD_LOGIC;
    vmprojout7_dataarray_data_V_we0 : out STD_LOGIC;
    vmprojout7_nentries_0_V_ap_vld : out STD_LOGIC;
    vmprojout7_nentries_1_V_ap_vld : out STD_LOGIC;
    vmprojout8_dataarray_data_V_ce0 : out STD_LOGIC;
    vmprojout8_dataarray_data_V_we0 : out STD_LOGIC;
    vmprojout8_nentries_0_V_ap_vld : out STD_LOGIC;
    vmprojout8_nentries_1_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    bx_V : in STD_LOGIC_VECTOR ( 2 downto 0 );
    proj1in_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    proj1in_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    proj1in_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj1in_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj2in_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    proj2in_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    proj2in_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj2in_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj3in_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    proj3in_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    proj3in_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj3in_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj4in_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    proj4in_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    proj4in_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj4in_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj5in_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    proj5in_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    proj5in_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj5in_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj6in_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    proj6in_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    proj6in_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj6in_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj7in_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    proj7in_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    proj7in_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj7in_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj8in_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    proj8in_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    proj8in_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    proj8in_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bx_o_V : out STD_LOGIC_VECTOR ( 2 downto 0 );
    allprojout_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    allprojout_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 59 downto 0 );
    allprojout_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    allprojout_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    allprojout_nentries_2_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    allprojout_nentries_3_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    allprojout_nentries_4_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    allprojout_nentries_5_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    allprojout_nentries_6_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    allprojout_nentries_7_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout1_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout1_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 20 downto 0 );
    vmprojout1_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout1_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout2_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout2_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 20 downto 0 );
    vmprojout2_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout2_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout3_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout3_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 20 downto 0 );
    vmprojout3_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout3_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout4_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout4_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 20 downto 0 );
    vmprojout4_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout4_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout5_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout5_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 20 downto 0 );
    vmprojout5_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout5_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout6_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout6_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 20 downto 0 );
    vmprojout6_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout6_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout7_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout7_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 20 downto 0 );
    vmprojout7_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout7_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout8_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout8_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 20 downto 0 );
    vmprojout8_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vmprojout8_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "proj1in_dataarray_data_V_ce0,proj2in_dataarray_data_V_ce0,proj3in_dataarray_data_V_ce0,proj4in_dataarray_data_V_ce0,proj5in_dataarray_data_V_ce0,proj6in_dataarray_data_V_ce0,proj7in_dataarray_data_V_ce0,proj8in_dataarray_data_V_ce0,bx_o_V_ap_vld,allprojout_dataarray_data_V_ce0,allprojout_dataarray_data_V_we0,allprojout_nentries_0_V_ap_vld,allprojout_nentries_1_V_ap_vld,allprojout_nentries_2_V_ap_vld,allprojout_nentries_3_V_ap_vld,allprojout_nentries_4_V_ap_vld,allprojout_nentries_5_V_ap_vld,allprojout_nentries_6_V_ap_vld,allprojout_nentries_7_V_ap_vld,vmprojout1_dataarray_data_V_ce0,vmprojout1_dataarray_data_V_we0,vmprojout1_nentries_0_V_ap_vld,vmprojout1_nentries_1_V_ap_vld,vmprojout2_dataarray_data_V_ce0,vmprojout2_dataarray_data_V_we0,vmprojout2_nentries_0_V_ap_vld,vmprojout2_nentries_1_V_ap_vld,vmprojout3_dataarray_data_V_ce0,vmprojout3_dataarray_data_V_we0,vmprojout3_nentries_0_V_ap_vld,vmprojout3_nentries_1_V_ap_vld,vmprojout4_dataarray_data_V_ce0,vmprojout4_dataarray_data_V_we0,vmprojout4_nentries_0_V_ap_vld,vmprojout4_nentries_1_V_ap_vld,vmprojout5_dataarray_data_V_ce0,vmprojout5_dataarray_data_V_we0,vmprojout5_nentries_0_V_ap_vld,vmprojout5_nentries_1_V_ap_vld,vmprojout6_dataarray_data_V_ce0,vmprojout6_dataarray_data_V_we0,vmprojout6_nentries_0_V_ap_vld,vmprojout6_nentries_1_V_ap_vld,vmprojout7_dataarray_data_V_ce0,vmprojout7_dataarray_data_V_we0,vmprojout7_nentries_0_V_ap_vld,vmprojout7_nentries_1_V_ap_vld,vmprojout8_dataarray_data_V_ce0,vmprojout8_dataarray_data_V_we0,vmprojout8_nentries_0_V_ap_vld,vmprojout8_nentries_1_V_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bx_V[2:0],proj1in_dataarray_data_V_address0[7:0],proj1in_dataarray_data_V_q0[59:0],proj1in_nentries_0_V[7:0],proj1in_nentries_1_V[7:0],proj2in_dataarray_data_V_address0[7:0],proj2in_dataarray_data_V_q0[59:0],proj2in_nentries_0_V[7:0],proj2in_nentries_1_V[7:0],proj3in_dataarray_data_V_address0[7:0],proj3in_dataarray_data_V_q0[59:0],proj3in_nentries_0_V[7:0],proj3in_nentries_1_V[7:0],proj4in_dataarray_data_V_address0[7:0],proj4in_dataarray_data_V_q0[59:0],proj4in_nentries_0_V[7:0],proj4in_nentries_1_V[7:0],proj5in_dataarray_data_V_address0[7:0],proj5in_dataarray_data_V_q0[59:0],proj5in_nentries_0_V[7:0],proj5in_nentries_1_V[7:0],proj6in_dataarray_data_V_address0[7:0],proj6in_dataarray_data_V_q0[59:0],proj6in_nentries_0_V[7:0],proj6in_nentries_1_V[7:0],proj7in_dataarray_data_V_address0[7:0],proj7in_dataarray_data_V_q0[59:0],proj7in_nentries_0_V[7:0],proj7in_nentries_1_V[7:0],proj8in_dataarray_data_V_address0[7:0],proj8in_dataarray_data_V_q0[59:0],proj8in_nentries_0_V[7:0],proj8in_nentries_1_V[7:0],bx_o_V[2:0],allprojout_dataarray_data_V_address0[9:0],allprojout_dataarray_data_V_d0[59:0],allprojout_nentries_0_V[7:0],allprojout_nentries_1_V[7:0],allprojout_nentries_2_V[7:0],allprojout_nentries_3_V[7:0],allprojout_nentries_4_V[7:0],allprojout_nentries_5_V[7:0],allprojout_nentries_6_V[7:0],allprojout_nentries_7_V[7:0],vmprojout1_dataarray_data_V_address0[7:0],vmprojout1_dataarray_data_V_d0[20:0],vmprojout1_nentries_0_V[7:0],vmprojout1_nentries_1_V[7:0],vmprojout2_dataarray_data_V_address0[7:0],vmprojout2_dataarray_data_V_d0[20:0],vmprojout2_nentries_0_V[7:0],vmprojout2_nentries_1_V[7:0],vmprojout3_dataarray_data_V_address0[7:0],vmprojout3_dataarray_data_V_d0[20:0],vmprojout3_nentries_0_V[7:0],vmprojout3_nentries_1_V[7:0],vmprojout4_dataarray_data_V_address0[7:0],vmprojout4_dataarray_data_V_d0[20:0],vmprojout4_nentries_0_V[7:0],vmprojout4_nentries_1_V[7:0],vmprojout5_dataarray_data_V_address0[7:0],vmprojout5_dataarray_data_V_d0[20:0],vmprojout5_nentries_0_V[7:0],vmprojout5_nentries_1_V[7:0],vmprojout6_dataarray_data_V_address0[7:0],vmprojout6_dataarray_data_V_d0[20:0],vmprojout6_nentries_0_V[7:0],vmprojout6_nentries_1_V[7:0],vmprojout7_dataarray_data_V_address0[7:0],vmprojout7_dataarray_data_V_d0[20:0],vmprojout7_nentries_0_V[7:0],vmprojout7_nentries_1_V[7:0],vmprojout8_dataarray_data_V_address0[7:0],vmprojout8_dataarray_data_V_d0[20:0],vmprojout8_nentries_0_V[7:0],vmprojout8_nentries_1_V[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ProjectionRouterTop,Vivado 2018.2";
begin
end;
