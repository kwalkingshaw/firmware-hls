-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Jan 21 17:54:38 2020
-- Host        : lnx231.classe.cornell.edu running 64-bit Scientific Linux release 7.7 (Nitrogen)
-- Command     : write_vhdl -force -mode synth_stub
--               /mnt/scratch/rz393/firmware-hls_1/IntegrationTests/PRME_Test/PRME_Test/PRME_Test.srcs/sources_1/ip/MatchEngineTopL1_0/MatchEngineTopL1_0_stub.vhdl
-- Design      : MatchEngineTopL1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu7p-flvb2104-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MatchEngineTopL1_0 is
  Port ( 
    bx_o_V_ap_vld : out STD_LOGIC;
    instubdata_dataarray_data_V_ce0 : out STD_LOGIC;
    inprojdata_dataarray_data_V_ce0 : out STD_LOGIC;
    outcandmatch_dataarray_data_V_ce0 : out STD_LOGIC;
    outcandmatch_dataarray_data_V_we0 : out STD_LOGIC;
    outcandmatch_nentries_0_V_ap_vld : out STD_LOGIC;
    outcandmatch_nentries_1_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    bx_V : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bx_o_V : out STD_LOGIC_VECTOR ( 2 downto 0 );
    instubdata_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    instubdata_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    instubdata_nentries_0_V_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_0_V_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_0_V_2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_0_V_3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_0_V_4 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_0_V_5 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_0_V_6 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_0_V_7 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_1_V_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_1_V_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_1_V_2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_1_V_3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_1_V_4 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_1_V_5 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_1_V_6 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_1_V_7 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_2_V_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_2_V_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_2_V_2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_2_V_3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_2_V_4 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_2_V_5 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_2_V_6 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_2_V_7 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_3_V_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_3_V_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_3_V_2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_3_V_3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_3_V_4 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_3_V_5 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_3_V_6 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    instubdata_nentries_3_V_7 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    inprojdata_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    inprojdata_dataarray_data_V_q0 : in STD_LOGIC_VECTOR ( 20 downto 0 );
    inprojdata_nentries_0_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inprojdata_nentries_1_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outcandmatch_dataarray_data_V_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    outcandmatch_dataarray_data_V_d0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    outcandmatch_nentries_0_V : out STD_LOGIC_VECTOR ( 7 downto 0 );
    outcandmatch_nentries_1_V : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end MatchEngineTopL1_0;

architecture stub of MatchEngineTopL1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bx_o_V_ap_vld,instubdata_dataarray_data_V_ce0,inprojdata_dataarray_data_V_ce0,outcandmatch_dataarray_data_V_ce0,outcandmatch_dataarray_data_V_we0,outcandmatch_nentries_0_V_ap_vld,outcandmatch_nentries_1_V_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bx_V[2:0],bx_o_V[2:0],instubdata_dataarray_data_V_address0[8:0],instubdata_dataarray_data_V_q0[13:0],instubdata_nentries_0_V_0[4:0],instubdata_nentries_0_V_1[4:0],instubdata_nentries_0_V_2[4:0],instubdata_nentries_0_V_3[4:0],instubdata_nentries_0_V_4[4:0],instubdata_nentries_0_V_5[4:0],instubdata_nentries_0_V_6[4:0],instubdata_nentries_0_V_7[4:0],instubdata_nentries_1_V_0[4:0],instubdata_nentries_1_V_1[4:0],instubdata_nentries_1_V_2[4:0],instubdata_nentries_1_V_3[4:0],instubdata_nentries_1_V_4[4:0],instubdata_nentries_1_V_5[4:0],instubdata_nentries_1_V_6[4:0],instubdata_nentries_1_V_7[4:0],instubdata_nentries_2_V_0[4:0],instubdata_nentries_2_V_1[4:0],instubdata_nentries_2_V_2[4:0],instubdata_nentries_2_V_3[4:0],instubdata_nentries_2_V_4[4:0],instubdata_nentries_2_V_5[4:0],instubdata_nentries_2_V_6[4:0],instubdata_nentries_2_V_7[4:0],instubdata_nentries_3_V_0[4:0],instubdata_nentries_3_V_1[4:0],instubdata_nentries_3_V_2[4:0],instubdata_nentries_3_V_3[4:0],instubdata_nentries_3_V_4[4:0],instubdata_nentries_3_V_5[4:0],instubdata_nentries_3_V_6[4:0],instubdata_nentries_3_V_7[4:0],inprojdata_dataarray_data_V_address0[7:0],inprojdata_dataarray_data_V_q0[20:0],inprojdata_nentries_0_V[7:0],inprojdata_nentries_1_V[7:0],outcandmatch_dataarray_data_V_address0[7:0],outcandmatch_dataarray_data_V_d0[13:0],outcandmatch_nentries_0_V[7:0],outcandmatch_nentries_1_V[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MatchEngineTopL1,Vivado 2018.2";
begin
end;
