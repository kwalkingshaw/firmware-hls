// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Jan 29 18:01:52 2020
// Host        : lnx231.classe.cornell.edu running 64-bit Scientific Linux release 7.7 (Nitrogen)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MatchEngineTopL1_0_sim_netlist.v
// Design      : MatchEngineTopL1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu7p-flvb2104-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ap_ST_fsm_state1 = "3'b001" *) (* ap_ST_fsm_state2 = "3'b010" *) (* ap_ST_fsm_state3 = "3'b100" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MatchEngineTopL1
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    bx_V,
    bx_o_V,
    bx_o_V_ap_vld,
    instubdata_dataarray_data_V_address0,
    instubdata_dataarray_data_V_ce0,
    instubdata_dataarray_data_V_q0,
    instubdata_nentries_0_V_0,
    instubdata_nentries_0_V_1,
    instubdata_nentries_0_V_2,
    instubdata_nentries_0_V_3,
    instubdata_nentries_0_V_4,
    instubdata_nentries_0_V_5,
    instubdata_nentries_0_V_6,
    instubdata_nentries_0_V_7,
    instubdata_nentries_1_V_0,
    instubdata_nentries_1_V_1,
    instubdata_nentries_1_V_2,
    instubdata_nentries_1_V_3,
    instubdata_nentries_1_V_4,
    instubdata_nentries_1_V_5,
    instubdata_nentries_1_V_6,
    instubdata_nentries_1_V_7,
    instubdata_nentries_2_V_0,
    instubdata_nentries_2_V_1,
    instubdata_nentries_2_V_2,
    instubdata_nentries_2_V_3,
    instubdata_nentries_2_V_4,
    instubdata_nentries_2_V_5,
    instubdata_nentries_2_V_6,
    instubdata_nentries_2_V_7,
    instubdata_nentries_3_V_0,
    instubdata_nentries_3_V_1,
    instubdata_nentries_3_V_2,
    instubdata_nentries_3_V_3,
    instubdata_nentries_3_V_4,
    instubdata_nentries_3_V_5,
    instubdata_nentries_3_V_6,
    instubdata_nentries_3_V_7,
    inprojdata_dataarray_data_V_address0,
    inprojdata_dataarray_data_V_ce0,
    inprojdata_dataarray_data_V_q0,
    inprojdata_nentries_0_V,
    inprojdata_nentries_1_V,
    outcandmatch_dataarray_data_V_address0,
    outcandmatch_dataarray_data_V_ce0,
    outcandmatch_dataarray_data_V_we0,
    outcandmatch_dataarray_data_V_d0,
    outcandmatch_nentries_0_V,
    outcandmatch_nentries_0_V_ap_vld,
    outcandmatch_nentries_1_V,
    outcandmatch_nentries_1_V_ap_vld);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [2:0]bx_V;
  output [2:0]bx_o_V;
  output bx_o_V_ap_vld;
  output [8:0]instubdata_dataarray_data_V_address0;
  output instubdata_dataarray_data_V_ce0;
  input [13:0]instubdata_dataarray_data_V_q0;
  input [4:0]instubdata_nentries_0_V_0;
  input [4:0]instubdata_nentries_0_V_1;
  input [4:0]instubdata_nentries_0_V_2;
  input [4:0]instubdata_nentries_0_V_3;
  input [4:0]instubdata_nentries_0_V_4;
  input [4:0]instubdata_nentries_0_V_5;
  input [4:0]instubdata_nentries_0_V_6;
  input [4:0]instubdata_nentries_0_V_7;
  input [4:0]instubdata_nentries_1_V_0;
  input [4:0]instubdata_nentries_1_V_1;
  input [4:0]instubdata_nentries_1_V_2;
  input [4:0]instubdata_nentries_1_V_3;
  input [4:0]instubdata_nentries_1_V_4;
  input [4:0]instubdata_nentries_1_V_5;
  input [4:0]instubdata_nentries_1_V_6;
  input [4:0]instubdata_nentries_1_V_7;
  input [4:0]instubdata_nentries_2_V_0;
  input [4:0]instubdata_nentries_2_V_1;
  input [4:0]instubdata_nentries_2_V_2;
  input [4:0]instubdata_nentries_2_V_3;
  input [4:0]instubdata_nentries_2_V_4;
  input [4:0]instubdata_nentries_2_V_5;
  input [4:0]instubdata_nentries_2_V_6;
  input [4:0]instubdata_nentries_2_V_7;
  input [4:0]instubdata_nentries_3_V_0;
  input [4:0]instubdata_nentries_3_V_1;
  input [4:0]instubdata_nentries_3_V_2;
  input [4:0]instubdata_nentries_3_V_3;
  input [4:0]instubdata_nentries_3_V_4;
  input [4:0]instubdata_nentries_3_V_5;
  input [4:0]instubdata_nentries_3_V_6;
  input [4:0]instubdata_nentries_3_V_7;
  output [7:0]inprojdata_dataarray_data_V_address0;
  output inprojdata_dataarray_data_V_ce0;
  input [20:0]inprojdata_dataarray_data_V_q0;
  input [7:0]inprojdata_nentries_0_V;
  input [7:0]inprojdata_nentries_1_V;
  output [7:0]outcandmatch_dataarray_data_V_address0;
  output outcandmatch_dataarray_data_V_ce0;
  output outcandmatch_dataarray_data_V_we0;
  output [13:0]outcandmatch_dataarray_data_V_d0;
  output [7:0]outcandmatch_nentries_0_V;
  output outcandmatch_nentries_0_V_ap_vld;
  output [7:0]outcandmatch_nentries_1_V;
  output outcandmatch_nentries_1_V_ap_vld;

  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire ap_CS_fsm_state2;
  wire ap_clk;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [2:0]bx_V;
  wire [2:0]bx_o_V;
  wire bx_o_V_1_data_reg0;
  wire bx_o_V_ap_vld;
  wire grp_MatchEngine_1_0_s_fu_332_ap_start_reg;
  wire grp_MatchEngine_1_0_s_fu_332_n_11;
  wire grp_MatchEngine_1_0_s_fu_332_n_23;
  wire grp_MatchEngine_1_0_s_fu_332_n_24;
  wire grp_MatchEngine_1_0_s_fu_332_n_26;
  wire [6:0]\^inprojdata_dataarray_data_V_address0 ;
  wire inprojdata_dataarray_data_V_ce0;
  wire [20:0]inprojdata_dataarray_data_V_q0;
  wire [7:0]inprojdata_nentries_0_V;
  wire [7:0]inprojdata_nentries_1_V;
  wire [8:0]instubdata_dataarray_data_V_address0;
  wire instubdata_dataarray_data_V_ce0;
  wire [13:0]instubdata_dataarray_data_V_q0;
  wire [4:0]instubdata_nentries_0_V_0;
  wire [4:0]instubdata_nentries_0_V_1;
  wire [4:0]instubdata_nentries_0_V_2;
  wire [4:0]instubdata_nentries_0_V_3;
  wire [4:0]instubdata_nentries_0_V_4;
  wire [4:0]instubdata_nentries_0_V_5;
  wire [4:0]instubdata_nentries_0_V_6;
  wire [4:0]instubdata_nentries_0_V_7;
  wire [4:0]instubdata_nentries_1_V_0;
  wire [4:0]instubdata_nentries_1_V_1;
  wire [4:0]instubdata_nentries_1_V_2;
  wire [4:0]instubdata_nentries_1_V_3;
  wire [4:0]instubdata_nentries_1_V_4;
  wire [4:0]instubdata_nentries_1_V_5;
  wire [4:0]instubdata_nentries_1_V_6;
  wire [4:0]instubdata_nentries_1_V_7;
  wire [4:0]instubdata_nentries_2_V_0;
  wire [4:0]instubdata_nentries_2_V_1;
  wire [4:0]instubdata_nentries_2_V_2;
  wire [4:0]instubdata_nentries_2_V_3;
  wire [4:0]instubdata_nentries_2_V_4;
  wire [4:0]instubdata_nentries_2_V_5;
  wire [4:0]instubdata_nentries_2_V_6;
  wire [4:0]instubdata_nentries_2_V_7;
  wire [4:0]instubdata_nentries_3_V_0;
  wire [4:0]instubdata_nentries_3_V_1;
  wire [4:0]instubdata_nentries_3_V_2;
  wire [4:0]instubdata_nentries_3_V_3;
  wire [4:0]instubdata_nentries_3_V_4;
  wire [4:0]instubdata_nentries_3_V_5;
  wire [4:0]instubdata_nentries_3_V_6;
  wire [4:0]instubdata_nentries_3_V_7;
  wire [7:0]outcandmatch_dataarray_data_V_address0;
  wire outcandmatch_dataarray_data_V_ce0;
  wire [13:0]outcandmatch_dataarray_data_V_d0;
  wire outcandmatch_dataarray_data_V_we0;
  wire [7:0]outcandmatch_nentries_0_V;
  wire outcandmatch_nentries_0_V_ap_vld;
  wire [7:0]outcandmatch_nentries_1_V;
  wire [1:1]p_0_in;

  assign ap_done = ap_ready;
  assign inprojdata_dataarray_data_V_address0[7] = instubdata_dataarray_data_V_address0[7];
  assign inprojdata_dataarray_data_V_address0[6:0] = \^inprojdata_dataarray_data_V_address0 [6:0];
  assign outcandmatch_nentries_1_V_ap_vld = outcandmatch_nentries_0_V_ap_vld;
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h003A)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_ready),
        .I1(ap_start),
        .I2(p_0_in),
        .I3(ap_CS_fsm_state2),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(p_0_in),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_MatchEngine_1_0_s_fu_332_n_24),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_MatchEngine_1_0_s_fu_332_n_23),
        .Q(ap_ready),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(p_0_in),
        .I1(ap_start),
        .O(ap_idle));
  FDRE #(
    .INIT(1'b0)) 
    \bx_o_V_1_data_reg_reg[0] 
       (.C(ap_clk),
        .CE(bx_o_V_1_data_reg0),
        .D(bx_V[0]),
        .Q(bx_o_V[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bx_o_V_1_data_reg_reg[1] 
       (.C(ap_clk),
        .CE(bx_o_V_1_data_reg0),
        .D(bx_V[1]),
        .Q(bx_o_V[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bx_o_V_1_data_reg_reg[2] 
       (.C(ap_clk),
        .CE(bx_o_V_1_data_reg0),
        .D(bx_V[2]),
        .Q(bx_o_V[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bx_o_V_1_vld_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_MatchEngine_1_0_s_fu_332_n_11),
        .Q(bx_o_V_ap_vld),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MatchEngine_1_0_s grp_MatchEngine_1_0_s_fu_332
       (.D({grp_MatchEngine_1_0_s_fu_332_n_23,grp_MatchEngine_1_0_s_fu_332_n_24}),
        .E(bx_o_V_1_data_reg0),
        .Q({ap_ready,ap_CS_fsm_state2,p_0_in}),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .bx_V(bx_V[1:0]),
        .bx_o_V_1_vld_reg_reg(grp_MatchEngine_1_0_s_fu_332_n_11),
        .bx_o_V_ap_vld(bx_o_V_ap_vld),
        .grp_MatchEngine_1_0_s_fu_332_ap_start_reg(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .grp_MatchEngine_1_0_s_fu_332_ap_start_reg_reg(grp_MatchEngine_1_0_s_fu_332_n_26),
        .inprojdata_dataarray_data_V_address0(\^inprojdata_dataarray_data_V_address0 ),
        .inprojdata_dataarray_data_V_ce0(inprojdata_dataarray_data_V_ce0),
        .inprojdata_dataarray_data_V_q0({inprojdata_dataarray_data_V_q0[20:2],inprojdata_dataarray_data_V_q0[0]}),
        .inprojdata_nentries_0_V(inprojdata_nentries_0_V),
        .inprojdata_nentries_1_V(inprojdata_nentries_1_V),
        .instubdata_dataarray_data_V_address0(instubdata_dataarray_data_V_address0[6:0]),
        .\instubdata_dataarray_data_V_address0[7] (instubdata_dataarray_data_V_address0[7]),
        .\instubdata_dataarray_data_V_address0[8] (instubdata_dataarray_data_V_address0[8]),
        .instubdata_dataarray_data_V_ce0(instubdata_dataarray_data_V_ce0),
        .instubdata_dataarray_data_V_q0(instubdata_dataarray_data_V_q0),
        .instubdata_nentries_0_V_0(instubdata_nentries_0_V_0),
        .instubdata_nentries_0_V_1(instubdata_nentries_0_V_1),
        .instubdata_nentries_0_V_2(instubdata_nentries_0_V_2),
        .instubdata_nentries_0_V_3(instubdata_nentries_0_V_3),
        .instubdata_nentries_0_V_4(instubdata_nentries_0_V_4),
        .instubdata_nentries_0_V_5(instubdata_nentries_0_V_5),
        .instubdata_nentries_0_V_6(instubdata_nentries_0_V_6),
        .instubdata_nentries_0_V_7(instubdata_nentries_0_V_7),
        .instubdata_nentries_1_V_0(instubdata_nentries_1_V_0),
        .instubdata_nentries_1_V_1(instubdata_nentries_1_V_1),
        .instubdata_nentries_1_V_2(instubdata_nentries_1_V_2),
        .instubdata_nentries_1_V_3(instubdata_nentries_1_V_3),
        .instubdata_nentries_1_V_4(instubdata_nentries_1_V_4),
        .instubdata_nentries_1_V_5(instubdata_nentries_1_V_5),
        .instubdata_nentries_1_V_6(instubdata_nentries_1_V_6),
        .instubdata_nentries_1_V_7(instubdata_nentries_1_V_7),
        .instubdata_nentries_2_V_0(instubdata_nentries_2_V_0),
        .instubdata_nentries_2_V_1(instubdata_nentries_2_V_1),
        .instubdata_nentries_2_V_2(instubdata_nentries_2_V_2),
        .instubdata_nentries_2_V_3(instubdata_nentries_2_V_3),
        .instubdata_nentries_2_V_4(instubdata_nentries_2_V_4),
        .instubdata_nentries_2_V_5(instubdata_nentries_2_V_5),
        .instubdata_nentries_2_V_6(instubdata_nentries_2_V_6),
        .instubdata_nentries_2_V_7(instubdata_nentries_2_V_7),
        .instubdata_nentries_3_V_0(instubdata_nentries_3_V_0),
        .instubdata_nentries_3_V_1(instubdata_nentries_3_V_1),
        .instubdata_nentries_3_V_2(instubdata_nentries_3_V_2),
        .instubdata_nentries_3_V_3(instubdata_nentries_3_V_3),
        .instubdata_nentries_3_V_4(instubdata_nentries_3_V_4),
        .instubdata_nentries_3_V_5(instubdata_nentries_3_V_5),
        .instubdata_nentries_3_V_6(instubdata_nentries_3_V_6),
        .instubdata_nentries_3_V_7(instubdata_nentries_3_V_7),
        .out(outcandmatch_dataarray_data_V_address0[6:0]),
        .outcandmatch_dataarray_data_V_address0(outcandmatch_dataarray_data_V_address0[7]),
        .outcandmatch_dataarray_data_V_ce0(outcandmatch_dataarray_data_V_ce0),
        .outcandmatch_dataarray_data_V_d0(outcandmatch_dataarray_data_V_d0),
        .outcandmatch_dataarray_data_V_we0(outcandmatch_dataarray_data_V_we0),
        .outcandmatch_nentries_0_V(outcandmatch_nentries_0_V),
        .outcandmatch_nentries_0_V_ap_vld(outcandmatch_nentries_0_V_ap_vld),
        .outcandmatch_nentries_1_V(outcandmatch_nentries_1_V));
  FDRE #(
    .INIT(1'b0)) 
    grp_MatchEngine_1_0_s_fu_332_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_MatchEngine_1_0_s_fu_332_n_26),
        .Q(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .R(ap_rst));
endmodule

(* CHECK_LICENSE_TYPE = "MatchEngineTopL1_0,MatchEngineTopL1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "MatchEngineTopL1,Vivado 2018.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (bx_o_V_ap_vld,
    instubdata_dataarray_data_V_ce0,
    inprojdata_dataarray_data_V_ce0,
    outcandmatch_dataarray_data_V_ce0,
    outcandmatch_dataarray_data_V_we0,
    outcandmatch_nentries_0_V_ap_vld,
    outcandmatch_nentries_1_V_ap_vld,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    bx_V,
    bx_o_V,
    instubdata_dataarray_data_V_address0,
    instubdata_dataarray_data_V_q0,
    instubdata_nentries_0_V_0,
    instubdata_nentries_0_V_1,
    instubdata_nentries_0_V_2,
    instubdata_nentries_0_V_3,
    instubdata_nentries_0_V_4,
    instubdata_nentries_0_V_5,
    instubdata_nentries_0_V_6,
    instubdata_nentries_0_V_7,
    instubdata_nentries_1_V_0,
    instubdata_nentries_1_V_1,
    instubdata_nentries_1_V_2,
    instubdata_nentries_1_V_3,
    instubdata_nentries_1_V_4,
    instubdata_nentries_1_V_5,
    instubdata_nentries_1_V_6,
    instubdata_nentries_1_V_7,
    instubdata_nentries_2_V_0,
    instubdata_nentries_2_V_1,
    instubdata_nentries_2_V_2,
    instubdata_nentries_2_V_3,
    instubdata_nentries_2_V_4,
    instubdata_nentries_2_V_5,
    instubdata_nentries_2_V_6,
    instubdata_nentries_2_V_7,
    instubdata_nentries_3_V_0,
    instubdata_nentries_3_V_1,
    instubdata_nentries_3_V_2,
    instubdata_nentries_3_V_3,
    instubdata_nentries_3_V_4,
    instubdata_nentries_3_V_5,
    instubdata_nentries_3_V_6,
    instubdata_nentries_3_V_7,
    inprojdata_dataarray_data_V_address0,
    inprojdata_dataarray_data_V_q0,
    inprojdata_nentries_0_V,
    inprojdata_nentries_1_V,
    outcandmatch_dataarray_data_V_address0,
    outcandmatch_dataarray_data_V_d0,
    outcandmatch_nentries_0_V,
    outcandmatch_nentries_1_V);
  output bx_o_V_ap_vld;
  output instubdata_dataarray_data_V_ce0;
  output inprojdata_dataarray_data_V_ce0;
  output outcandmatch_dataarray_data_V_ce0;
  output outcandmatch_dataarray_data_V_we0;
  output outcandmatch_nentries_0_V_ap_vld;
  output outcandmatch_nentries_1_V_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 bx_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bx_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [2:0]bx_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 bx_o_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bx_o_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [2:0]bx_o_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_dataarray_data_V_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_dataarray_data_V_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [8:0]instubdata_dataarray_data_V_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_dataarray_data_V_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_dataarray_data_V_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [13:0]instubdata_dataarray_data_V_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_0_V_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_0_V_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_0_V_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_0_V_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_0_V_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_0_V_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_0_V_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_0_V_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_1_V_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_1_V_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_1_V_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_1_V_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_1_V_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_1_V_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_1_V_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_1_V_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_2_V_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_2_V_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_2_V_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_2_V_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_2_V_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_2_V_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_2_V_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_2_V_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_3_V_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_3_V_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_3_V_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_3_V_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_3_V_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_3_V_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_3_V_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [4:0]instubdata_nentries_3_V_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inprojdata_dataarray_data_V_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inprojdata_dataarray_data_V_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [7:0]inprojdata_dataarray_data_V_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inprojdata_dataarray_data_V_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inprojdata_dataarray_data_V_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 21} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [20:0]inprojdata_dataarray_data_V_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inprojdata_nentries_0_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inprojdata_nentries_0_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [7:0]inprojdata_nentries_0_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inprojdata_nentries_1_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inprojdata_nentries_1_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [7:0]inprojdata_nentries_1_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 outcandmatch_dataarray_data_V_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outcandmatch_dataarray_data_V_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [7:0]outcandmatch_dataarray_data_V_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 outcandmatch_dataarray_data_V_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outcandmatch_dataarray_data_V_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [13:0]outcandmatch_dataarray_data_V_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 outcandmatch_nentries_0_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outcandmatch_nentries_0_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [7:0]outcandmatch_nentries_0_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 outcandmatch_nentries_1_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outcandmatch_nentries_1_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [7:0]outcandmatch_nentries_1_V;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [2:0]bx_V;
  wire [2:0]bx_o_V;
  wire bx_o_V_ap_vld;
  wire [7:0]inprojdata_dataarray_data_V_address0;
  wire inprojdata_dataarray_data_V_ce0;
  wire [20:0]inprojdata_dataarray_data_V_q0;
  wire [7:0]inprojdata_nentries_0_V;
  wire [7:0]inprojdata_nentries_1_V;
  wire [8:0]instubdata_dataarray_data_V_address0;
  wire instubdata_dataarray_data_V_ce0;
  wire [13:0]instubdata_dataarray_data_V_q0;
  wire [4:0]instubdata_nentries_0_V_0;
  wire [4:0]instubdata_nentries_0_V_1;
  wire [4:0]instubdata_nentries_0_V_2;
  wire [4:0]instubdata_nentries_0_V_3;
  wire [4:0]instubdata_nentries_0_V_4;
  wire [4:0]instubdata_nentries_0_V_5;
  wire [4:0]instubdata_nentries_0_V_6;
  wire [4:0]instubdata_nentries_0_V_7;
  wire [4:0]instubdata_nentries_1_V_0;
  wire [4:0]instubdata_nentries_1_V_1;
  wire [4:0]instubdata_nentries_1_V_2;
  wire [4:0]instubdata_nentries_1_V_3;
  wire [4:0]instubdata_nentries_1_V_4;
  wire [4:0]instubdata_nentries_1_V_5;
  wire [4:0]instubdata_nentries_1_V_6;
  wire [4:0]instubdata_nentries_1_V_7;
  wire [4:0]instubdata_nentries_2_V_0;
  wire [4:0]instubdata_nentries_2_V_1;
  wire [4:0]instubdata_nentries_2_V_2;
  wire [4:0]instubdata_nentries_2_V_3;
  wire [4:0]instubdata_nentries_2_V_4;
  wire [4:0]instubdata_nentries_2_V_5;
  wire [4:0]instubdata_nentries_2_V_6;
  wire [4:0]instubdata_nentries_2_V_7;
  wire [4:0]instubdata_nentries_3_V_0;
  wire [4:0]instubdata_nentries_3_V_1;
  wire [4:0]instubdata_nentries_3_V_2;
  wire [4:0]instubdata_nentries_3_V_3;
  wire [4:0]instubdata_nentries_3_V_4;
  wire [4:0]instubdata_nentries_3_V_5;
  wire [4:0]instubdata_nentries_3_V_6;
  wire [4:0]instubdata_nentries_3_V_7;
  wire [7:0]outcandmatch_dataarray_data_V_address0;
  wire outcandmatch_dataarray_data_V_ce0;
  wire [13:0]outcandmatch_dataarray_data_V_d0;
  wire outcandmatch_dataarray_data_V_we0;
  wire [7:0]outcandmatch_nentries_0_V;
  wire outcandmatch_nentries_0_V_ap_vld;
  wire [7:0]outcandmatch_nentries_1_V;
  wire outcandmatch_nentries_1_V_ap_vld;

  (* ap_ST_fsm_state1 = "3'b001" *) 
  (* ap_ST_fsm_state2 = "3'b010" *) 
  (* ap_ST_fsm_state3 = "3'b100" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MatchEngineTopL1 inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .bx_V(bx_V),
        .bx_o_V(bx_o_V),
        .bx_o_V_ap_vld(bx_o_V_ap_vld),
        .inprojdata_dataarray_data_V_address0(inprojdata_dataarray_data_V_address0),
        .inprojdata_dataarray_data_V_ce0(inprojdata_dataarray_data_V_ce0),
        .inprojdata_dataarray_data_V_q0(inprojdata_dataarray_data_V_q0),
        .inprojdata_nentries_0_V(inprojdata_nentries_0_V),
        .inprojdata_nentries_1_V(inprojdata_nentries_1_V),
        .instubdata_dataarray_data_V_address0(instubdata_dataarray_data_V_address0),
        .instubdata_dataarray_data_V_ce0(instubdata_dataarray_data_V_ce0),
        .instubdata_dataarray_data_V_q0(instubdata_dataarray_data_V_q0),
        .instubdata_nentries_0_V_0(instubdata_nentries_0_V_0),
        .instubdata_nentries_0_V_1(instubdata_nentries_0_V_1),
        .instubdata_nentries_0_V_2(instubdata_nentries_0_V_2),
        .instubdata_nentries_0_V_3(instubdata_nentries_0_V_3),
        .instubdata_nentries_0_V_4(instubdata_nentries_0_V_4),
        .instubdata_nentries_0_V_5(instubdata_nentries_0_V_5),
        .instubdata_nentries_0_V_6(instubdata_nentries_0_V_6),
        .instubdata_nentries_0_V_7(instubdata_nentries_0_V_7),
        .instubdata_nentries_1_V_0(instubdata_nentries_1_V_0),
        .instubdata_nentries_1_V_1(instubdata_nentries_1_V_1),
        .instubdata_nentries_1_V_2(instubdata_nentries_1_V_2),
        .instubdata_nentries_1_V_3(instubdata_nentries_1_V_3),
        .instubdata_nentries_1_V_4(instubdata_nentries_1_V_4),
        .instubdata_nentries_1_V_5(instubdata_nentries_1_V_5),
        .instubdata_nentries_1_V_6(instubdata_nentries_1_V_6),
        .instubdata_nentries_1_V_7(instubdata_nentries_1_V_7),
        .instubdata_nentries_2_V_0(instubdata_nentries_2_V_0),
        .instubdata_nentries_2_V_1(instubdata_nentries_2_V_1),
        .instubdata_nentries_2_V_2(instubdata_nentries_2_V_2),
        .instubdata_nentries_2_V_3(instubdata_nentries_2_V_3),
        .instubdata_nentries_2_V_4(instubdata_nentries_2_V_4),
        .instubdata_nentries_2_V_5(instubdata_nentries_2_V_5),
        .instubdata_nentries_2_V_6(instubdata_nentries_2_V_6),
        .instubdata_nentries_2_V_7(instubdata_nentries_2_V_7),
        .instubdata_nentries_3_V_0(instubdata_nentries_3_V_0),
        .instubdata_nentries_3_V_1(instubdata_nentries_3_V_1),
        .instubdata_nentries_3_V_2(instubdata_nentries_3_V_2),
        .instubdata_nentries_3_V_3(instubdata_nentries_3_V_3),
        .instubdata_nentries_3_V_4(instubdata_nentries_3_V_4),
        .instubdata_nentries_3_V_5(instubdata_nentries_3_V_5),
        .instubdata_nentries_3_V_6(instubdata_nentries_3_V_6),
        .instubdata_nentries_3_V_7(instubdata_nentries_3_V_7),
        .outcandmatch_dataarray_data_V_address0(outcandmatch_dataarray_data_V_address0),
        .outcandmatch_dataarray_data_V_ce0(outcandmatch_dataarray_data_V_ce0),
        .outcandmatch_dataarray_data_V_d0(outcandmatch_dataarray_data_V_d0),
        .outcandmatch_dataarray_data_V_we0(outcandmatch_dataarray_data_V_we0),
        .outcandmatch_nentries_0_V(outcandmatch_nentries_0_V),
        .outcandmatch_nentries_0_V_ap_vld(outcandmatch_nentries_0_V_ap_vld),
        .outcandmatch_nentries_1_V(outcandmatch_nentries_1_V),
        .outcandmatch_nentries_1_V_ap_vld(outcandmatch_nentries_1_V_ap_vld));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MatchEngine_1_0_s
   (instubdata_dataarray_data_V_ce0,
    outcandmatch_dataarray_data_V_ce0,
    \instubdata_dataarray_data_V_address0[8] ,
    \instubdata_dataarray_data_V_address0[7] ,
    out,
    bx_o_V_1_vld_reg_reg,
    E,
    inprojdata_dataarray_data_V_ce0,
    inprojdata_dataarray_data_V_address0,
    outcandmatch_dataarray_data_V_we0,
    outcandmatch_dataarray_data_V_address0,
    D,
    outcandmatch_nentries_0_V_ap_vld,
    grp_MatchEngine_1_0_s_fu_332_ap_start_reg_reg,
    instubdata_dataarray_data_V_address0,
    outcandmatch_dataarray_data_V_d0,
    outcandmatch_nentries_0_V,
    outcandmatch_nentries_1_V,
    ap_rst,
    ap_clk,
    bx_V,
    grp_MatchEngine_1_0_s_fu_332_ap_start_reg,
    bx_o_V_ap_vld,
    ap_start,
    Q,
    inprojdata_dataarray_data_V_q0,
    instubdata_nentries_0_V_4,
    instubdata_nentries_0_V_5,
    instubdata_nentries_0_V_6,
    instubdata_nentries_0_V_7,
    instubdata_nentries_2_V_0,
    instubdata_nentries_2_V_1,
    instubdata_nentries_2_V_2,
    instubdata_nentries_2_V_3,
    instubdata_nentries_2_V_4,
    instubdata_nentries_2_V_5,
    instubdata_nentries_2_V_6,
    instubdata_nentries_2_V_7,
    instubdata_nentries_3_V_0,
    instubdata_nentries_3_V_1,
    instubdata_nentries_3_V_2,
    instubdata_nentries_3_V_3,
    instubdata_nentries_0_V_2,
    instubdata_nentries_0_V_3,
    instubdata_nentries_0_V_0,
    instubdata_nentries_0_V_1,
    instubdata_nentries_3_V_6,
    instubdata_nentries_3_V_7,
    instubdata_nentries_3_V_4,
    instubdata_nentries_3_V_5,
    instubdata_nentries_1_V_5,
    instubdata_nentries_1_V_4,
    instubdata_nentries_1_V_7,
    instubdata_nentries_1_V_6,
    instubdata_nentries_1_V_3,
    instubdata_nentries_1_V_2,
    instubdata_nentries_1_V_1,
    instubdata_nentries_1_V_0,
    inprojdata_nentries_1_V,
    inprojdata_nentries_0_V,
    instubdata_dataarray_data_V_q0);
  output instubdata_dataarray_data_V_ce0;
  output outcandmatch_dataarray_data_V_ce0;
  output \instubdata_dataarray_data_V_address0[8] ;
  output \instubdata_dataarray_data_V_address0[7] ;
  output [6:0]out;
  output bx_o_V_1_vld_reg_reg;
  output [0:0]E;
  output inprojdata_dataarray_data_V_ce0;
  output [6:0]inprojdata_dataarray_data_V_address0;
  output outcandmatch_dataarray_data_V_we0;
  output [0:0]outcandmatch_dataarray_data_V_address0;
  output [1:0]D;
  output outcandmatch_nentries_0_V_ap_vld;
  output grp_MatchEngine_1_0_s_fu_332_ap_start_reg_reg;
  output [6:0]instubdata_dataarray_data_V_address0;
  output [13:0]outcandmatch_dataarray_data_V_d0;
  output [7:0]outcandmatch_nentries_0_V;
  output [7:0]outcandmatch_nentries_1_V;
  input ap_rst;
  input ap_clk;
  input [1:0]bx_V;
  input grp_MatchEngine_1_0_s_fu_332_ap_start_reg;
  input bx_o_V_ap_vld;
  input ap_start;
  input [2:0]Q;
  input [19:0]inprojdata_dataarray_data_V_q0;
  input [4:0]instubdata_nentries_0_V_4;
  input [4:0]instubdata_nentries_0_V_5;
  input [4:0]instubdata_nentries_0_V_6;
  input [4:0]instubdata_nentries_0_V_7;
  input [4:0]instubdata_nentries_2_V_0;
  input [4:0]instubdata_nentries_2_V_1;
  input [4:0]instubdata_nentries_2_V_2;
  input [4:0]instubdata_nentries_2_V_3;
  input [4:0]instubdata_nentries_2_V_4;
  input [4:0]instubdata_nentries_2_V_5;
  input [4:0]instubdata_nentries_2_V_6;
  input [4:0]instubdata_nentries_2_V_7;
  input [4:0]instubdata_nentries_3_V_0;
  input [4:0]instubdata_nentries_3_V_1;
  input [4:0]instubdata_nentries_3_V_2;
  input [4:0]instubdata_nentries_3_V_3;
  input [4:0]instubdata_nentries_0_V_2;
  input [4:0]instubdata_nentries_0_V_3;
  input [4:0]instubdata_nentries_0_V_0;
  input [4:0]instubdata_nentries_0_V_1;
  input [4:0]instubdata_nentries_3_V_6;
  input [4:0]instubdata_nentries_3_V_7;
  input [4:0]instubdata_nentries_3_V_4;
  input [4:0]instubdata_nentries_3_V_5;
  input [4:0]instubdata_nentries_1_V_5;
  input [4:0]instubdata_nentries_1_V_4;
  input [4:0]instubdata_nentries_1_V_7;
  input [4:0]instubdata_nentries_1_V_6;
  input [4:0]instubdata_nentries_1_V_3;
  input [4:0]instubdata_nentries_1_V_2;
  input [4:0]instubdata_nentries_1_V_1;
  input [4:0]instubdata_nentries_1_V_0;
  input [7:0]inprojdata_nentries_1_V;
  input [7:0]inprojdata_nentries_0_V;
  input [13:0]instubdata_dataarray_data_V_q0;

  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \addr_index_assign_fu_268[6]_i_4_n_0 ;
  wire [31:7]addr_index_assign_fu_268_reg;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_0 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_1 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_10 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_11 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_12 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_13 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_14 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_15 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_2 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_3 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_5 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_6 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_7 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_8 ;
  wire \addr_index_assign_fu_268_reg[16]_i_1_n_9 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_1 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_10 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_11 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_12 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_13 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_14 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_15 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_2 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_3 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_5 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_6 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_7 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_8 ;
  wire \addr_index_assign_fu_268_reg[24]_i_1_n_9 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_0 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_1 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_10 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_11 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_12 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_13 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_14 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_15 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_2 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_3 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_5 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_6 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_7 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_8 ;
  wire \addr_index_assign_fu_268_reg[6]_i_3_n_9 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_0 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_1 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_10 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_11 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_12 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_13 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_14 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_15 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_2 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_3 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_5 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_6 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_7 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_8 ;
  wire \addr_index_assign_fu_268_reg[8]_i_1_n_9 ;
  wire \ap_CS_fsm[0]_i_1__0_n_0 ;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [2:1]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter3;
  wire [0:0]ap_phi_mux_writeindextmp_V_phi_fu_577_p4;
  wire ap_rst;
  wire ap_start;
  wire brmerge_reg_3038;
  wire brmerge_reg_30380;
  wire buffernotempty_reg_3034;
  wire \buffernotempty_reg_3034[0]_i_1_n_0 ;
  wire buffernotempty_reg_3034_pp0_iter2_reg;
  wire \buffernotempty_reg_3034_pp0_iter3_reg_reg_n_0_[0] ;
  wire [1:0]bx_V;
  wire \bx_o_V_1_data_reg[2]_i_2_n_0 ;
  wire bx_o_V_1_vld_reg_reg;
  wire bx_o_V_ap_vld;
  wire clear;
  wire grp_MatchEngine_1_0_s_fu_332_ap_ready;
  wire grp_MatchEngine_1_0_s_fu_332_ap_start_reg;
  wire grp_MatchEngine_1_0_s_fu_332_ap_start_reg_reg;
  wire [1:0]grp_fu_626_p2;
  wire [6:0]inprojdata_dataarray_data_V_address0;
  wire \inprojdata_dataarray_data_V_address0[3]_INST_0_i_1_n_0 ;
  wire \inprojdata_dataarray_data_V_address0[4]_INST_0_i_1_n_0 ;
  wire \inprojdata_dataarray_data_V_address0[5]_INST_0_i_1_n_0 ;
  wire \inprojdata_dataarray_data_V_address0[6]_INST_0_i_1_n_0 ;
  wire \inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ;
  wire \inprojdata_dataarray_data_V_address0[6]_INST_0_i_3_n_0 ;
  wire \inprojdata_dataarray_data_V_address0[6]_INST_0_i_4_n_0 ;
  wire inprojdata_dataarray_data_V_ce0;
  wire [19:0]inprojdata_dataarray_data_V_q0;
  wire [7:0]inprojdata_nentries_0_V;
  wire [7:0]inprojdata_nentries_1_V;
  wire [6:0]instubdata_dataarray_data_V_address0;
  wire \instubdata_dataarray_data_V_address0[7] ;
  wire \instubdata_dataarray_data_V_address0[8] ;
  wire instubdata_dataarray_data_V_ce0;
  wire [13:0]instubdata_dataarray_data_V_q0;
  wire [4:0]instubdata_nentries_0_V_0;
  wire [4:0]instubdata_nentries_0_V_1;
  wire [4:0]instubdata_nentries_0_V_2;
  wire [4:0]instubdata_nentries_0_V_3;
  wire [4:0]instubdata_nentries_0_V_4;
  wire [4:0]instubdata_nentries_0_V_5;
  wire [4:0]instubdata_nentries_0_V_6;
  wire [4:0]instubdata_nentries_0_V_7;
  wire [4:0]instubdata_nentries_1_V_0;
  wire [4:0]instubdata_nentries_1_V_1;
  wire [4:0]instubdata_nentries_1_V_2;
  wire [4:0]instubdata_nentries_1_V_3;
  wire [4:0]instubdata_nentries_1_V_4;
  wire [4:0]instubdata_nentries_1_V_5;
  wire [4:0]instubdata_nentries_1_V_6;
  wire [4:0]instubdata_nentries_1_V_7;
  wire [4:0]instubdata_nentries_2_V_0;
  wire [4:0]instubdata_nentries_2_V_1;
  wire [4:0]instubdata_nentries_2_V_2;
  wire [4:0]instubdata_nentries_2_V_3;
  wire [4:0]instubdata_nentries_2_V_4;
  wire [4:0]instubdata_nentries_2_V_5;
  wire [4:0]instubdata_nentries_2_V_6;
  wire [4:0]instubdata_nentries_2_V_7;
  wire [4:0]instubdata_nentries_3_V_0;
  wire [4:0]instubdata_nentries_3_V_1;
  wire [4:0]instubdata_nentries_3_V_2;
  wire [4:0]instubdata_nentries_3_V_3;
  wire [4:0]instubdata_nentries_3_V_4;
  wire [4:0]instubdata_nentries_3_V_5;
  wire [4:0]instubdata_nentries_3_V_6;
  wire [4:0]instubdata_nentries_3_V_7;
  wire [6:0]iprojtmp_V_reg_585;
  wire \iprojtmp_V_reg_585[0]_i_1_n_0 ;
  wire \iprojtmp_V_reg_585[1]_i_1_n_0 ;
  wire \iprojtmp_V_reg_585[2]_i_1_n_0 ;
  wire \iprojtmp_V_reg_585[3]_i_1_n_0 ;
  wire \iprojtmp_V_reg_585[4]_i_1_n_0 ;
  wire \iprojtmp_V_reg_585[5]_i_1_n_0 ;
  wire \iprojtmp_V_reg_585[6]_i_1_n_0 ;
  wire \iprojtmp_V_reg_585[6]_i_2_n_0 ;
  wire \iprojtmp_V_reg_585[6]_i_3_n_0 ;
  wire isPSseed_1_reg_3088;
  wire isPSseed_1_reg_30880;
  wire \isPSseed_1_reg_3088[0]_i_3_n_0 ;
  wire \isPSseed_1_reg_3088[0]_i_4_n_0 ;
  wire isPSseed_fu_272;
  wire isPSseed_fu_2720;
  wire [6:1]istep_V_fu_713_p2;
  wire [3:1]istub_V_1_fu_2277_p2;
  wire [1:1]istub_V_fu_300;
  wire istub_V_fu_3000;
  wire istub_V_fu_3002;
  wire \istub_V_fu_300[0]_i_1_n_0 ;
  wire \istub_V_fu_300[3]_i_4_n_0 ;
  wire \istub_V_fu_300[3]_i_5_n_0 ;
  wire \istub_V_fu_300[3]_i_6_n_0 ;
  wire \istub_V_fu_300[3]_i_7_n_0 ;
  wire \istub_V_fu_300_reg_n_0_[0] ;
  wire \istub_V_fu_300_reg_n_0_[1] ;
  wire \istub_V_fu_300_reg_n_0_[2] ;
  wire \istub_V_fu_300_reg_n_0_[3] ;
  wire istubtmp_V_reg_30660;
  wire moreproj1_reg_608;
  wire \moreproj1_reg_608[0]_i_1_n_0 ;
  wire \moreproj1_reg_608[0]_i_2_n_0 ;
  wire \moreproj1_reg_608[0]_i_3_n_0 ;
  wire \moreproj1_reg_608[0]_i_4_n_0 ;
  wire \moreproj1_reg_608[0]_i_5_n_0 ;
  wire moreproj_1_reg_3061;
  wire \moreproj_1_reg_3061[0]_i_1_n_0 ;
  wire \moreproj_1_reg_3061[0]_i_2_n_0 ;
  wire moreproj_2_fu_844_p2;
  wire moreproj_2_fu_844_p2_carry_i_1_n_0;
  wire moreproj_2_fu_844_p2_carry_i_2_n_0;
  wire moreproj_2_fu_844_p2_carry_i_3_n_0;
  wire moreproj_2_fu_844_p2_carry_i_4_n_0;
  wire moreproj_2_fu_844_p2_carry_i_5_n_0;
  wire moreproj_2_fu_844_p2_carry_i_6_n_0;
  wire moreproj_2_fu_844_p2_carry_i_7_n_0;
  wire moreproj_2_fu_844_p2_carry_i_8_n_0;
  wire moreproj_2_fu_844_p2_carry_i_9_n_0;
  wire moreproj_2_fu_844_p2_carry_n_5;
  wire moreproj_2_fu_844_p2_carry_n_6;
  wire moreproj_2_fu_844_p2_carry_n_7;
  wire [7:0]nproj_V_fu_647_p3;
  wire [7:0]nproj_V_reg_2985;
  wire [3:0]nstubs_V_1_fu_276;
  wire \nstubs_V_1_fu_276[0]_i_3_n_0 ;
  wire \nstubs_V_1_fu_276[0]_i_4_n_0 ;
  wire \nstubs_V_1_fu_276[1]_i_3_n_0 ;
  wire \nstubs_V_1_fu_276[1]_i_4_n_0 ;
  wire \nstubs_V_1_fu_276[2]_i_3_n_0 ;
  wire \nstubs_V_1_fu_276[2]_i_4_n_0 ;
  wire \nstubs_V_1_fu_276[3]_i_2_n_0 ;
  wire \nstubs_V_1_fu_276[3]_i_4_n_0 ;
  wire \nstubs_V_1_fu_276[3]_i_6_n_0 ;
  wire \nstubs_V_1_fu_276[3]_i_7_n_0 ;
  wire \nstubs_V_1_fu_276_reg[0]_i_2_n_0 ;
  wire \nstubs_V_1_fu_276_reg[1]_i_2_n_0 ;
  wire \nstubs_V_1_fu_276_reg[2]_i_2_n_0 ;
  wire \nstubs_V_1_fu_276_reg[3]_i_5_n_0 ;
  wire [6:0]out;
  wire [0:0]outcandmatch_dataarray_data_V_address0;
  wire outcandmatch_dataarray_data_V_ce0;
  wire [13:0]outcandmatch_dataarray_data_V_d0;
  wire outcandmatch_dataarray_data_V_we0;
  wire outcandmatch_nentrie_2_fu_260;
  wire outcandmatch_nentrie_fu_264;
  wire \outcandmatch_nentrie_fu_264[7]_i_4_n_0 ;
  wire [7:0]outcandmatch_nentries_0_V;
  wire outcandmatch_nentries_0_V_ap_vld;
  wire [7:0]outcandmatch_nentries_1_V;
  wire [7:0]p_09_0_i_fu_2600_p2;
  wire p_0_out;
  wire \p_0_out_inferred__3/q0[0]_i_3_n_0 ;
  wire [3:0]p_1_in;
  wire \p_4_reg_597[0]_i_1_n_0 ;
  wire \p_4_reg_597[6]_i_4_n_0 ;
  wire [6:0]p_4_reg_597_reg__0;
  wire p_5_in;
  wire p_6_in;
  wire \p_Repl2_1_fu_292[6]_i_1_n_0 ;
  wire [4:1]p_Repl2_2_fu_296;
  wire \p_Repl2_s_fu_288[0]_i_1_n_0 ;
  wire \p_Repl2_s_fu_288[0]_i_2_n_0 ;
  wire \p_Repl2_s_fu_288[0]_i_3_n_0 ;
  wire \p_Repl2_s_fu_288[1]_i_1_n_0 ;
  wire \p_Repl2_s_fu_288[1]_i_2_n_0 ;
  wire \p_Repl2_s_fu_288[1]_i_3_n_0 ;
  wire \p_Repl2_s_fu_288[2]_i_1_n_0 ;
  wire \p_Repl2_s_fu_288[2]_i_2_n_0 ;
  wire \p_Repl2_s_fu_288[2]_i_3_n_0 ;
  wire \p_Repl2_s_fu_288[2]_i_4_n_0 ;
  wire \p_Repl2_s_fu_288[2]_i_5_n_0 ;
  wire pass_2_fu_2538_p3;
  wire pass_2_reg_3116;
  wire \pass_2_reg_3116[0]_i_2_n_0 ;
  wire \pass_2_reg_3116[0]_i_3_n_0 ;
  wire \pass_2_reg_3116[0]_i_4_n_0 ;
  wire \pass_2_reg_3116[0]_i_5_n_0 ;
  wire \pass_2_reg_3116[0]_i_6_n_0 ;
  wire [29:0]projbuffer_7_V_164_fu_2069_p3;
  wire [29:0]projbuffer_7_V_165_fu_2077_p3;
  wire [29:0]projbuffer_7_V_166_fu_2085_p3;
  wire [29:0]projbuffer_7_V_167_fu_2093_p3;
  wire [29:0]projbuffer_7_V_168_fu_2101_p3;
  wire [29:0]projbuffer_7_V_169_fu_2109_p3;
  wire [29:0]projbuffer_7_V_170_fu_2117_p3;
  wire projbuffer_7_V_22_fu_240;
  wire \projbuffer_7_V_22_fu_240[29]_i_3_n_0 ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[0] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[10] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[11] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[12] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[13] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[18] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[19] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[1] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[20] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[21] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[22] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[23] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[24] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[26] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[27] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[28] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[29] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[2] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[3] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[4] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[6] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[7] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[8] ;
  wire \projbuffer_7_V_22_fu_240_reg_n_0_[9] ;
  wire projbuffer_7_V_29_fu_236;
  wire \projbuffer_7_V_29_fu_236[29]_i_3_n_0 ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[0] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[10] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[11] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[12] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[13] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[18] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[19] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[1] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[20] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[21] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[22] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[23] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[24] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[26] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[27] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[28] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[29] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[2] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[3] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[4] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[6] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[7] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[8] ;
  wire \projbuffer_7_V_29_fu_236_reg_n_0_[9] ;
  wire projbuffer_7_V_35_fu_232;
  wire \projbuffer_7_V_35_fu_232[29]_i_3_n_0 ;
  wire \projbuffer_7_V_35_fu_232[29]_i_4_n_0 ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[0] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[10] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[11] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[12] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[13] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[18] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[19] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[1] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[20] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[21] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[22] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[23] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[24] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[26] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[27] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[28] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[29] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[2] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[3] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[4] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[6] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[7] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[8] ;
  wire \projbuffer_7_V_35_fu_232_reg_n_0_[9] ;
  wire projbuffer_7_V_40_fu_228;
  wire \projbuffer_7_V_40_fu_228[26]_i_10_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_11_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_12_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_13_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_14_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_15_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_16_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_17_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_18_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_19_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_20_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_21_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_22_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_23_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_24_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_5_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_6_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_7_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_8_n_0 ;
  wire \projbuffer_7_V_40_fu_228[26]_i_9_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_10_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_11_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_12_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_13_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_14_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_15_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_16_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_17_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_18_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_19_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_20_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_21_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_22_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_23_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_2_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_3_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_4_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_5_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_6_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_7_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_8_n_0 ;
  wire \projbuffer_7_V_40_fu_228[27]_i_9_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_10_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_11_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_12_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_13_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_14_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_15_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_16_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_17_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_18_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_19_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_20_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_21_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_22_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_2_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_3_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_4_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_5_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_6_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_7_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_8_n_0 ;
  wire \projbuffer_7_V_40_fu_228[28]_i_9_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_10_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_11_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_12_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_13_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_14_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_15_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_16_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_17_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_18_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_19_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_20_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_21_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_22_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_23_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_24_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_25_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_26_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_3_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_4_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_5_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_6_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_7_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_8_n_0 ;
  wire \projbuffer_7_V_40_fu_228[29]_i_9_n_0 ;
  wire \projbuffer_7_V_40_fu_228[2]_i_2_n_0 ;
  wire \projbuffer_7_V_40_fu_228[3]_i_2_n_0 ;
  wire \projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ;
  wire \projbuffer_7_V_40_fu_228_reg[26]_i_3_n_0 ;
  wire \projbuffer_7_V_40_fu_228_reg[26]_i_4_n_0 ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[0] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[10] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[11] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[12] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[13] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[18] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[19] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[1] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[20] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[21] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[22] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[23] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[24] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[26] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[27] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[28] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[29] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[2] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[3] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[4] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[6] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[7] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[8] ;
  wire \projbuffer_7_V_40_fu_228_reg_n_0_[9] ;
  wire projbuffer_7_V_44_fu_248;
  wire \projbuffer_7_V_44_fu_248[29]_i_3_n_0 ;
  wire \projbuffer_7_V_44_fu_248[29]_i_4_n_0 ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[0] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[10] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[11] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[12] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[13] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[18] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[19] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[1] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[20] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[21] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[22] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[23] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[24] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[26] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[27] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[28] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[29] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[2] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[3] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[4] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[6] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[7] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[8] ;
  wire \projbuffer_7_V_44_fu_248_reg_n_0_[9] ;
  wire projbuffer_7_V_45_fu_252;
  wire \projbuffer_7_V_45_fu_252[29]_i_3_n_0 ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[0] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[10] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[11] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[12] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[13] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[18] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[19] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[1] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[20] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[21] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[22] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[23] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[24] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[26] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[27] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[28] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[29] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[2] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[3] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[4] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[6] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[7] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[8] ;
  wire \projbuffer_7_V_45_fu_252_reg_n_0_[9] ;
  wire [29:0]projbuffer_7_V_6_fu_2061_p3;
  wire projbuffer_7_V_8_fu_244;
  wire \projbuffer_7_V_8_fu_244[29]_i_3_n_0 ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[0] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[10] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[11] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[12] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[13] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[18] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[19] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[1] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[20] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[21] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[22] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[23] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[24] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[26] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[27] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[28] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[29] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[2] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[3] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[4] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[6] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[7] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[8] ;
  wire \projbuffer_7_V_8_fu_244_reg_n_0_[9] ;
  wire projbuffer_7_V_fu_256;
  wire \projbuffer_7_V_fu_256[29]_i_3_n_0 ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[0] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[10] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[11] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[12] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[13] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[18] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[19] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[1] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[20] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[21] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[22] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[23] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[24] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[26] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[27] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[28] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[29] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[2] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[3] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[4] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[6] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[7] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[8] ;
  wire \projbuffer_7_V_fu_256_reg_n_0_[9] ;
  wire [4:3]projfinezadj_V_2_fu_2364_p3;
  wire [4:0]projfinezadj_V_2_reg_3093;
  wire \projfinezadj_V_2_reg_3093[0]_i_2_n_0 ;
  wire \projfinezadj_V_2_reg_3093[0]_i_3_n_0 ;
  wire \projfinezadj_V_2_reg_3093[1]_i_2_n_0 ;
  wire \projfinezadj_V_2_reg_3093[1]_i_3_n_0 ;
  wire \projfinezadj_V_2_reg_3093[2]_i_2_n_0 ;
  wire \projfinezadj_V_2_reg_3093[2]_i_3_n_0 ;
  wire \projfinezadj_V_2_reg_3093[4]_i_4_n_0 ;
  wire \projfinezadj_V_2_reg_3093[4]_i_5_n_0 ;
  wire \projfinezadj_V_2_reg_3093[4]_i_6_n_0 ;
  wire \projfinezadj_V_2_reg_3093[4]_i_7_n_0 ;
  wire \projfinezadj_V_2_reg_3093_reg[4]_i_2_n_0 ;
  wire \projfinezadj_V_2_reg_3093_reg[4]_i_3_n_0 ;
  wire [4:0]projfinezadj_V_3_fu_280;
  wire [6:0]projindex_V_reg_3078;
  wire \projindex_V_reg_3078[0]_i_2_n_0 ;
  wire \projindex_V_reg_3078[0]_i_3_n_0 ;
  wire \projindex_V_reg_3078[1]_i_2_n_0 ;
  wire \projindex_V_reg_3078[1]_i_3_n_0 ;
  wire \projindex_V_reg_3078[2]_i_2_n_0 ;
  wire \projindex_V_reg_3078[2]_i_3_n_0 ;
  wire \projindex_V_reg_3078[3]_i_2_n_0 ;
  wire \projindex_V_reg_3078[3]_i_3_n_0 ;
  wire \projindex_V_reg_3078[4]_i_2_n_0 ;
  wire \projindex_V_reg_3078[4]_i_3_n_0 ;
  wire \projindex_V_reg_3078[5]_i_2_n_0 ;
  wire \projindex_V_reg_3078[5]_i_3_n_0 ;
  wire \projindex_V_reg_3078[6]_i_2_n_0 ;
  wire \projindex_V_reg_3078[6]_i_3_n_0 ;
  wire [6:0]projindex_V_reg_3078_pp0_iter2_reg;
  wire [4:1]projrinv_V_reg_3083;
  wire \projrinv_V_reg_3083[1]_i_2_n_0 ;
  wire \projrinv_V_reg_3083[1]_i_3_n_0 ;
  wire \projrinv_V_reg_3083[2]_i_2_n_0 ;
  wire \projrinv_V_reg_3083[2]_i_3_n_0 ;
  wire \projrinv_V_reg_3083[3]_i_2_n_0 ;
  wire \projrinv_V_reg_3083[3]_i_3_n_0 ;
  wire \projrinv_V_reg_3083[4]_i_2_n_0 ;
  wire \projrinv_V_reg_3083[4]_i_3_n_0 ;
  wire [24:4]qdata_V_fu_764_p10;
  wire readindex_V_2_fu_284;
  wire readindex_V_2_fu_2840;
  wire \readindex_V_2_fu_284[2]_i_3_n_0 ;
  wire \readindex_V_2_fu_284_reg_n_0_[0] ;
  wire \readindex_V_2_fu_284_reg_n_0_[1] ;
  wire \readindex_V_2_fu_284_reg_n_0_[2] ;
  wire savefirst_reg_3044;
  wire \savefirst_reg_3044[0]_i_27_n_0 ;
  wire \savefirst_reg_3044[0]_i_28_n_0 ;
  wire \savefirst_reg_3044[0]_i_29_n_0 ;
  wire \savefirst_reg_3044[0]_i_2_n_0 ;
  wire \savefirst_reg_3044[0]_i_30_n_0 ;
  wire \savefirst_reg_3044[0]_i_31_n_0 ;
  wire \savefirst_reg_3044[0]_i_32_n_0 ;
  wire \savefirst_reg_3044[0]_i_33_n_0 ;
  wire \savefirst_reg_3044[0]_i_34_n_0 ;
  wire \savefirst_reg_3044[0]_i_35_n_0 ;
  wire \savefirst_reg_3044[0]_i_36_n_0 ;
  wire \savefirst_reg_3044[0]_i_37_n_0 ;
  wire \savefirst_reg_3044[0]_i_38_n_0 ;
  wire \savefirst_reg_3044[0]_i_39_n_0 ;
  wire \savefirst_reg_3044[0]_i_3_n_0 ;
  wire \savefirst_reg_3044[0]_i_40_n_0 ;
  wire \savefirst_reg_3044[0]_i_41_n_0 ;
  wire \savefirst_reg_3044[0]_i_42_n_0 ;
  wire \savefirst_reg_3044[0]_i_43_n_0 ;
  wire \savefirst_reg_3044[0]_i_44_n_0 ;
  wire \savefirst_reg_3044[0]_i_45_n_0 ;
  wire \savefirst_reg_3044[0]_i_46_n_0 ;
  wire \savefirst_reg_3044[0]_i_47_n_0 ;
  wire \savefirst_reg_3044[0]_i_48_n_0 ;
  wire \savefirst_reg_3044[0]_i_49_n_0 ;
  wire \savefirst_reg_3044[0]_i_4_n_0 ;
  wire \savefirst_reg_3044[0]_i_50_n_0 ;
  wire \savefirst_reg_3044[0]_i_51_n_0 ;
  wire \savefirst_reg_3044[0]_i_52_n_0 ;
  wire \savefirst_reg_3044[0]_i_53_n_0 ;
  wire \savefirst_reg_3044[0]_i_54_n_0 ;
  wire \savefirst_reg_3044[0]_i_55_n_0 ;
  wire \savefirst_reg_3044[0]_i_56_n_0 ;
  wire \savefirst_reg_3044[0]_i_57_n_0 ;
  wire \savefirst_reg_3044[0]_i_58_n_0 ;
  wire \savefirst_reg_3044[0]_i_59_n_0 ;
  wire \savefirst_reg_3044[0]_i_5_n_0 ;
  wire \savefirst_reg_3044[0]_i_60_n_0 ;
  wire \savefirst_reg_3044[0]_i_61_n_0 ;
  wire \savefirst_reg_3044[0]_i_62_n_0 ;
  wire \savefirst_reg_3044[0]_i_63_n_0 ;
  wire \savefirst_reg_3044[0]_i_64_n_0 ;
  wire \savefirst_reg_3044[0]_i_65_n_0 ;
  wire \savefirst_reg_3044[0]_i_66_n_0 ;
  wire \savefirst_reg_3044[0]_i_6_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_10_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_11_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_12_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_13_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_14_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_15_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_16_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_17_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_18_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_19_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_20_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_21_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_22_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_23_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_24_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_25_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_26_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_7_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_8_n_0 ;
  wire \savefirst_reg_3044_reg[0]_i_9_n_0 ;
  wire savelast_reg_3050;
  wire \savelast_reg_3050[0]_i_10_n_0 ;
  wire \savelast_reg_3050[0]_i_11_n_0 ;
  wire \savelast_reg_3050[0]_i_12_n_0 ;
  wire \savelast_reg_3050[0]_i_13_n_0 ;
  wire \savelast_reg_3050[0]_i_14_n_0 ;
  wire \savelast_reg_3050[0]_i_15_n_0 ;
  wire \savelast_reg_3050[0]_i_16_n_0 ;
  wire \savelast_reg_3050[0]_i_17_n_0 ;
  wire \savelast_reg_3050[0]_i_18_n_0 ;
  wire \savelast_reg_3050[0]_i_19_n_0 ;
  wire \savelast_reg_3050[0]_i_20_n_0 ;
  wire \savelast_reg_3050[0]_i_21_n_0 ;
  wire \savelast_reg_3050[0]_i_22_n_0 ;
  wire \savelast_reg_3050[0]_i_23_n_0 ;
  wire \savelast_reg_3050[0]_i_24_n_0 ;
  wire \savelast_reg_3050[0]_i_25_n_0 ;
  wire \savelast_reg_3050[0]_i_26_n_0 ;
  wire \savelast_reg_3050[0]_i_3_n_0 ;
  wire \savelast_reg_3050[0]_i_7_n_0 ;
  wire \savelast_reg_3050[0]_i_8_n_0 ;
  wire \savelast_reg_3050[0]_i_9_n_0 ;
  wire \savelast_reg_3050_reg[0]_i_4_n_0 ;
  wire \savelast_reg_3050_reg[0]_i_5_n_0 ;
  wire \savelast_reg_3050_reg[0]_i_6_n_0 ;
  wire sel;
  wire \stubindex_V_reg_3111[6]_i_1_n_0 ;
  wire table1_U_n_0;
  wire table1_U_n_2;
  wire table1_U_n_5;
  wire tmp_14_fu_2576_p2;
  wire tmp_14_fu_2576_p2_carry__0_i_1_n_0;
  wire tmp_14_fu_2576_p2_carry__0_i_2_n_0;
  wire tmp_14_fu_2576_p2_carry__0_i_3_n_0;
  wire tmp_14_fu_2576_p2_carry__0_i_4_n_0;
  wire tmp_14_fu_2576_p2_carry__0_i_5_n_0;
  wire tmp_14_fu_2576_p2_carry__0_i_6_n_0;
  wire tmp_14_fu_2576_p2_carry__0_i_7_n_0;
  wire tmp_14_fu_2576_p2_carry__0_i_8_n_0;
  wire tmp_14_fu_2576_p2_carry__0_n_1;
  wire tmp_14_fu_2576_p2_carry__0_n_2;
  wire tmp_14_fu_2576_p2_carry__0_n_3;
  wire tmp_14_fu_2576_p2_carry__0_n_5;
  wire tmp_14_fu_2576_p2_carry__0_n_6;
  wire tmp_14_fu_2576_p2_carry__0_n_7;
  wire tmp_14_fu_2576_p2_carry_i_10_n_0;
  wire tmp_14_fu_2576_p2_carry_i_1_n_0;
  wire tmp_14_fu_2576_p2_carry_i_2_n_0;
  wire tmp_14_fu_2576_p2_carry_i_3_n_0;
  wire tmp_14_fu_2576_p2_carry_i_4_n_0;
  wire tmp_14_fu_2576_p2_carry_i_5_n_0;
  wire tmp_14_fu_2576_p2_carry_i_6_n_0;
  wire tmp_14_fu_2576_p2_carry_i_7_n_0;
  wire tmp_14_fu_2576_p2_carry_i_8_n_0;
  wire tmp_14_fu_2576_p2_carry_i_9_n_0;
  wire tmp_14_fu_2576_p2_carry_n_0;
  wire tmp_14_fu_2576_p2_carry_n_1;
  wire tmp_14_fu_2576_p2_carry_n_2;
  wire tmp_14_fu_2576_p2_carry_n_3;
  wire tmp_14_fu_2576_p2_carry_n_5;
  wire tmp_14_fu_2576_p2_carry_n_6;
  wire tmp_14_fu_2576_p2_carry_n_7;
  wire tmp_6_fu_2248_p2;
  wire tmp_6_reg_3071;
  wire tmp_6_reg_3071_pp0_iter2_reg;
  wire tmp_8_fu_707_p2;
  wire \tmp_8_reg_3007[0]_i_2_n_0 ;
  wire tmp_8_reg_3007_pp0_iter1_reg;
  wire \tmp_8_reg_3007_reg_n_0_[0] ;
  wire [2:1]writeindex_V_3_fu_792_p2;
  wire [2:0]writeindex_V_3_reg_3029;
  wire \writeindex_V_3_reg_3029[0]_i_2_n_0 ;
  wire [2:0]writeindexplus_V_fu_786_p2;
  wire [2:0]writeindexplus_V_reg_3024;
  wire \writeindexplus_V_reg_3024[2]_i_2_n_0 ;
  wire \writeindexplus_V_reg_3024[2]_i_3_n_0 ;
  wire [2:0]writeindextmp_V_reg_573;
  wire \writeindextmp_V_reg_573[0]_i_1_n_0 ;
  wire \writeindextmp_V_reg_573[1]_i_1_n_0 ;
  wire \writeindextmp_V_reg_573[1]_i_2_n_0 ;
  wire \writeindextmp_V_reg_573[2]_i_1_n_0 ;
  wire \writeindextmp_V_reg_573[2]_i_2_n_0 ;
  wire \writeindextmp_V_reg_573[2]_i_3_n_0 ;
  wire [3:3]\NLW_addr_index_assign_fu_268_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_addr_index_assign_fu_268_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_addr_index_assign_fu_268_reg[6]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_addr_index_assign_fu_268_reg[8]_i_1_CO_UNCONNECTED ;
  wire [7:4]NLW_moreproj_2_fu_844_p2_carry_CO_UNCONNECTED;
  wire [7:0]NLW_moreproj_2_fu_844_p2_carry_O_UNCONNECTED;
  wire [3:3]NLW_tmp_14_fu_2576_p2_carry_CO_UNCONNECTED;
  wire [7:0]NLW_tmp_14_fu_2576_p2_carry_O_UNCONNECTED;
  wire [3:3]NLW_tmp_14_fu_2576_p2_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_tmp_14_fu_2576_p2_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \addr_index_assign_fu_268[6]_i_4 
       (.I0(out[0]),
        .O(\addr_index_assign_fu_268[6]_i_4_n_0 ));
  FDRE \addr_index_assign_fu_268_reg[0] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[6]_i_3_n_15 ),
        .Q(out[0]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[10] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[8]_i_1_n_13 ),
        .Q(addr_index_assign_fu_268_reg[10]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[11] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[8]_i_1_n_12 ),
        .Q(addr_index_assign_fu_268_reg[11]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[12] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[8]_i_1_n_11 ),
        .Q(addr_index_assign_fu_268_reg[12]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[13] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[8]_i_1_n_10 ),
        .Q(addr_index_assign_fu_268_reg[13]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[14] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[8]_i_1_n_9 ),
        .Q(addr_index_assign_fu_268_reg[14]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[15] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[8]_i_1_n_8 ),
        .Q(addr_index_assign_fu_268_reg[15]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[16] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[16]_i_1_n_15 ),
        .Q(addr_index_assign_fu_268_reg[16]),
        .R(table1_U_n_0));
  CARRY8 \addr_index_assign_fu_268_reg[16]_i_1 
       (.CI(\addr_index_assign_fu_268_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_index_assign_fu_268_reg[16]_i_1_n_0 ,\addr_index_assign_fu_268_reg[16]_i_1_n_1 ,\addr_index_assign_fu_268_reg[16]_i_1_n_2 ,\addr_index_assign_fu_268_reg[16]_i_1_n_3 ,\NLW_addr_index_assign_fu_268_reg[16]_i_1_CO_UNCONNECTED [3],\addr_index_assign_fu_268_reg[16]_i_1_n_5 ,\addr_index_assign_fu_268_reg[16]_i_1_n_6 ,\addr_index_assign_fu_268_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_index_assign_fu_268_reg[16]_i_1_n_8 ,\addr_index_assign_fu_268_reg[16]_i_1_n_9 ,\addr_index_assign_fu_268_reg[16]_i_1_n_10 ,\addr_index_assign_fu_268_reg[16]_i_1_n_11 ,\addr_index_assign_fu_268_reg[16]_i_1_n_12 ,\addr_index_assign_fu_268_reg[16]_i_1_n_13 ,\addr_index_assign_fu_268_reg[16]_i_1_n_14 ,\addr_index_assign_fu_268_reg[16]_i_1_n_15 }),
        .S(addr_index_assign_fu_268_reg[23:16]));
  FDRE \addr_index_assign_fu_268_reg[17] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[16]_i_1_n_14 ),
        .Q(addr_index_assign_fu_268_reg[17]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[18] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[16]_i_1_n_13 ),
        .Q(addr_index_assign_fu_268_reg[18]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[19] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[16]_i_1_n_12 ),
        .Q(addr_index_assign_fu_268_reg[19]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[1] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[6]_i_3_n_14 ),
        .Q(out[1]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[20] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[16]_i_1_n_11 ),
        .Q(addr_index_assign_fu_268_reg[20]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[21] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[16]_i_1_n_10 ),
        .Q(addr_index_assign_fu_268_reg[21]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[22] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[16]_i_1_n_9 ),
        .Q(addr_index_assign_fu_268_reg[22]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[23] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[16]_i_1_n_8 ),
        .Q(addr_index_assign_fu_268_reg[23]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[24] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[24]_i_1_n_15 ),
        .Q(addr_index_assign_fu_268_reg[24]),
        .R(table1_U_n_0));
  CARRY8 \addr_index_assign_fu_268_reg[24]_i_1 
       (.CI(\addr_index_assign_fu_268_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_addr_index_assign_fu_268_reg[24]_i_1_CO_UNCONNECTED [7],\addr_index_assign_fu_268_reg[24]_i_1_n_1 ,\addr_index_assign_fu_268_reg[24]_i_1_n_2 ,\addr_index_assign_fu_268_reg[24]_i_1_n_3 ,\NLW_addr_index_assign_fu_268_reg[24]_i_1_CO_UNCONNECTED [3],\addr_index_assign_fu_268_reg[24]_i_1_n_5 ,\addr_index_assign_fu_268_reg[24]_i_1_n_6 ,\addr_index_assign_fu_268_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_index_assign_fu_268_reg[24]_i_1_n_8 ,\addr_index_assign_fu_268_reg[24]_i_1_n_9 ,\addr_index_assign_fu_268_reg[24]_i_1_n_10 ,\addr_index_assign_fu_268_reg[24]_i_1_n_11 ,\addr_index_assign_fu_268_reg[24]_i_1_n_12 ,\addr_index_assign_fu_268_reg[24]_i_1_n_13 ,\addr_index_assign_fu_268_reg[24]_i_1_n_14 ,\addr_index_assign_fu_268_reg[24]_i_1_n_15 }),
        .S(addr_index_assign_fu_268_reg[31:24]));
  FDRE \addr_index_assign_fu_268_reg[25] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[24]_i_1_n_14 ),
        .Q(addr_index_assign_fu_268_reg[25]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[26] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[24]_i_1_n_13 ),
        .Q(addr_index_assign_fu_268_reg[26]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[27] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[24]_i_1_n_12 ),
        .Q(addr_index_assign_fu_268_reg[27]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[28] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[24]_i_1_n_11 ),
        .Q(addr_index_assign_fu_268_reg[28]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[29] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[24]_i_1_n_10 ),
        .Q(addr_index_assign_fu_268_reg[29]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[2] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[6]_i_3_n_13 ),
        .Q(out[2]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[30] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[24]_i_1_n_9 ),
        .Q(addr_index_assign_fu_268_reg[30]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[31] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[24]_i_1_n_8 ),
        .Q(addr_index_assign_fu_268_reg[31]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[3] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[6]_i_3_n_12 ),
        .Q(out[3]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[4] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[6]_i_3_n_11 ),
        .Q(out[4]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[5] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[6]_i_3_n_10 ),
        .Q(out[5]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[6] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[6]_i_3_n_9 ),
        .Q(out[6]),
        .R(table1_U_n_0));
  CARRY8 \addr_index_assign_fu_268_reg[6]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\addr_index_assign_fu_268_reg[6]_i_3_n_0 ,\addr_index_assign_fu_268_reg[6]_i_3_n_1 ,\addr_index_assign_fu_268_reg[6]_i_3_n_2 ,\addr_index_assign_fu_268_reg[6]_i_3_n_3 ,\NLW_addr_index_assign_fu_268_reg[6]_i_3_CO_UNCONNECTED [3],\addr_index_assign_fu_268_reg[6]_i_3_n_5 ,\addr_index_assign_fu_268_reg[6]_i_3_n_6 ,\addr_index_assign_fu_268_reg[6]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\addr_index_assign_fu_268_reg[6]_i_3_n_8 ,\addr_index_assign_fu_268_reg[6]_i_3_n_9 ,\addr_index_assign_fu_268_reg[6]_i_3_n_10 ,\addr_index_assign_fu_268_reg[6]_i_3_n_11 ,\addr_index_assign_fu_268_reg[6]_i_3_n_12 ,\addr_index_assign_fu_268_reg[6]_i_3_n_13 ,\addr_index_assign_fu_268_reg[6]_i_3_n_14 ,\addr_index_assign_fu_268_reg[6]_i_3_n_15 }),
        .S({addr_index_assign_fu_268_reg[7],out[6:1],\addr_index_assign_fu_268[6]_i_4_n_0 }));
  FDRE \addr_index_assign_fu_268_reg[7] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[6]_i_3_n_8 ),
        .Q(addr_index_assign_fu_268_reg[7]),
        .R(table1_U_n_0));
  FDRE \addr_index_assign_fu_268_reg[8] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[8]_i_1_n_15 ),
        .Q(addr_index_assign_fu_268_reg[8]),
        .R(table1_U_n_0));
  CARRY8 \addr_index_assign_fu_268_reg[8]_i_1 
       (.CI(\addr_index_assign_fu_268_reg[6]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_index_assign_fu_268_reg[8]_i_1_n_0 ,\addr_index_assign_fu_268_reg[8]_i_1_n_1 ,\addr_index_assign_fu_268_reg[8]_i_1_n_2 ,\addr_index_assign_fu_268_reg[8]_i_1_n_3 ,\NLW_addr_index_assign_fu_268_reg[8]_i_1_CO_UNCONNECTED [3],\addr_index_assign_fu_268_reg[8]_i_1_n_5 ,\addr_index_assign_fu_268_reg[8]_i_1_n_6 ,\addr_index_assign_fu_268_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_index_assign_fu_268_reg[8]_i_1_n_8 ,\addr_index_assign_fu_268_reg[8]_i_1_n_9 ,\addr_index_assign_fu_268_reg[8]_i_1_n_10 ,\addr_index_assign_fu_268_reg[8]_i_1_n_11 ,\addr_index_assign_fu_268_reg[8]_i_1_n_12 ,\addr_index_assign_fu_268_reg[8]_i_1_n_13 ,\addr_index_assign_fu_268_reg[8]_i_1_n_14 ,\addr_index_assign_fu_268_reg[8]_i_1_n_15 }),
        .S(addr_index_assign_fu_268_reg[15:8]));
  FDRE \addr_index_assign_fu_268_reg[9] 
       (.C(ap_clk),
        .CE(table1_U_n_2),
        .D(\addr_index_assign_fu_268_reg[8]_i_1_n_14 ),
        .Q(addr_index_assign_fu_268_reg[9]),
        .R(table1_U_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(grp_MatchEngine_1_0_s_fu_332_ap_ready),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .O(\ap_CS_fsm[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEEC0)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm[1]_i_2_n_0 ),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hFFFF4545FF000000)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_ready),
        .I1(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_start),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hD0DDDDDD)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(outcandmatch_dataarray_data_V_ce0),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(tmp_8_fu_707_p2),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080AAAA00800080)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(tmp_8_fu_707_p2),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_enable_reg_pp0_iter3),
        .I5(outcandmatch_dataarray_data_V_ce0),
        .O(ap_NS_fsm[2]));
  LUT6 #(
    .INIT(64'h00BA00BA000000FF)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_ready),
        .I1(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1__0_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(grp_MatchEngine_1_0_s_fu_332_ap_ready),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'h0000000077777000)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(tmp_8_fu_707_p2),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_rst),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(tmp_8_fu_707_p2),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(instubdata_dataarray_data_V_ce0),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(instubdata_dataarray_data_V_ce0),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3),
        .Q(outcandmatch_dataarray_data_V_ce0),
        .R(ap_rst));
  FDRE \brmerge_reg_3038_reg[0] 
       (.C(ap_clk),
        .CE(brmerge_reg_30380),
        .D(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .Q(brmerge_reg_3038),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \buffernotempty_reg_3034[0]_i_1 
       (.I0(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .I1(\readindex_V_2_fu_284_reg_n_0_[2] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I3(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I4(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I5(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .O(\buffernotempty_reg_3034[0]_i_1_n_0 ));
  FDRE \buffernotempty_reg_3034_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buffernotempty_reg_3034),
        .Q(buffernotempty_reg_3034_pp0_iter2_reg),
        .R(1'b0));
  FDRE \buffernotempty_reg_3034_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buffernotempty_reg_3034_pp0_iter2_reg),
        .Q(\buffernotempty_reg_3034_pp0_iter3_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \buffernotempty_reg_3034_reg[0] 
       (.C(ap_clk),
        .CE(brmerge_reg_30380),
        .D(\buffernotempty_reg_3034[0]_i_1_n_0 ),
        .Q(buffernotempty_reg_3034),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bx_o_V_1_data_reg[2]_i_1 
       (.I0(\bx_o_V_1_data_reg[2]_i_2_n_0 ),
        .I1(ap_start),
        .I2(Q[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \bx_o_V_1_data_reg[2]_i_2 
       (.I0(sel),
        .I1(\tmp_8_reg_3007[0]_i_2_n_0 ),
        .I2(\p_4_reg_597[6]_i_4_n_0 ),
        .I3(p_4_reg_597_reg__0[2]),
        .I4(p_4_reg_597_reg__0[5]),
        .I5(p_4_reg_597_reg__0[4]),
        .O(\bx_o_V_1_data_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hC8CC)) 
    bx_o_V_1_vld_reg_i_1
       (.I0(bx_o_V_ap_vld),
        .I1(\bx_o_V_1_data_reg[2]_i_2_n_0 ),
        .I2(ap_start),
        .I3(Q[0]),
        .O(bx_o_V_1_vld_reg_reg));
  LUT4 #(
    .INIT(16'hD5C0)) 
    grp_MatchEngine_1_0_s_fu_332_ap_start_reg_i_1
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_ready),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .O(grp_MatchEngine_1_0_s_fu_332_ap_start_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \inprojdata_dataarray_data_V_address0[0]_INST_0 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(\tmp_8_reg_3007_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(iprojtmp_V_reg_585[0]),
        .O(inprojdata_dataarray_data_V_address0[0]));
  LUT6 #(
    .INIT(64'hFBFFFFFF04000000)) 
    \inprojdata_dataarray_data_V_address0[1]_INST_0 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(iprojtmp_V_reg_585[0]),
        .I2(\tmp_8_reg_3007_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(iprojtmp_V_reg_585[1]),
        .O(inprojdata_dataarray_data_V_address0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \inprojdata_dataarray_data_V_address0[2]_INST_0 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(iprojtmp_V_reg_585[1]),
        .I2(iprojtmp_V_reg_585[0]),
        .I3(\inprojdata_dataarray_data_V_address0[3]_INST_0_i_1_n_0 ),
        .I4(iprojtmp_V_reg_585[2]),
        .O(inprojdata_dataarray_data_V_address0[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \inprojdata_dataarray_data_V_address0[3]_INST_0 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(iprojtmp_V_reg_585[0]),
        .I2(iprojtmp_V_reg_585[1]),
        .I3(iprojtmp_V_reg_585[2]),
        .I4(\inprojdata_dataarray_data_V_address0[3]_INST_0_i_1_n_0 ),
        .I5(iprojtmp_V_reg_585[3]),
        .O(inprojdata_dataarray_data_V_address0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \inprojdata_dataarray_data_V_address0[3]_INST_0_i_1 
       (.I0(\tmp_8_reg_3007_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter1),
        .O(\inprojdata_dataarray_data_V_address0[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF04000000)) 
    \inprojdata_dataarray_data_V_address0[4]_INST_0 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(\inprojdata_dataarray_data_V_address0[4]_INST_0_i_1_n_0 ),
        .I2(\tmp_8_reg_3007_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(iprojtmp_V_reg_585[4]),
        .O(inprojdata_dataarray_data_V_address0[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \inprojdata_dataarray_data_V_address0[4]_INST_0_i_1 
       (.I0(iprojtmp_V_reg_585[4]),
        .I1(iprojtmp_V_reg_585[2]),
        .I2(iprojtmp_V_reg_585[1]),
        .I3(iprojtmp_V_reg_585[0]),
        .I4(iprojtmp_V_reg_585[3]),
        .O(\inprojdata_dataarray_data_V_address0[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF04000000)) 
    \inprojdata_dataarray_data_V_address0[5]_INST_0 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(\inprojdata_dataarray_data_V_address0[5]_INST_0_i_1_n_0 ),
        .I2(\tmp_8_reg_3007_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(iprojtmp_V_reg_585[5]),
        .O(inprojdata_dataarray_data_V_address0[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \inprojdata_dataarray_data_V_address0[5]_INST_0_i_1 
       (.I0(iprojtmp_V_reg_585[5]),
        .I1(iprojtmp_V_reg_585[3]),
        .I2(iprojtmp_V_reg_585[0]),
        .I3(iprojtmp_V_reg_585[1]),
        .I4(iprojtmp_V_reg_585[2]),
        .I5(iprojtmp_V_reg_585[4]),
        .O(\inprojdata_dataarray_data_V_address0[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFF01000000)) 
    \inprojdata_dataarray_data_V_address0[6]_INST_0 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_1_n_0 ),
        .I1(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I2(\tmp_8_reg_3007_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(iprojtmp_V_reg_585[6]),
        .O(inprojdata_dataarray_data_V_address0[6]));
  LUT3 #(
    .INIT(8'h95)) 
    \inprojdata_dataarray_data_V_address0[6]_INST_0_i_1 
       (.I0(iprojtmp_V_reg_585[6]),
        .I1(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_3_n_0 ),
        .I2(iprojtmp_V_reg_585[5]),
        .O(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAABAFFBF)) 
    \inprojdata_dataarray_data_V_address0[6]_INST_0_i_2 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_4_n_0 ),
        .I1(moreproj_1_reg_3061),
        .I2(instubdata_dataarray_data_V_ce0),
        .I3(tmp_8_reg_3007_pp0_iter1_reg),
        .I4(moreproj1_reg_608),
        .O(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \inprojdata_dataarray_data_V_address0[6]_INST_0_i_3 
       (.I0(iprojtmp_V_reg_585[4]),
        .I1(iprojtmp_V_reg_585[2]),
        .I2(iprojtmp_V_reg_585[1]),
        .I3(iprojtmp_V_reg_585[0]),
        .I4(iprojtmp_V_reg_585[3]),
        .O(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2002D00D0DD02002)) 
    \inprojdata_dataarray_data_V_address0[6]_INST_0_i_4 
       (.I0(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I1(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I2(\readindex_V_2_fu_284_reg_n_0_[2] ),
        .I3(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .I4(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .I5(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .O(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    inprojdata_dataarray_data_V_ce0_INST_0
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_enable_reg_pp0_iter0),
        .O(inprojdata_dataarray_data_V_ce0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \iprojtmp_V_reg_585[0]_i_1 
       (.I0(iprojtmp_V_reg_585[0]),
        .I1(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .O(\iprojtmp_V_reg_585[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \iprojtmp_V_reg_585[1]_i_1 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(iprojtmp_V_reg_585[0]),
        .I2(iprojtmp_V_reg_585[1]),
        .O(\iprojtmp_V_reg_585[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h9CCC)) 
    \iprojtmp_V_reg_585[2]_i_1 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(iprojtmp_V_reg_585[2]),
        .I2(iprojtmp_V_reg_585[1]),
        .I3(iprojtmp_V_reg_585[0]),
        .O(\iprojtmp_V_reg_585[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h9CCCCCCC)) 
    \iprojtmp_V_reg_585[3]_i_1 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(iprojtmp_V_reg_585[3]),
        .I2(iprojtmp_V_reg_585[0]),
        .I3(iprojtmp_V_reg_585[1]),
        .I4(iprojtmp_V_reg_585[2]),
        .O(\iprojtmp_V_reg_585[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9CCCCCCCCCCCCCCC)) 
    \iprojtmp_V_reg_585[4]_i_1 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(iprojtmp_V_reg_585[4]),
        .I2(iprojtmp_V_reg_585[2]),
        .I3(iprojtmp_V_reg_585[1]),
        .I4(iprojtmp_V_reg_585[0]),
        .I5(iprojtmp_V_reg_585[3]),
        .O(\iprojtmp_V_reg_585[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iprojtmp_V_reg_585[5]_i_1 
       (.I0(iprojtmp_V_reg_585[5]),
        .I1(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I2(\inprojdata_dataarray_data_V_address0[5]_INST_0_i_1_n_0 ),
        .O(\iprojtmp_V_reg_585[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88880888)) 
    \iprojtmp_V_reg_585[6]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(\tmp_8_reg_3007_reg_n_0_[0] ),
        .O(\iprojtmp_V_reg_585[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \iprojtmp_V_reg_585[6]_i_2 
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(\tmp_8_reg_3007_reg_n_0_[0] ),
        .O(\iprojtmp_V_reg_585[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hD1)) 
    \iprojtmp_V_reg_585[6]_i_3 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_1_n_0 ),
        .I1(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I2(iprojtmp_V_reg_585[6]),
        .O(\iprojtmp_V_reg_585[6]_i_3_n_0 ));
  FDRE \iprojtmp_V_reg_585_reg[0] 
       (.C(ap_clk),
        .CE(\iprojtmp_V_reg_585[6]_i_2_n_0 ),
        .D(\iprojtmp_V_reg_585[0]_i_1_n_0 ),
        .Q(iprojtmp_V_reg_585[0]),
        .R(\iprojtmp_V_reg_585[6]_i_1_n_0 ));
  FDRE \iprojtmp_V_reg_585_reg[1] 
       (.C(ap_clk),
        .CE(\iprojtmp_V_reg_585[6]_i_2_n_0 ),
        .D(\iprojtmp_V_reg_585[1]_i_1_n_0 ),
        .Q(iprojtmp_V_reg_585[1]),
        .R(\iprojtmp_V_reg_585[6]_i_1_n_0 ));
  FDRE \iprojtmp_V_reg_585_reg[2] 
       (.C(ap_clk),
        .CE(\iprojtmp_V_reg_585[6]_i_2_n_0 ),
        .D(\iprojtmp_V_reg_585[2]_i_1_n_0 ),
        .Q(iprojtmp_V_reg_585[2]),
        .R(\iprojtmp_V_reg_585[6]_i_1_n_0 ));
  FDRE \iprojtmp_V_reg_585_reg[3] 
       (.C(ap_clk),
        .CE(\iprojtmp_V_reg_585[6]_i_2_n_0 ),
        .D(\iprojtmp_V_reg_585[3]_i_1_n_0 ),
        .Q(iprojtmp_V_reg_585[3]),
        .R(\iprojtmp_V_reg_585[6]_i_1_n_0 ));
  FDRE \iprojtmp_V_reg_585_reg[4] 
       (.C(ap_clk),
        .CE(\iprojtmp_V_reg_585[6]_i_2_n_0 ),
        .D(\iprojtmp_V_reg_585[4]_i_1_n_0 ),
        .Q(iprojtmp_V_reg_585[4]),
        .R(\iprojtmp_V_reg_585[6]_i_1_n_0 ));
  FDRE \iprojtmp_V_reg_585_reg[5] 
       (.C(ap_clk),
        .CE(\iprojtmp_V_reg_585[6]_i_2_n_0 ),
        .D(\iprojtmp_V_reg_585[5]_i_1_n_0 ),
        .Q(iprojtmp_V_reg_585[5]),
        .R(\iprojtmp_V_reg_585[6]_i_1_n_0 ));
  FDRE \iprojtmp_V_reg_585_reg[6] 
       (.C(ap_clk),
        .CE(\iprojtmp_V_reg_585[6]_i_2_n_0 ),
        .D(\iprojtmp_V_reg_585[6]_i_3_n_0 ),
        .Q(iprojtmp_V_reg_585[6]),
        .R(\iprojtmp_V_reg_585[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \isPSseed_1_reg_3088[0]_i_1 
       (.I0(\buffernotempty_reg_3034[0]_i_1_n_0 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\istub_V_fu_300_reg_n_0_[2] ),
        .I3(\istub_V_fu_300_reg_n_0_[3] ),
        .I4(\istub_V_fu_300_reg_n_0_[1] ),
        .I5(\istub_V_fu_300_reg_n_0_[0] ),
        .O(isPSseed_1_reg_30880));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \isPSseed_1_reg_3088[0]_i_3 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[4] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[4] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[4] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[4] ),
        .O(\isPSseed_1_reg_3088[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \isPSseed_1_reg_3088[0]_i_4 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[4] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[4] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[4] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[4] ),
        .O(\isPSseed_1_reg_3088[0]_i_4_n_0 ));
  FDRE \isPSseed_1_reg_3088_reg[0] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[4]),
        .Q(isPSseed_1_reg_3088),
        .R(1'b0));
  MUXF7 \isPSseed_1_reg_3088_reg[0]_i_2 
       (.I0(\isPSseed_1_reg_3088[0]_i_3_n_0 ),
        .I1(\isPSseed_1_reg_3088[0]_i_4_n_0 ),
        .O(qdata_V_fu_764_p10[4]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'h08)) 
    \isPSseed_fu_272[0]_i_1 
       (.I0(tmp_6_reg_3071),
        .I1(instubdata_dataarray_data_V_ce0),
        .I2(buffernotempty_reg_3034),
        .O(isPSseed_fu_2720));
  FDRE \isPSseed_fu_272_reg[0] 
       (.C(ap_clk),
        .CE(isPSseed_fu_2720),
        .D(isPSseed_1_reg_3088),
        .Q(isPSseed_fu_272),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF44440AAA0AAA)) 
    \istub_V_fu_300[0]_i_1 
       (.I0(\istub_V_fu_300_reg_n_0_[0] ),
        .I1(\istub_V_fu_300[3]_i_4_n_0 ),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I4(\istub_V_fu_300[3]_i_6_n_0 ),
        .I5(\istub_V_fu_300[3]_i_5_n_0 ),
        .O(\istub_V_fu_300[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \istub_V_fu_300[1]_i_1 
       (.I0(\istub_V_fu_300_reg_n_0_[1] ),
        .I1(\istub_V_fu_300_reg_n_0_[0] ),
        .O(istub_V_1_fu_2277_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \istub_V_fu_300[2]_i_1 
       (.I0(\istub_V_fu_300_reg_n_0_[2] ),
        .I1(\istub_V_fu_300_reg_n_0_[0] ),
        .I2(\istub_V_fu_300_reg_n_0_[1] ),
        .O(istub_V_1_fu_2277_p2[2]));
  LUT5 #(
    .INIT(32'hFF880F88)) 
    \istub_V_fu_300[3]_i_1 
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\istub_V_fu_300[3]_i_4_n_0 ),
        .I3(\istub_V_fu_300[3]_i_5_n_0 ),
        .I4(\istub_V_fu_300[3]_i_6_n_0 ),
        .O(istub_V_fu_300));
  LUT4 #(
    .INIT(16'h0800)) 
    \istub_V_fu_300[3]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\buffernotempty_reg_3034[0]_i_1_n_0 ),
        .I3(\istub_V_fu_300[3]_i_4_n_0 ),
        .O(istub_V_fu_3000));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \istub_V_fu_300[3]_i_3 
       (.I0(\istub_V_fu_300_reg_n_0_[3] ),
        .I1(\istub_V_fu_300_reg_n_0_[1] ),
        .I2(\istub_V_fu_300_reg_n_0_[0] ),
        .I3(\istub_V_fu_300_reg_n_0_[2] ),
        .O(istub_V_1_fu_2277_p2[3]));
  LUT6 #(
    .INIT(64'h4404000055454404)) 
    \istub_V_fu_300[3]_i_4 
       (.I0(tmp_6_fu_2248_p2),
        .I1(\istub_V_fu_300[3]_i_7_n_0 ),
        .I2(\istub_V_fu_300_reg_n_0_[2] ),
        .I3(nstubs_V_1_fu_276[2]),
        .I4(nstubs_V_1_fu_276[3]),
        .I5(\istub_V_fu_300_reg_n_0_[3] ),
        .O(\istub_V_fu_300[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \istub_V_fu_300[3]_i_5 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\buffernotempty_reg_3034[0]_i_1_n_0 ),
        .O(\istub_V_fu_300[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \istub_V_fu_300[3]_i_6 
       (.I0(\istub_V_fu_300_reg_n_0_[2] ),
        .I1(\istub_V_fu_300_reg_n_0_[3] ),
        .I2(\istub_V_fu_300_reg_n_0_[1] ),
        .I3(\istub_V_fu_300_reg_n_0_[0] ),
        .I4(\nstubs_V_1_fu_276[3]_i_4_n_0 ),
        .O(\istub_V_fu_300[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6F6666066F666F66)) 
    \istub_V_fu_300[3]_i_7 
       (.I0(\istub_V_fu_300_reg_n_0_[2] ),
        .I1(nstubs_V_1_fu_276[2]),
        .I2(\istub_V_fu_300_reg_n_0_[1] ),
        .I3(nstubs_V_1_fu_276[1]),
        .I4(nstubs_V_1_fu_276[0]),
        .I5(\istub_V_fu_300_reg_n_0_[0] ),
        .O(\istub_V_fu_300[3]_i_7_n_0 ));
  FDRE \istub_V_fu_300_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\istub_V_fu_300[0]_i_1_n_0 ),
        .Q(\istub_V_fu_300_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \istub_V_fu_300_reg[1] 
       (.C(ap_clk),
        .CE(istub_V_fu_3000),
        .D(istub_V_1_fu_2277_p2[1]),
        .Q(\istub_V_fu_300_reg_n_0_[1] ),
        .R(istub_V_fu_300));
  FDRE \istub_V_fu_300_reg[2] 
       (.C(ap_clk),
        .CE(istub_V_fu_3000),
        .D(istub_V_1_fu_2277_p2[2]),
        .Q(\istub_V_fu_300_reg_n_0_[2] ),
        .R(istub_V_fu_300));
  FDRE \istub_V_fu_300_reg[3] 
       (.C(ap_clk),
        .CE(istub_V_fu_3000),
        .D(istub_V_1_fu_2277_p2[3]),
        .Q(\istub_V_fu_300_reg_n_0_[3] ),
        .R(istub_V_fu_300));
  LUT2 #(
    .INIT(4'h4)) 
    \istubtmp_V_reg_3066[3]_i_1 
       (.I0(\buffernotempty_reg_3034[0]_i_1_n_0 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .O(istubtmp_V_reg_30660));
  FDRE \istubtmp_V_reg_3066_reg[0] 
       (.C(ap_clk),
        .CE(istubtmp_V_reg_30660),
        .D(\istub_V_fu_300_reg_n_0_[0] ),
        .Q(instubdata_dataarray_data_V_address0[0]),
        .R(1'b0));
  FDRE \istubtmp_V_reg_3066_reg[1] 
       (.C(ap_clk),
        .CE(istubtmp_V_reg_30660),
        .D(\istub_V_fu_300_reg_n_0_[1] ),
        .Q(instubdata_dataarray_data_V_address0[1]),
        .R(1'b0));
  FDRE \istubtmp_V_reg_3066_reg[2] 
       (.C(ap_clk),
        .CE(istubtmp_V_reg_30660),
        .D(\istub_V_fu_300_reg_n_0_[2] ),
        .Q(instubdata_dataarray_data_V_address0[2]),
        .R(1'b0));
  FDRE \istubtmp_V_reg_3066_reg[3] 
       (.C(ap_clk),
        .CE(istubtmp_V_reg_30660),
        .D(\istub_V_fu_300_reg_n_0_[3] ),
        .Q(instubdata_dataarray_data_V_address0[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hEFEEE0EE)) 
    \moreproj1_reg_608[0]_i_1 
       (.I0(\moreproj1_reg_608[0]_i_2_n_0 ),
        .I1(\moreproj1_reg_608[0]_i_3_n_0 ),
        .I2(tmp_8_reg_3007_pp0_iter1_reg),
        .I3(instubdata_dataarray_data_V_ce0),
        .I4(moreproj_1_reg_3061),
        .O(\moreproj1_reg_608[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \moreproj1_reg_608[0]_i_2 
       (.I0(inprojdata_nentries_1_V[5]),
        .I1(bx_V[0]),
        .I2(inprojdata_nentries_0_V[5]),
        .I3(inprojdata_nentries_1_V[4]),
        .I4(inprojdata_nentries_0_V[4]),
        .I5(\moreproj1_reg_608[0]_i_4_n_0 ),
        .O(\moreproj1_reg_608[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \moreproj1_reg_608[0]_i_3 
       (.I0(inprojdata_nentries_1_V[1]),
        .I1(bx_V[0]),
        .I2(inprojdata_nentries_0_V[1]),
        .I3(inprojdata_nentries_1_V[0]),
        .I4(inprojdata_nentries_0_V[0]),
        .I5(\moreproj1_reg_608[0]_i_5_n_0 ),
        .O(\moreproj1_reg_608[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \moreproj1_reg_608[0]_i_4 
       (.I0(inprojdata_nentries_0_V[6]),
        .I1(inprojdata_nentries_1_V[6]),
        .I2(inprojdata_nentries_0_V[7]),
        .I3(bx_V[0]),
        .I4(inprojdata_nentries_1_V[7]),
        .O(\moreproj1_reg_608[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \moreproj1_reg_608[0]_i_5 
       (.I0(inprojdata_nentries_0_V[3]),
        .I1(inprojdata_nentries_1_V[3]),
        .I2(inprojdata_nentries_0_V[2]),
        .I3(bx_V[0]),
        .I4(inprojdata_nentries_1_V[2]),
        .O(\moreproj1_reg_608[0]_i_5_n_0 ));
  FDRE \moreproj1_reg_608_reg[0] 
       (.C(ap_clk),
        .CE(\writeindextmp_V_reg_573[2]_i_1_n_0 ),
        .D(\moreproj1_reg_608[0]_i_1_n_0 ),
        .Q(moreproj1_reg_608),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDD0FFFF88800000)) 
    \moreproj_1_reg_3061[0]_i_1 
       (.I0(\moreproj_1_reg_3061[0]_i_2_n_0 ),
        .I1(moreproj1_reg_608),
        .I2(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_4_n_0 ),
        .I3(moreproj_2_fu_844_p2),
        .I4(\inprojdata_dataarray_data_V_address0[3]_INST_0_i_1_n_0 ),
        .I5(moreproj_1_reg_3061),
        .O(\moreproj_1_reg_3061[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \moreproj_1_reg_3061[0]_i_2 
       (.I0(tmp_8_reg_3007_pp0_iter1_reg),
        .I1(instubdata_dataarray_data_V_ce0),
        .O(\moreproj_1_reg_3061[0]_i_2_n_0 ));
  FDRE \moreproj_1_reg_3061_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\moreproj_1_reg_3061[0]_i_1_n_0 ),
        .Q(moreproj_1_reg_3061),
        .R(1'b0));
  CARRY8 moreproj_2_fu_844_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_moreproj_2_fu_844_p2_carry_CO_UNCONNECTED[7:4],moreproj_2_fu_844_p2,moreproj_2_fu_844_p2_carry_n_5,moreproj_2_fu_844_p2_carry_n_6,moreproj_2_fu_844_p2_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,moreproj_2_fu_844_p2_carry_i_1_n_0,moreproj_2_fu_844_p2_carry_i_2_n_0,moreproj_2_fu_844_p2_carry_i_3_n_0,moreproj_2_fu_844_p2_carry_i_4_n_0}),
        .O(NLW_moreproj_2_fu_844_p2_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,moreproj_2_fu_844_p2_carry_i_5_n_0,moreproj_2_fu_844_p2_carry_i_6_n_0,moreproj_2_fu_844_p2_carry_i_7_n_0,moreproj_2_fu_844_p2_carry_i_8_n_0}));
  LUT5 #(
    .INIT(32'hEBBBAAAA)) 
    moreproj_2_fu_844_p2_carry_i_1
       (.I0(nproj_V_reg_2985[7]),
        .I1(iprojtmp_V_reg_585[6]),
        .I2(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_3_n_0 ),
        .I3(iprojtmp_V_reg_585[5]),
        .I4(nproj_V_reg_2985[6]),
        .O(moreproj_2_fu_844_p2_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hC2AB802A)) 
    moreproj_2_fu_844_p2_carry_i_2
       (.I0(nproj_V_reg_2985[5]),
        .I1(iprojtmp_V_reg_585[4]),
        .I2(moreproj_2_fu_844_p2_carry_i_9_n_0),
        .I3(iprojtmp_V_reg_585[5]),
        .I4(nproj_V_reg_2985[4]),
        .O(moreproj_2_fu_844_p2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hC222ABBB80002AAA)) 
    moreproj_2_fu_844_p2_carry_i_3
       (.I0(nproj_V_reg_2985[3]),
        .I1(iprojtmp_V_reg_585[2]),
        .I2(iprojtmp_V_reg_585[1]),
        .I3(iprojtmp_V_reg_585[0]),
        .I4(iprojtmp_V_reg_585[3]),
        .I5(nproj_V_reg_2985[2]),
        .O(moreproj_2_fu_844_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hE282)) 
    moreproj_2_fu_844_p2_carry_i_4
       (.I0(nproj_V_reg_2985[1]),
        .I1(iprojtmp_V_reg_585[1]),
        .I2(iprojtmp_V_reg_585[0]),
        .I3(nproj_V_reg_2985[0]),
        .O(moreproj_2_fu_844_p2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h00006A95)) 
    moreproj_2_fu_844_p2_carry_i_5
       (.I0(iprojtmp_V_reg_585[6]),
        .I1(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_3_n_0 ),
        .I2(iprojtmp_V_reg_585[5]),
        .I3(nproj_V_reg_2985[6]),
        .I4(nproj_V_reg_2985[7]),
        .O(moreproj_2_fu_844_p2_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h09906009)) 
    moreproj_2_fu_844_p2_carry_i_6
       (.I0(iprojtmp_V_reg_585[5]),
        .I1(nproj_V_reg_2985[5]),
        .I2(iprojtmp_V_reg_585[4]),
        .I3(moreproj_2_fu_844_p2_carry_i_9_n_0),
        .I4(nproj_V_reg_2985[4]),
        .O(moreproj_2_fu_844_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    moreproj_2_fu_844_p2_carry_i_7
       (.I0(iprojtmp_V_reg_585[3]),
        .I1(nproj_V_reg_2985[3]),
        .I2(iprojtmp_V_reg_585[2]),
        .I3(iprojtmp_V_reg_585[1]),
        .I4(iprojtmp_V_reg_585[0]),
        .I5(nproj_V_reg_2985[2]),
        .O(moreproj_2_fu_844_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0960)) 
    moreproj_2_fu_844_p2_carry_i_8
       (.I0(iprojtmp_V_reg_585[1]),
        .I1(nproj_V_reg_2985[1]),
        .I2(iprojtmp_V_reg_585[0]),
        .I3(nproj_V_reg_2985[0]),
        .O(moreproj_2_fu_844_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    moreproj_2_fu_844_p2_carry_i_9
       (.I0(iprojtmp_V_reg_585[3]),
        .I1(iprojtmp_V_reg_585[0]),
        .I2(iprojtmp_V_reg_585[1]),
        .I3(iprojtmp_V_reg_585[2]),
        .O(moreproj_2_fu_844_p2_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \nproj_V_reg_2985[0]_i_1 
       (.I0(inprojdata_nentries_1_V[0]),
        .I1(bx_V[0]),
        .I2(inprojdata_nentries_0_V[0]),
        .O(nproj_V_fu_647_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \nproj_V_reg_2985[1]_i_1 
       (.I0(inprojdata_nentries_1_V[1]),
        .I1(bx_V[0]),
        .I2(inprojdata_nentries_0_V[1]),
        .O(nproj_V_fu_647_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \nproj_V_reg_2985[2]_i_1 
       (.I0(inprojdata_nentries_1_V[2]),
        .I1(bx_V[0]),
        .I2(inprojdata_nentries_0_V[2]),
        .O(nproj_V_fu_647_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \nproj_V_reg_2985[3]_i_1 
       (.I0(inprojdata_nentries_1_V[3]),
        .I1(bx_V[0]),
        .I2(inprojdata_nentries_0_V[3]),
        .O(nproj_V_fu_647_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \nproj_V_reg_2985[4]_i_1 
       (.I0(inprojdata_nentries_1_V[4]),
        .I1(bx_V[0]),
        .I2(inprojdata_nentries_0_V[4]),
        .O(nproj_V_fu_647_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \nproj_V_reg_2985[5]_i_1 
       (.I0(inprojdata_nentries_1_V[5]),
        .I1(bx_V[0]),
        .I2(inprojdata_nentries_0_V[5]),
        .O(nproj_V_fu_647_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \nproj_V_reg_2985[6]_i_1 
       (.I0(inprojdata_nentries_1_V[6]),
        .I1(bx_V[0]),
        .I2(inprojdata_nentries_0_V[6]),
        .O(nproj_V_fu_647_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \nproj_V_reg_2985[7]_i_1 
       (.I0(inprojdata_nentries_1_V[7]),
        .I1(bx_V[0]),
        .I2(inprojdata_nentries_0_V[7]),
        .O(nproj_V_fu_647_p3[7]));
  FDRE \nproj_V_reg_2985_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(nproj_V_fu_647_p3[0]),
        .Q(nproj_V_reg_2985[0]),
        .R(1'b0));
  FDRE \nproj_V_reg_2985_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(nproj_V_fu_647_p3[1]),
        .Q(nproj_V_reg_2985[1]),
        .R(1'b0));
  FDRE \nproj_V_reg_2985_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(nproj_V_fu_647_p3[2]),
        .Q(nproj_V_reg_2985[2]),
        .R(1'b0));
  FDRE \nproj_V_reg_2985_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(nproj_V_fu_647_p3[3]),
        .Q(nproj_V_reg_2985[3]),
        .R(1'b0));
  FDRE \nproj_V_reg_2985_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(nproj_V_fu_647_p3[4]),
        .Q(nproj_V_reg_2985[4]),
        .R(1'b0));
  FDRE \nproj_V_reg_2985_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(nproj_V_fu_647_p3[5]),
        .Q(nproj_V_reg_2985[5]),
        .R(1'b0));
  FDRE \nproj_V_reg_2985_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(nproj_V_fu_647_p3[6]),
        .Q(nproj_V_reg_2985[6]),
        .R(1'b0));
  FDRE \nproj_V_reg_2985_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(nproj_V_fu_647_p3[7]),
        .Q(nproj_V_reg_2985[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \nstubs_V_1_fu_276[0]_i_1 
       (.I0(\nstubs_V_1_fu_276_reg[0]_i_2_n_0 ),
        .I1(\istub_V_fu_300[3]_i_6_n_0 ),
        .I2(\istub_V_fu_300[3]_i_5_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nstubs_V_1_fu_276[0]_i_3 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[26] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[26] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[26] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[26] ),
        .O(\nstubs_V_1_fu_276[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nstubs_V_1_fu_276[0]_i_4 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[26] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[26] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[26] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[26] ),
        .O(\nstubs_V_1_fu_276[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \nstubs_V_1_fu_276[1]_i_1 
       (.I0(\nstubs_V_1_fu_276_reg[1]_i_2_n_0 ),
        .I1(\istub_V_fu_300[3]_i_6_n_0 ),
        .I2(\istub_V_fu_300[3]_i_5_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nstubs_V_1_fu_276[1]_i_3 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[27] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[27] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[27] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[27] ),
        .O(\nstubs_V_1_fu_276[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nstubs_V_1_fu_276[1]_i_4 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[27] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[27] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[27] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[27] ),
        .O(\nstubs_V_1_fu_276[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \nstubs_V_1_fu_276[2]_i_1 
       (.I0(\nstubs_V_1_fu_276_reg[2]_i_2_n_0 ),
        .I1(\istub_V_fu_300[3]_i_6_n_0 ),
        .I2(\istub_V_fu_300[3]_i_5_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nstubs_V_1_fu_276[2]_i_3 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[28] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[28] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[28] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[28] ),
        .O(\nstubs_V_1_fu_276[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nstubs_V_1_fu_276[2]_i_4 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[28] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[28] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[28] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[28] ),
        .O(\nstubs_V_1_fu_276[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \nstubs_V_1_fu_276[3]_i_1 
       (.I0(\nstubs_V_1_fu_276[3]_i_4_n_0 ),
        .I1(\p_Repl2_s_fu_288[2]_i_3_n_0 ),
        .O(istub_V_fu_3002));
  LUT6 #(
    .INIT(64'hFF080808FF000000)) 
    \nstubs_V_1_fu_276[3]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\buffernotempty_reg_3034[0]_i_1_n_0 ),
        .I3(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(\istub_V_fu_300[3]_i_6_n_0 ),
        .O(\nstubs_V_1_fu_276[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \nstubs_V_1_fu_276[3]_i_3 
       (.I0(\nstubs_V_1_fu_276_reg[3]_i_5_n_0 ),
        .I1(\istub_V_fu_300[3]_i_6_n_0 ),
        .I2(\istub_V_fu_300[3]_i_5_n_0 ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'h0010)) 
    \nstubs_V_1_fu_276[3]_i_4 
       (.I0(\nstubs_V_1_fu_276_reg[3]_i_5_n_0 ),
        .I1(\nstubs_V_1_fu_276_reg[2]_i_2_n_0 ),
        .I2(\nstubs_V_1_fu_276_reg[0]_i_2_n_0 ),
        .I3(\nstubs_V_1_fu_276_reg[1]_i_2_n_0 ),
        .O(\nstubs_V_1_fu_276[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nstubs_V_1_fu_276[3]_i_6 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[29] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[29] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[29] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[29] ),
        .O(\nstubs_V_1_fu_276[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nstubs_V_1_fu_276[3]_i_7 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[29] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[29] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[29] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[29] ),
        .O(\nstubs_V_1_fu_276[3]_i_7_n_0 ));
  FDSE \nstubs_V_1_fu_276_reg[0] 
       (.C(ap_clk),
        .CE(\nstubs_V_1_fu_276[3]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(nstubs_V_1_fu_276[0]),
        .S(istub_V_fu_3002));
  MUXF7 \nstubs_V_1_fu_276_reg[0]_i_2 
       (.I0(\nstubs_V_1_fu_276[0]_i_3_n_0 ),
        .I1(\nstubs_V_1_fu_276[0]_i_4_n_0 ),
        .O(\nstubs_V_1_fu_276_reg[0]_i_2_n_0 ),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \nstubs_V_1_fu_276_reg[1] 
       (.C(ap_clk),
        .CE(\nstubs_V_1_fu_276[3]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(nstubs_V_1_fu_276[1]),
        .R(istub_V_fu_3002));
  MUXF7 \nstubs_V_1_fu_276_reg[1]_i_2 
       (.I0(\nstubs_V_1_fu_276[1]_i_3_n_0 ),
        .I1(\nstubs_V_1_fu_276[1]_i_4_n_0 ),
        .O(\nstubs_V_1_fu_276_reg[1]_i_2_n_0 ),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \nstubs_V_1_fu_276_reg[2] 
       (.C(ap_clk),
        .CE(\nstubs_V_1_fu_276[3]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(nstubs_V_1_fu_276[2]),
        .R(istub_V_fu_3002));
  MUXF7 \nstubs_V_1_fu_276_reg[2]_i_2 
       (.I0(\nstubs_V_1_fu_276[2]_i_3_n_0 ),
        .I1(\nstubs_V_1_fu_276[2]_i_4_n_0 ),
        .O(\nstubs_V_1_fu_276_reg[2]_i_2_n_0 ),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \nstubs_V_1_fu_276_reg[3] 
       (.C(ap_clk),
        .CE(\nstubs_V_1_fu_276[3]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(nstubs_V_1_fu_276[3]),
        .R(istub_V_fu_3002));
  MUXF7 \nstubs_V_1_fu_276_reg[3]_i_5 
       (.I0(\nstubs_V_1_fu_276[3]_i_6_n_0 ),
        .I1(\nstubs_V_1_fu_276[3]_i_7_n_0 ),
        .O(\nstubs_V_1_fu_276_reg[3]_i_5_n_0 ),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  LUT2 #(
    .INIT(4'h6)) 
    \outcandmatch_dataarray_data_V_address0[7]_INST_0 
       (.I0(\instubdata_dataarray_data_V_address0[7] ),
        .I1(addr_index_assign_fu_268_reg[7]),
        .O(outcandmatch_dataarray_data_V_address0));
  FDRE \outcandmatch_nentrie_2_fu_260_reg[0] 
       (.C(ap_clk),
        .CE(table1_U_n_5),
        .D(p_09_0_i_fu_2600_p2[0]),
        .Q(outcandmatch_nentries_1_V[0]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_2_fu_260_reg[1] 
       (.C(ap_clk),
        .CE(table1_U_n_5),
        .D(p_09_0_i_fu_2600_p2[1]),
        .Q(outcandmatch_nentries_1_V[1]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_2_fu_260_reg[2] 
       (.C(ap_clk),
        .CE(table1_U_n_5),
        .D(p_09_0_i_fu_2600_p2[2]),
        .Q(outcandmatch_nentries_1_V[2]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_2_fu_260_reg[3] 
       (.C(ap_clk),
        .CE(table1_U_n_5),
        .D(p_09_0_i_fu_2600_p2[3]),
        .Q(outcandmatch_nentries_1_V[3]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_2_fu_260_reg[4] 
       (.C(ap_clk),
        .CE(table1_U_n_5),
        .D(p_09_0_i_fu_2600_p2[4]),
        .Q(outcandmatch_nentries_1_V[4]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_2_fu_260_reg[5] 
       (.C(ap_clk),
        .CE(table1_U_n_5),
        .D(p_09_0_i_fu_2600_p2[5]),
        .Q(outcandmatch_nentries_1_V[5]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_2_fu_260_reg[6] 
       (.C(ap_clk),
        .CE(table1_U_n_5),
        .D(p_09_0_i_fu_2600_p2[6]),
        .Q(outcandmatch_nentries_1_V[6]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_2_fu_260_reg[7] 
       (.C(ap_clk),
        .CE(table1_U_n_5),
        .D(p_09_0_i_fu_2600_p2[7]),
        .Q(outcandmatch_nentries_1_V[7]),
        .R(outcandmatch_nentrie_2_fu_260));
  LUT1 #(
    .INIT(2'h1)) 
    \outcandmatch_nentrie_fu_264[0]_i_1 
       (.I0(out[0]),
        .O(p_09_0_i_fu_2600_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outcandmatch_nentrie_fu_264[1]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(p_09_0_i_fu_2600_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \outcandmatch_nentrie_fu_264[2]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .O(p_09_0_i_fu_2600_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \outcandmatch_nentrie_fu_264[3]_i_1 
       (.I0(out[3]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .O(p_09_0_i_fu_2600_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \outcandmatch_nentrie_fu_264[4]_i_1 
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[3]),
        .O(p_09_0_i_fu_2600_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \outcandmatch_nentrie_fu_264[5]_i_1 
       (.I0(out[5]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[4]),
        .O(p_09_0_i_fu_2600_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outcandmatch_nentrie_fu_264[6]_i_1 
       (.I0(out[6]),
        .I1(\outcandmatch_nentrie_fu_264[7]_i_4_n_0 ),
        .O(p_09_0_i_fu_2600_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \outcandmatch_nentrie_fu_264[7]_i_3 
       (.I0(addr_index_assign_fu_268_reg[7]),
        .I1(\outcandmatch_nentrie_fu_264[7]_i_4_n_0 ),
        .I2(out[6]),
        .O(p_09_0_i_fu_2600_p2[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \outcandmatch_nentrie_fu_264[7]_i_4 
       (.I0(out[5]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[4]),
        .O(\outcandmatch_nentrie_fu_264[7]_i_4_n_0 ));
  FDRE \outcandmatch_nentrie_fu_264_reg[0] 
       (.C(ap_clk),
        .CE(outcandmatch_nentrie_fu_264),
        .D(p_09_0_i_fu_2600_p2[0]),
        .Q(outcandmatch_nentries_0_V[0]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_fu_264_reg[1] 
       (.C(ap_clk),
        .CE(outcandmatch_nentrie_fu_264),
        .D(p_09_0_i_fu_2600_p2[1]),
        .Q(outcandmatch_nentries_0_V[1]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_fu_264_reg[2] 
       (.C(ap_clk),
        .CE(outcandmatch_nentrie_fu_264),
        .D(p_09_0_i_fu_2600_p2[2]),
        .Q(outcandmatch_nentries_0_V[2]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_fu_264_reg[3] 
       (.C(ap_clk),
        .CE(outcandmatch_nentrie_fu_264),
        .D(p_09_0_i_fu_2600_p2[3]),
        .Q(outcandmatch_nentries_0_V[3]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_fu_264_reg[4] 
       (.C(ap_clk),
        .CE(outcandmatch_nentrie_fu_264),
        .D(p_09_0_i_fu_2600_p2[4]),
        .Q(outcandmatch_nentries_0_V[4]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_fu_264_reg[5] 
       (.C(ap_clk),
        .CE(outcandmatch_nentrie_fu_264),
        .D(p_09_0_i_fu_2600_p2[5]),
        .Q(outcandmatch_nentries_0_V[5]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_fu_264_reg[6] 
       (.C(ap_clk),
        .CE(outcandmatch_nentrie_fu_264),
        .D(p_09_0_i_fu_2600_p2[6]),
        .Q(outcandmatch_nentries_0_V[6]),
        .R(outcandmatch_nentrie_2_fu_260));
  FDRE \outcandmatch_nentrie_fu_264_reg[7] 
       (.C(ap_clk),
        .CE(outcandmatch_nentrie_fu_264),
        .D(p_09_0_i_fu_2600_p2[7]),
        .Q(outcandmatch_nentries_0_V[7]),
        .R(outcandmatch_nentrie_2_fu_260));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    outcandmatch_nentries_1_V_ap_vld_INST_0
       (.I0(Q[1]),
        .I1(grp_MatchEngine_1_0_s_fu_332_ap_ready),
        .I2(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(outcandmatch_nentries_0_V_ap_vld));
  LUT6 #(
    .INIT(64'h41D7D1D1474741D7)) 
    \p_0_out_inferred__3/q0[0]_i_2 
       (.I0(instubdata_dataarray_data_V_q0[5]),
        .I1(p_Repl2_2_fu_296[4]),
        .I2(instubdata_dataarray_data_V_q0[6]),
        .I3(instubdata_dataarray_data_V_q0[4]),
        .I4(\p_0_out_inferred__3/q0[0]_i_3_n_0 ),
        .I5(p_Repl2_2_fu_296[3]),
        .O(p_0_out));
  LUT2 #(
    .INIT(4'h7)) 
    \p_0_out_inferred__3/q0[0]_i_3 
       (.I0(p_Repl2_2_fu_296[1]),
        .I1(p_Repl2_2_fu_296[2]),
        .O(\p_0_out_inferred__3/q0[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_4_reg_597[0]_i_1 
       (.I0(p_4_reg_597_reg__0[0]),
        .O(\p_4_reg_597[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_4_reg_597[1]_i_1 
       (.I0(p_4_reg_597_reg__0[1]),
        .I1(p_4_reg_597_reg__0[0]),
        .O(istep_V_fu_713_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \p_4_reg_597[2]_i_1 
       (.I0(p_4_reg_597_reg__0[2]),
        .I1(p_4_reg_597_reg__0[0]),
        .I2(p_4_reg_597_reg__0[1]),
        .O(istep_V_fu_713_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \p_4_reg_597[3]_i_1 
       (.I0(p_4_reg_597_reg__0[3]),
        .I1(p_4_reg_597_reg__0[1]),
        .I2(p_4_reg_597_reg__0[0]),
        .I3(p_4_reg_597_reg__0[2]),
        .O(istep_V_fu_713_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \p_4_reg_597[4]_i_1 
       (.I0(p_4_reg_597_reg__0[4]),
        .I1(p_4_reg_597_reg__0[2]),
        .I2(p_4_reg_597_reg__0[0]),
        .I3(p_4_reg_597_reg__0[1]),
        .I4(p_4_reg_597_reg__0[3]),
        .O(istep_V_fu_713_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \p_4_reg_597[5]_i_1 
       (.I0(p_4_reg_597_reg__0[5]),
        .I1(p_4_reg_597_reg__0[4]),
        .I2(p_4_reg_597_reg__0[3]),
        .I3(p_4_reg_597_reg__0[1]),
        .I4(p_4_reg_597_reg__0[0]),
        .I5(p_4_reg_597_reg__0[2]),
        .O(istep_V_fu_713_p2[5]));
  LUT3 #(
    .INIT(8'h08)) 
    \p_4_reg_597[6]_i_1 
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(sel),
        .O(clear));
  LUT3 #(
    .INIT(8'h08)) 
    \p_4_reg_597[6]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(tmp_8_fu_707_p2),
        .O(sel));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \p_4_reg_597[6]_i_3 
       (.I0(p_4_reg_597_reg__0[6]),
        .I1(p_4_reg_597_reg__0[2]),
        .I2(\p_4_reg_597[6]_i_4_n_0 ),
        .I3(p_4_reg_597_reg__0[3]),
        .I4(p_4_reg_597_reg__0[4]),
        .I5(p_4_reg_597_reg__0[5]),
        .O(istep_V_fu_713_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \p_4_reg_597[6]_i_4 
       (.I0(p_4_reg_597_reg__0[1]),
        .I1(p_4_reg_597_reg__0[0]),
        .O(\p_4_reg_597[6]_i_4_n_0 ));
  FDRE \p_4_reg_597_reg[0] 
       (.C(ap_clk),
        .CE(sel),
        .D(\p_4_reg_597[0]_i_1_n_0 ),
        .Q(p_4_reg_597_reg__0[0]),
        .R(clear));
  FDRE \p_4_reg_597_reg[1] 
       (.C(ap_clk),
        .CE(sel),
        .D(istep_V_fu_713_p2[1]),
        .Q(p_4_reg_597_reg__0[1]),
        .R(clear));
  FDRE \p_4_reg_597_reg[2] 
       (.C(ap_clk),
        .CE(sel),
        .D(istep_V_fu_713_p2[2]),
        .Q(p_4_reg_597_reg__0[2]),
        .R(clear));
  FDRE \p_4_reg_597_reg[3] 
       (.C(ap_clk),
        .CE(sel),
        .D(istep_V_fu_713_p2[3]),
        .Q(p_4_reg_597_reg__0[3]),
        .R(clear));
  FDRE \p_4_reg_597_reg[4] 
       (.C(ap_clk),
        .CE(sel),
        .D(istep_V_fu_713_p2[4]),
        .Q(p_4_reg_597_reg__0[4]),
        .R(clear));
  FDRE \p_4_reg_597_reg[5] 
       (.C(ap_clk),
        .CE(sel),
        .D(istep_V_fu_713_p2[5]),
        .Q(p_4_reg_597_reg__0[5]),
        .R(clear));
  FDRE \p_4_reg_597_reg[6] 
       (.C(ap_clk),
        .CE(sel),
        .D(istep_V_fu_713_p2[6]),
        .Q(p_4_reg_597_reg__0[6]),
        .R(clear));
  LUT3 #(
    .INIT(8'h40)) 
    \p_Repl2_1_fu_292[6]_i_1 
       (.I0(buffernotempty_reg_3034_pp0_iter2_reg),
        .I1(tmp_6_reg_3071_pp0_iter2_reg),
        .I2(ap_enable_reg_pp0_iter3),
        .O(\p_Repl2_1_fu_292[6]_i_1_n_0 ));
  FDRE \p_Repl2_1_fu_292_reg[0] 
       (.C(ap_clk),
        .CE(\p_Repl2_1_fu_292[6]_i_1_n_0 ),
        .D(projindex_V_reg_3078_pp0_iter2_reg[0]),
        .Q(outcandmatch_dataarray_data_V_d0[7]),
        .R(1'b0));
  FDRE \p_Repl2_1_fu_292_reg[1] 
       (.C(ap_clk),
        .CE(\p_Repl2_1_fu_292[6]_i_1_n_0 ),
        .D(projindex_V_reg_3078_pp0_iter2_reg[1]),
        .Q(outcandmatch_dataarray_data_V_d0[8]),
        .R(1'b0));
  FDRE \p_Repl2_1_fu_292_reg[2] 
       (.C(ap_clk),
        .CE(\p_Repl2_1_fu_292[6]_i_1_n_0 ),
        .D(projindex_V_reg_3078_pp0_iter2_reg[2]),
        .Q(outcandmatch_dataarray_data_V_d0[9]),
        .R(1'b0));
  FDRE \p_Repl2_1_fu_292_reg[3] 
       (.C(ap_clk),
        .CE(\p_Repl2_1_fu_292[6]_i_1_n_0 ),
        .D(projindex_V_reg_3078_pp0_iter2_reg[3]),
        .Q(outcandmatch_dataarray_data_V_d0[10]),
        .R(1'b0));
  FDRE \p_Repl2_1_fu_292_reg[4] 
       (.C(ap_clk),
        .CE(\p_Repl2_1_fu_292[6]_i_1_n_0 ),
        .D(projindex_V_reg_3078_pp0_iter2_reg[4]),
        .Q(outcandmatch_dataarray_data_V_d0[11]),
        .R(1'b0));
  FDRE \p_Repl2_1_fu_292_reg[5] 
       (.C(ap_clk),
        .CE(\p_Repl2_1_fu_292[6]_i_1_n_0 ),
        .D(projindex_V_reg_3078_pp0_iter2_reg[5]),
        .Q(outcandmatch_dataarray_data_V_d0[12]),
        .R(1'b0));
  FDRE \p_Repl2_1_fu_292_reg[6] 
       (.C(ap_clk),
        .CE(\p_Repl2_1_fu_292[6]_i_1_n_0 ),
        .D(projindex_V_reg_3078_pp0_iter2_reg[6]),
        .Q(outcandmatch_dataarray_data_V_d0[13]),
        .R(1'b0));
  FDRE \p_Repl2_2_fu_296_reg[1] 
       (.C(ap_clk),
        .CE(isPSseed_fu_2720),
        .D(projrinv_V_reg_3083[1]),
        .Q(p_Repl2_2_fu_296[1]),
        .R(1'b0));
  FDRE \p_Repl2_2_fu_296_reg[2] 
       (.C(ap_clk),
        .CE(isPSseed_fu_2720),
        .D(projrinv_V_reg_3083[2]),
        .Q(p_Repl2_2_fu_296[2]),
        .R(1'b0));
  FDRE \p_Repl2_2_fu_296_reg[3] 
       (.C(ap_clk),
        .CE(isPSseed_fu_2720),
        .D(projrinv_V_reg_3083[3]),
        .Q(p_Repl2_2_fu_296[3]),
        .R(1'b0));
  FDRE \p_Repl2_2_fu_296_reg[4] 
       (.C(ap_clk),
        .CE(isPSseed_fu_2720),
        .D(projrinv_V_reg_3083[4]),
        .Q(p_Repl2_2_fu_296[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hA808)) 
    \p_Repl2_s_fu_288[0]_i_1 
       (.I0(\p_Repl2_s_fu_288[2]_i_3_n_0 ),
        .I1(\p_Repl2_s_fu_288[0]_i_2_n_0 ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[2] ),
        .I3(\p_Repl2_s_fu_288[0]_i_3_n_0 ),
        .O(\p_Repl2_s_fu_288[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_Repl2_s_fu_288[0]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[1] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[1] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[1] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[1] ),
        .O(\p_Repl2_s_fu_288[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_Repl2_s_fu_288[0]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[1] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[1] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[1] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[1] ),
        .O(\p_Repl2_s_fu_288[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \p_Repl2_s_fu_288[1]_i_1 
       (.I0(\p_Repl2_s_fu_288[2]_i_3_n_0 ),
        .I1(\p_Repl2_s_fu_288[1]_i_2_n_0 ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[2] ),
        .I3(\p_Repl2_s_fu_288[1]_i_3_n_0 ),
        .O(\p_Repl2_s_fu_288[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \p_Repl2_s_fu_288[1]_i_2 
       (.I0(\projbuffer_7_V_35_fu_232_reg_n_0_[2] ),
        .I1(\projbuffer_7_V_40_fu_228_reg_n_0_[2] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_22_fu_240_reg_n_0_[2] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_29_fu_236_reg_n_0_[2] ),
        .O(\p_Repl2_s_fu_288[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \p_Repl2_s_fu_288[1]_i_3 
       (.I0(\projbuffer_7_V_44_fu_248_reg_n_0_[2] ),
        .I1(\projbuffer_7_V_8_fu_244_reg_n_0_[2] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_fu_256_reg_n_0_[2] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_45_fu_252_reg_n_0_[2] ),
        .O(\p_Repl2_s_fu_288[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \p_Repl2_s_fu_288[2]_i_1 
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\p_Repl2_s_fu_288[2]_i_3_n_0 ),
        .O(\p_Repl2_s_fu_288[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \p_Repl2_s_fu_288[2]_i_2 
       (.I0(\p_Repl2_s_fu_288[2]_i_3_n_0 ),
        .I1(\p_Repl2_s_fu_288[2]_i_4_n_0 ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[2] ),
        .I3(\p_Repl2_s_fu_288[2]_i_5_n_0 ),
        .O(\p_Repl2_s_fu_288[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \p_Repl2_s_fu_288[2]_i_3 
       (.I0(\buffernotempty_reg_3034[0]_i_1_n_0 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(tmp_6_fu_2248_p2),
        .O(\p_Repl2_s_fu_288[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \p_Repl2_s_fu_288[2]_i_4 
       (.I0(\projbuffer_7_V_35_fu_232_reg_n_0_[3] ),
        .I1(\projbuffer_7_V_40_fu_228_reg_n_0_[3] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_22_fu_240_reg_n_0_[3] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_29_fu_236_reg_n_0_[3] ),
        .O(\p_Repl2_s_fu_288[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \p_Repl2_s_fu_288[2]_i_5 
       (.I0(\projbuffer_7_V_44_fu_248_reg_n_0_[3] ),
        .I1(\projbuffer_7_V_8_fu_244_reg_n_0_[3] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_fu_256_reg_n_0_[3] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_45_fu_252_reg_n_0_[3] ),
        .O(\p_Repl2_s_fu_288[2]_i_5_n_0 ));
  FDRE \p_Repl2_s_fu_288_reg[0] 
       (.C(ap_clk),
        .CE(\p_Repl2_s_fu_288[2]_i_1_n_0 ),
        .D(\p_Repl2_s_fu_288[0]_i_1_n_0 ),
        .Q(instubdata_dataarray_data_V_address0[4]),
        .R(1'b0));
  FDRE \p_Repl2_s_fu_288_reg[1] 
       (.C(ap_clk),
        .CE(\p_Repl2_s_fu_288[2]_i_1_n_0 ),
        .D(\p_Repl2_s_fu_288[1]_i_1_n_0 ),
        .Q(instubdata_dataarray_data_V_address0[5]),
        .R(1'b0));
  FDRE \p_Repl2_s_fu_288_reg[2] 
       (.C(ap_clk),
        .CE(\p_Repl2_s_fu_288[2]_i_1_n_0 ),
        .D(\p_Repl2_s_fu_288[2]_i_2_n_0 ),
        .Q(instubdata_dataarray_data_V_address0[6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB008100D)) 
    \pass_2_reg_3116[0]_i_1 
       (.I0(isPSseed_fu_272),
        .I1(\pass_2_reg_3116[0]_i_2_n_0 ),
        .I2(\pass_2_reg_3116[0]_i_3_n_0 ),
        .I3(\pass_2_reg_3116[0]_i_4_n_0 ),
        .I4(\pass_2_reg_3116[0]_i_5_n_0 ),
        .O(pass_2_fu_2538_p3));
  LUT6 #(
    .INIT(64'h0690900906900690)) 
    \pass_2_reg_3116[0]_i_2 
       (.I0(projfinezadj_V_3_fu_280[2]),
        .I1(instubdata_dataarray_data_V_q0[2]),
        .I2(projfinezadj_V_3_fu_280[1]),
        .I3(instubdata_dataarray_data_V_q0[1]),
        .I4(instubdata_dataarray_data_V_q0[0]),
        .I5(projfinezadj_V_3_fu_280[0]),
        .O(\pass_2_reg_3116[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h599A)) 
    \pass_2_reg_3116[0]_i_3 
       (.I0(projfinezadj_V_3_fu_280[4]),
        .I1(projfinezadj_V_3_fu_280[3]),
        .I2(\pass_2_reg_3116[0]_i_6_n_0 ),
        .I3(instubdata_dataarray_data_V_q0[3]),
        .O(\pass_2_reg_3116[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pass_2_reg_3116[0]_i_4 
       (.I0(\pass_2_reg_3116[0]_i_6_n_0 ),
        .I1(instubdata_dataarray_data_V_q0[3]),
        .I2(projfinezadj_V_3_fu_280[3]),
        .O(\pass_2_reg_3116[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9909606690999909)) 
    \pass_2_reg_3116[0]_i_5 
       (.I0(projfinezadj_V_3_fu_280[2]),
        .I1(instubdata_dataarray_data_V_q0[2]),
        .I2(projfinezadj_V_3_fu_280[0]),
        .I3(instubdata_dataarray_data_V_q0[0]),
        .I4(instubdata_dataarray_data_V_q0[1]),
        .I5(projfinezadj_V_3_fu_280[1]),
        .O(\pass_2_reg_3116[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA2AA2022FBFFBABB)) 
    \pass_2_reg_3116[0]_i_6 
       (.I0(instubdata_dataarray_data_V_q0[2]),
        .I1(projfinezadj_V_3_fu_280[1]),
        .I2(instubdata_dataarray_data_V_q0[0]),
        .I3(projfinezadj_V_3_fu_280[0]),
        .I4(instubdata_dataarray_data_V_q0[1]),
        .I5(projfinezadj_V_3_fu_280[2]),
        .O(\pass_2_reg_3116[0]_i_6_n_0 ));
  FDRE \pass_2_reg_3116_reg[0] 
       (.C(ap_clk),
        .CE(\stubindex_V_reg_3111[6]_i_1_n_0 ),
        .D(pass_2_fu_2538_p3),
        .Q(pass_2_reg_3116),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5404)) 
    \projbuffer_7_V_22_fu_240[0]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .O(projbuffer_7_V_167_fu_2093_p3[0]));
  LUT6 #(
    .INIT(64'hBAFFBFFF45004000)) 
    \projbuffer_7_V_22_fu_240[1]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[10]),
        .O(projbuffer_7_V_167_fu_2093_p3[1]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_22_fu_240[26]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ),
        .I4(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_4_n_0 ),
        .O(projbuffer_7_V_167_fu_2093_p3[26]));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_22_fu_240[27]_i_1 
       (.I0(\savefirst_reg_3044[0]_i_5_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_2_n_0 ),
        .I5(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .O(projbuffer_7_V_167_fu_2093_p3[27]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_22_fu_240[28]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_2_n_0 ),
        .I4(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_3_n_0 ),
        .O(projbuffer_7_V_167_fu_2093_p3[28]));
  LUT6 #(
    .INIT(64'h0080000000A00080)) 
    \projbuffer_7_V_22_fu_240[29]_i_1 
       (.I0(\projbuffer_7_V_35_fu_232[29]_i_3_n_0 ),
        .I1(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I2(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .I3(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .I4(p_5_in),
        .I5(\savelast_reg_3050[0]_i_3_n_0 ),
        .O(projbuffer_7_V_22_fu_240));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_22_fu_240[29]_i_2 
       (.I0(\savefirst_reg_3044[0]_i_6_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_5_n_0 ),
        .I5(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .O(projbuffer_7_V_167_fu_2093_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \projbuffer_7_V_22_fu_240[29]_i_3 
       (.I0(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I1(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .I2(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .O(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_22_fu_240[2]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I4(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[11]),
        .O(projbuffer_7_V_167_fu_2093_p3[2]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_22_fu_240[3]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I4(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[12]),
        .O(projbuffer_7_V_167_fu_2093_p3[3]));
  FDRE \projbuffer_7_V_22_fu_240_reg[0] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(projbuffer_7_V_167_fu_2093_p3[0]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[10] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[5]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[11] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[6]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[12] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[7]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[13] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[8]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[18] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[13]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[19] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[14]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[1] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(projbuffer_7_V_167_fu_2093_p3[1]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[20] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[15]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[21] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[16]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[22] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[17]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[23] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[18]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[24] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[19]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[26] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(projbuffer_7_V_167_fu_2093_p3[26]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[27] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(projbuffer_7_V_167_fu_2093_p3[27]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[28] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(projbuffer_7_V_167_fu_2093_p3[28]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[29] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(projbuffer_7_V_167_fu_2093_p3[29]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[2] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(projbuffer_7_V_167_fu_2093_p3[2]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[3] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(projbuffer_7_V_167_fu_2093_p3[3]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[4] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[0]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[6] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[1]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[7] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[2]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[8] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[3]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_22_fu_240_reg[9] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_22_fu_240),
        .D(inprojdata_dataarray_data_V_q0[4]),
        .Q(\projbuffer_7_V_22_fu_240_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \projbuffer_7_V_29_fu_236[0]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .O(projbuffer_7_V_168_fu_2101_p3[0]));
  LUT6 #(
    .INIT(64'hBAFFBFFF45004000)) 
    \projbuffer_7_V_29_fu_236[1]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[10]),
        .O(projbuffer_7_V_168_fu_2101_p3[1]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_29_fu_236[26]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ),
        .I4(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_4_n_0 ),
        .O(projbuffer_7_V_168_fu_2101_p3[26]));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_29_fu_236[27]_i_1 
       (.I0(\savefirst_reg_3044[0]_i_5_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_2_n_0 ),
        .I5(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .O(projbuffer_7_V_168_fu_2101_p3[27]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_29_fu_236[28]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_2_n_0 ),
        .I4(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_3_n_0 ),
        .O(projbuffer_7_V_168_fu_2101_p3[28]));
  LUT6 #(
    .INIT(64'h000000000A022000)) 
    \projbuffer_7_V_29_fu_236[29]_i_1 
       (.I0(\projbuffer_7_V_35_fu_232[29]_i_3_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I3(p_5_in),
        .I4(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .I5(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .O(projbuffer_7_V_29_fu_236));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_29_fu_236[29]_i_2 
       (.I0(\savefirst_reg_3044[0]_i_6_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_5_n_0 ),
        .I5(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .O(projbuffer_7_V_168_fu_2101_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \projbuffer_7_V_29_fu_236[29]_i_3 
       (.I0(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I1(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .I2(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .O(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_29_fu_236[2]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I4(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[11]),
        .O(projbuffer_7_V_168_fu_2101_p3[2]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_29_fu_236[3]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I4(\projbuffer_7_V_29_fu_236[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[12]),
        .O(projbuffer_7_V_168_fu_2101_p3[3]));
  FDRE \projbuffer_7_V_29_fu_236_reg[0] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(projbuffer_7_V_168_fu_2101_p3[0]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[10] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[5]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[11] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[6]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[12] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[7]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[13] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[8]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[18] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[13]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[19] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[14]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[1] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(projbuffer_7_V_168_fu_2101_p3[1]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[20] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[15]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[21] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[16]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[22] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[17]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[23] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[18]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[24] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[19]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[26] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(projbuffer_7_V_168_fu_2101_p3[26]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[27] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(projbuffer_7_V_168_fu_2101_p3[27]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[28] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(projbuffer_7_V_168_fu_2101_p3[28]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[29] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(projbuffer_7_V_168_fu_2101_p3[29]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[2] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(projbuffer_7_V_168_fu_2101_p3[2]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[3] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(projbuffer_7_V_168_fu_2101_p3[3]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[4] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[0]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[6] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[1]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[7] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[2]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[8] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[3]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_29_fu_236_reg[9] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_29_fu_236),
        .D(inprojdata_dataarray_data_V_q0[4]),
        .Q(\projbuffer_7_V_29_fu_236_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \projbuffer_7_V_35_fu_232[0]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .O(projbuffer_7_V_169_fu_2109_p3[0]));
  LUT6 #(
    .INIT(64'hBAFFBFFF45004000)) 
    \projbuffer_7_V_35_fu_232[1]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[10]),
        .O(projbuffer_7_V_169_fu_2109_p3[1]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_35_fu_232[26]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ),
        .I4(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_4_n_0 ),
        .O(projbuffer_7_V_169_fu_2109_p3[26]));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_35_fu_232[27]_i_1 
       (.I0(\savefirst_reg_3044[0]_i_5_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_2_n_0 ),
        .I5(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .O(projbuffer_7_V_169_fu_2109_p3[27]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_35_fu_232[28]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_2_n_0 ),
        .I4(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_3_n_0 ),
        .O(projbuffer_7_V_169_fu_2109_p3[28]));
  LUT6 #(
    .INIT(64'h000A000200020000)) 
    \projbuffer_7_V_35_fu_232[29]_i_1 
       (.I0(\projbuffer_7_V_35_fu_232[29]_i_3_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .I3(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .I4(p_5_in),
        .I5(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .O(projbuffer_7_V_35_fu_232));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_35_fu_232[29]_i_2 
       (.I0(\savefirst_reg_3044[0]_i_6_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_5_n_0 ),
        .I5(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .O(projbuffer_7_V_169_fu_2109_p3[29]));
  LUT6 #(
    .INIT(64'h000000008A888088)) 
    \projbuffer_7_V_35_fu_232[29]_i_3 
       (.I0(\inprojdata_dataarray_data_V_address0[3]_INST_0_i_1_n_0 ),
        .I1(moreproj1_reg_608),
        .I2(tmp_8_reg_3007_pp0_iter1_reg),
        .I3(instubdata_dataarray_data_V_ce0),
        .I4(moreproj_1_reg_3061),
        .I5(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_4_n_0 ),
        .O(\projbuffer_7_V_35_fu_232[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \projbuffer_7_V_35_fu_232[29]_i_4 
       (.I0(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I1(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .I2(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .O(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_35_fu_232[2]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I4(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[11]),
        .O(projbuffer_7_V_169_fu_2109_p3[2]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_35_fu_232[3]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I4(\projbuffer_7_V_35_fu_232[29]_i_4_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[12]),
        .O(projbuffer_7_V_169_fu_2109_p3[3]));
  FDRE \projbuffer_7_V_35_fu_232_reg[0] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(projbuffer_7_V_169_fu_2109_p3[0]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[10] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[5]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[11] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[6]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[12] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[7]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[13] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[8]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[18] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[13]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[19] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[14]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[1] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(projbuffer_7_V_169_fu_2109_p3[1]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[20] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[15]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[21] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[16]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[22] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[17]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[23] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[18]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[24] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[19]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[26] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(projbuffer_7_V_169_fu_2109_p3[26]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[27] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(projbuffer_7_V_169_fu_2109_p3[27]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[28] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(projbuffer_7_V_169_fu_2109_p3[28]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[29] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(projbuffer_7_V_169_fu_2109_p3[29]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[2] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(projbuffer_7_V_169_fu_2109_p3[2]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[3] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(projbuffer_7_V_169_fu_2109_p3[3]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[4] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[0]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[6] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[1]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[7] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[2]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[8] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[3]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_35_fu_232_reg[9] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_35_fu_232),
        .D(inprojdata_dataarray_data_V_q0[4]),
        .Q(\projbuffer_7_V_35_fu_232_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \projbuffer_7_V_40_fu_228[0]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .O(projbuffer_7_V_170_fu_2117_p3[0]));
  LUT6 #(
    .INIT(64'hBAFFBFFF45004000)) 
    \projbuffer_7_V_40_fu_228[1]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[10]),
        .O(projbuffer_7_V_170_fu_2117_p3[1]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_40_fu_228[26]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_4_n_0 ),
        .O(projbuffer_7_V_170_fu_2117_p3[26]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_10 
       (.I0(instubdata_nentries_0_V_5[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_4[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_11 
       (.I0(instubdata_nentries_0_V_3[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_2[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_12 
       (.I0(instubdata_nentries_0_V_1[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_0[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_13 
       (.I0(instubdata_nentries_1_V_7[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_6[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_14 
       (.I0(instubdata_nentries_1_V_5[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_4[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_15 
       (.I0(instubdata_nentries_1_V_3[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_2[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_16 
       (.I0(instubdata_nentries_1_V_1[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_0[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_17 
       (.I0(instubdata_nentries_2_V_7[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_6[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_18 
       (.I0(instubdata_nentries_2_V_5[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_4[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_19 
       (.I0(instubdata_nentries_2_V_3[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_2[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_20 
       (.I0(instubdata_nentries_2_V_1[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_0[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_21 
       (.I0(instubdata_nentries_3_V_7[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_6[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_22 
       (.I0(instubdata_nentries_3_V_5[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_4[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_23 
       (.I0(instubdata_nentries_3_V_3[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_2[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_24 
       (.I0(instubdata_nentries_3_V_1[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_0[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[26]_i_5 
       (.I0(\projbuffer_7_V_40_fu_228[26]_i_9_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[26]_i_10_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[26]_i_11_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[26]_i_12_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[26]_i_6 
       (.I0(\projbuffer_7_V_40_fu_228[26]_i_13_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[26]_i_14_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[26]_i_15_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[26]_i_16_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[26]_i_7 
       (.I0(\projbuffer_7_V_40_fu_228[26]_i_17_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[26]_i_18_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[26]_i_19_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[26]_i_20_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[26]_i_8 
       (.I0(\projbuffer_7_V_40_fu_228[26]_i_21_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[26]_i_22_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[26]_i_23_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[26]_i_24_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[26]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[26]_i_9 
       (.I0(instubdata_nentries_0_V_7[0]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_6[0]),
        .O(\projbuffer_7_V_40_fu_228[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_40_fu_228[27]_i_1 
       (.I0(\savefirst_reg_3044[0]_i_5_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .O(projbuffer_7_V_170_fu_2117_p3[27]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB557BFF7)) 
    \projbuffer_7_V_40_fu_228[27]_i_10 
       (.I0(inprojdata_dataarray_data_V_q0[11]),
        .I1(instubdata_nentries_3_V_2[1]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(inprojdata_dataarray_data_V_q0[10]),
        .I4(instubdata_nentries_3_V_3[1]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hA00C0C0A)) 
    \projbuffer_7_V_40_fu_228[27]_i_11 
       (.I0(instubdata_nentries_2_V_0[1]),
        .I1(instubdata_nentries_2_V_1[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB557BFF7)) 
    \projbuffer_7_V_40_fu_228[27]_i_12 
       (.I0(inprojdata_dataarray_data_V_q0[11]),
        .I1(instubdata_nentries_2_V_2[1]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(inprojdata_dataarray_data_V_q0[10]),
        .I4(instubdata_nentries_2_V_3[1]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hA00C0C0A)) 
    \projbuffer_7_V_40_fu_228[27]_i_13 
       (.I0(instubdata_nentries_2_V_4[1]),
        .I1(instubdata_nentries_2_V_5[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB557BFF7)) 
    \projbuffer_7_V_40_fu_228[27]_i_14 
       (.I0(inprojdata_dataarray_data_V_q0[11]),
        .I1(instubdata_nentries_2_V_6[1]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(inprojdata_dataarray_data_V_q0[10]),
        .I4(instubdata_nentries_2_V_7[1]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[27]_i_15 
       (.I0(instubdata_nentries_1_V_5[1]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_4[1]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[27]_i_16 
       (.I0(instubdata_nentries_1_V_7[1]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_6[1]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[27]_i_17 
       (.I0(instubdata_nentries_1_V_3[1]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_2[1]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \projbuffer_7_V_40_fu_228[27]_i_18 
       (.I0(inprojdata_dataarray_data_V_q0[11]),
        .I1(inprojdata_dataarray_data_V_q0[9]),
        .I2(inprojdata_dataarray_data_V_q0[10]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[27]_i_19 
       (.I0(instubdata_nentries_1_V_1[1]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_0[1]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0EFE0E0)) 
    \projbuffer_7_V_40_fu_228[27]_i_2 
       (.I0(\projbuffer_7_V_40_fu_228[27]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[27]_i_4_n_0 ),
        .I2(\instubdata_dataarray_data_V_address0[8] ),
        .I3(\projbuffer_7_V_40_fu_228[27]_i_5_n_0 ),
        .I4(\instubdata_dataarray_data_V_address0[7] ),
        .I5(\projbuffer_7_V_40_fu_228[27]_i_6_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA00C0C0A)) 
    \projbuffer_7_V_40_fu_228[27]_i_20 
       (.I0(instubdata_nentries_0_V_4[1]),
        .I1(instubdata_nentries_0_V_5[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB557BFF7)) 
    \projbuffer_7_V_40_fu_228[27]_i_21 
       (.I0(inprojdata_dataarray_data_V_q0[11]),
        .I1(instubdata_nentries_0_V_6[1]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(inprojdata_dataarray_data_V_q0[10]),
        .I4(instubdata_nentries_0_V_7[1]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0CCAA000)) 
    \projbuffer_7_V_40_fu_228[27]_i_22 
       (.I0(instubdata_nentries_0_V_2[1]),
        .I1(instubdata_nentries_0_V_3[1]),
        .I2(inprojdata_dataarray_data_V_q0[10]),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(inprojdata_dataarray_data_V_q0[11]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h7AAB7FFB)) 
    \projbuffer_7_V_40_fu_228[27]_i_23 
       (.I0(inprojdata_dataarray_data_V_q0[11]),
        .I1(instubdata_nentries_0_V_0[1]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(inprojdata_dataarray_data_V_q0[10]),
        .I4(instubdata_nentries_0_V_1[1]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAA8A008AAA8AAA8A)) 
    \projbuffer_7_V_40_fu_228[27]_i_3 
       (.I0(\instubdata_dataarray_data_V_address0[7] ),
        .I1(\projbuffer_7_V_40_fu_228[27]_i_7_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[27]_i_8_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[29]_i_16_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_9_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[27]_i_10_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5545004555455545)) 
    \projbuffer_7_V_40_fu_228[27]_i_4 
       (.I0(\instubdata_dataarray_data_V_address0[7] ),
        .I1(\projbuffer_7_V_40_fu_228[27]_i_11_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[27]_i_12_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_13_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[27]_i_14_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \projbuffer_7_V_40_fu_228[27]_i_5 
       (.I0(\projbuffer_7_V_40_fu_228[27]_i_15_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[27]_i_16_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[27]_i_17_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_18_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[27]_i_19_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5545004555455545)) 
    \projbuffer_7_V_40_fu_228[27]_i_6 
       (.I0(\instubdata_dataarray_data_V_address0[7] ),
        .I1(\projbuffer_7_V_40_fu_228[27]_i_20_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[27]_i_21_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[29]_i_16_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_22_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[27]_i_23_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0CCAA000)) 
    \projbuffer_7_V_40_fu_228[27]_i_7 
       (.I0(instubdata_nentries_3_V_6[1]),
        .I1(instubdata_nentries_3_V_7[1]),
        .I2(inprojdata_dataarray_data_V_q0[10]),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(inprojdata_dataarray_data_V_q0[11]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h7AAB7FFB)) 
    \projbuffer_7_V_40_fu_228[27]_i_8 
       (.I0(inprojdata_dataarray_data_V_q0[11]),
        .I1(instubdata_nentries_3_V_4[1]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(inprojdata_dataarray_data_V_q0[10]),
        .I4(instubdata_nentries_3_V_5[1]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA00C0C0A)) 
    \projbuffer_7_V_40_fu_228[27]_i_9 
       (.I0(instubdata_nentries_3_V_0[1]),
        .I1(instubdata_nentries_3_V_1[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .O(\projbuffer_7_V_40_fu_228[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_40_fu_228[28]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_2_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_3_n_0 ),
        .O(projbuffer_7_V_170_fu_2117_p3[28]));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_10 
       (.I0(instubdata_nentries_3_V_1[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_0[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_11 
       (.I0(instubdata_nentries_2_V_7[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_6[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_12 
       (.I0(instubdata_nentries_2_V_5[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_4[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_13 
       (.I0(instubdata_nentries_2_V_3[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_2[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_14 
       (.I0(instubdata_nentries_2_V_1[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_0[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_15 
       (.I0(instubdata_nentries_1_V_7[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_6[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_16 
       (.I0(instubdata_nentries_1_V_5[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_4[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_17 
       (.I0(instubdata_nentries_1_V_3[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_2[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_18 
       (.I0(instubdata_nentries_1_V_1[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_0[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_19 
       (.I0(instubdata_nentries_0_V_7[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_6[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \projbuffer_7_V_40_fu_228[28]_i_2 
       (.I0(\projbuffer_7_V_40_fu_228[28]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[28]_i_4_n_0 ),
        .I2(\instubdata_dataarray_data_V_address0[8] ),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_5_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[28]_i_6_n_0 ),
        .I5(\instubdata_dataarray_data_V_address0[7] ),
        .O(\projbuffer_7_V_40_fu_228[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_20 
       (.I0(instubdata_nentries_0_V_5[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_4[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_21 
       (.I0(instubdata_nentries_0_V_3[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_2[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_22 
       (.I0(instubdata_nentries_0_V_1[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_0[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[28]_i_3 
       (.I0(\projbuffer_7_V_40_fu_228[28]_i_7_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[28]_i_8_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_9_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[28]_i_10_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[28]_i_4 
       (.I0(\projbuffer_7_V_40_fu_228[28]_i_11_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[28]_i_12_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_13_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[28]_i_14_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[28]_i_5 
       (.I0(\projbuffer_7_V_40_fu_228[28]_i_15_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[28]_i_16_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_17_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[28]_i_18_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[28]_i_6 
       (.I0(\projbuffer_7_V_40_fu_228[28]_i_19_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[28]_i_20_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_21_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[28]_i_22_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_7 
       (.I0(instubdata_nentries_3_V_7[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_6[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_8 
       (.I0(instubdata_nentries_3_V_5[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_4[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[28]_i_9 
       (.I0(instubdata_nentries_3_V_3[2]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_2[2]),
        .O(\projbuffer_7_V_40_fu_228[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DC440000)) 
    \projbuffer_7_V_40_fu_228[29]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I3(p_5_in),
        .I4(\inprojdata_dataarray_data_V_address0[3]_INST_0_i_1_n_0 ),
        .I5(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .O(projbuffer_7_V_40_fu_228));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_10 
       (.I0(instubdata_nentries_2_V_7[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_6[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_11 
       (.I0(instubdata_nentries_2_V_5[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_4[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_12 
       (.I0(instubdata_nentries_2_V_3[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_2[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_13 
       (.I0(instubdata_nentries_2_V_1[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_0[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_14 
       (.I0(instubdata_nentries_3_V_3[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_2[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_15 
       (.I0(instubdata_nentries_3_V_1[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_0[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \projbuffer_7_V_40_fu_228[29]_i_16 
       (.I0(inprojdata_dataarray_data_V_q0[12]),
        .I1(inprojdata_dataarray_data_V_q0[11]),
        .I2(inprojdata_dataarray_data_V_q0[10]),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_17 
       (.I0(instubdata_nentries_3_V_7[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_6[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_18 
       (.I0(instubdata_nentries_3_V_5[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_4[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_19 
       (.I0(instubdata_nentries_1_V_7[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_6[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_40_fu_228[29]_i_2 
       (.I0(\savefirst_reg_3044[0]_i_6_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_5_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .O(projbuffer_7_V_170_fu_2117_p3[29]));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_20 
       (.I0(instubdata_nentries_1_V_5[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_4[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_21 
       (.I0(instubdata_nentries_1_V_3[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_2[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \projbuffer_7_V_40_fu_228[29]_i_22 
       (.I0(instubdata_nentries_1_V_1[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_0[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[29]_i_23 
       (.I0(instubdata_nentries_0_V_7[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_6[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[29]_i_24 
       (.I0(instubdata_nentries_0_V_5[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_4[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[29]_i_25 
       (.I0(instubdata_nentries_0_V_3[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_2[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \projbuffer_7_V_40_fu_228[29]_i_26 
       (.I0(instubdata_nentries_0_V_1[3]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_0[3]),
        .O(\projbuffer_7_V_40_fu_228[29]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004575)) 
    \projbuffer_7_V_40_fu_228[29]_i_3 
       (.I0(writeindextmp_V_reg_573[2]),
        .I1(tmp_8_reg_3007_pp0_iter1_reg),
        .I2(instubdata_dataarray_data_V_ce0),
        .I3(\writeindextmp_V_reg_573[2]_i_3_n_0 ),
        .I4(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I5(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBA8A000000000000)) 
    \projbuffer_7_V_40_fu_228[29]_i_4 
       (.I0(writeindextmp_V_reg_573[2]),
        .I1(tmp_8_reg_3007_pp0_iter1_reg),
        .I2(instubdata_dataarray_data_V_ce0),
        .I3(\writeindextmp_V_reg_573[2]_i_3_n_0 ),
        .I4(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I5(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h303F5F5F303F5050)) 
    \projbuffer_7_V_40_fu_228[29]_i_5 
       (.I0(\projbuffer_7_V_40_fu_228[29]_i_6_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_7_n_0 ),
        .I2(\instubdata_dataarray_data_V_address0[8] ),
        .I3(\projbuffer_7_V_40_fu_228[29]_i_8_n_0 ),
        .I4(\instubdata_dataarray_data_V_address0[7] ),
        .I5(\projbuffer_7_V_40_fu_228[29]_i_9_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[29]_i_6 
       (.I0(\projbuffer_7_V_40_fu_228[29]_i_10_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_11_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[29]_i_12_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[29]_i_13_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[29]_i_7 
       (.I0(\projbuffer_7_V_40_fu_228[29]_i_14_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_15_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[29]_i_16_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[29]_i_17_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[29]_i_18_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[29]_i_8 
       (.I0(\projbuffer_7_V_40_fu_228[29]_i_19_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_20_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[29]_i_21_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[29]_i_22_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projbuffer_7_V_40_fu_228[29]_i_9 
       (.I0(\projbuffer_7_V_40_fu_228[29]_i_23_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_24_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[29]_i_25_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[29]_i_26_n_0 ),
        .O(\projbuffer_7_V_40_fu_228[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_40_fu_228[2]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[11]),
        .O(projbuffer_7_V_170_fu_2117_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \projbuffer_7_V_40_fu_228[2]_i_2 
       (.I0(inprojdata_dataarray_data_V_q0[10]),
        .I1(inprojdata_dataarray_data_V_q0[9]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .O(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_40_fu_228[3]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[12]),
        .O(projbuffer_7_V_170_fu_2117_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \projbuffer_7_V_40_fu_228[3]_i_2 
       (.I0(inprojdata_dataarray_data_V_q0[9]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(inprojdata_dataarray_data_V_q0[12]),
        .O(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ));
  FDRE \projbuffer_7_V_40_fu_228_reg[0] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(projbuffer_7_V_170_fu_2117_p3[0]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[10] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[5]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[11] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[6]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[12] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[7]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[13] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[8]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[18] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[13]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[19] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[14]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[1] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(projbuffer_7_V_170_fu_2117_p3[1]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[20] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[15]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[21] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[16]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[22] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[17]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[23] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[18]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[24] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[19]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[26] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(projbuffer_7_V_170_fu_2117_p3[26]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[26] ),
        .R(1'b0));
  MUXF8 \projbuffer_7_V_40_fu_228_reg[26]_i_2 
       (.I0(\projbuffer_7_V_40_fu_228_reg[26]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228_reg[26]_i_4_n_0 ),
        .O(\projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ),
        .S(\instubdata_dataarray_data_V_address0[8] ));
  MUXF7 \projbuffer_7_V_40_fu_228_reg[26]_i_3 
       (.I0(\projbuffer_7_V_40_fu_228[26]_i_5_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[26]_i_6_n_0 ),
        .O(\projbuffer_7_V_40_fu_228_reg[26]_i_3_n_0 ),
        .S(\instubdata_dataarray_data_V_address0[7] ));
  MUXF7 \projbuffer_7_V_40_fu_228_reg[26]_i_4 
       (.I0(\projbuffer_7_V_40_fu_228[26]_i_7_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[26]_i_8_n_0 ),
        .O(\projbuffer_7_V_40_fu_228_reg[26]_i_4_n_0 ),
        .S(\instubdata_dataarray_data_V_address0[7] ));
  FDRE \projbuffer_7_V_40_fu_228_reg[27] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(projbuffer_7_V_170_fu_2117_p3[27]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[28] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(projbuffer_7_V_170_fu_2117_p3[28]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[29] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(projbuffer_7_V_170_fu_2117_p3[29]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[2] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(projbuffer_7_V_170_fu_2117_p3[2]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[3] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(projbuffer_7_V_170_fu_2117_p3[3]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[4] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[0]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[6] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[1]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[7] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[2]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[8] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[3]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_40_fu_228_reg[9] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_40_fu_228),
        .D(inprojdata_dataarray_data_V_q0[4]),
        .Q(\projbuffer_7_V_40_fu_228_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \projbuffer_7_V_44_fu_248[0]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .O(projbuffer_7_V_165_fu_2077_p3[0]));
  LUT6 #(
    .INIT(64'hBAFFBFFF45004000)) 
    \projbuffer_7_V_44_fu_248[1]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[10]),
        .O(projbuffer_7_V_165_fu_2077_p3[1]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_44_fu_248[26]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ),
        .I4(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_4_n_0 ),
        .O(projbuffer_7_V_165_fu_2077_p3[26]));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_44_fu_248[27]_i_1 
       (.I0(\savefirst_reg_3044[0]_i_5_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_2_n_0 ),
        .I5(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .O(projbuffer_7_V_165_fu_2077_p3[27]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_44_fu_248[28]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_2_n_0 ),
        .I4(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_3_n_0 ),
        .O(projbuffer_7_V_165_fu_2077_p3[28]));
  LUT6 #(
    .INIT(64'h000000008A220200)) 
    \projbuffer_7_V_44_fu_248[29]_i_1 
       (.I0(\inprojdata_dataarray_data_V_address0[3]_INST_0_i_1_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_44_fu_248[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I5(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .O(projbuffer_7_V_44_fu_248));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_44_fu_248[29]_i_2 
       (.I0(\savefirst_reg_3044[0]_i_6_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_5_n_0 ),
        .I5(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .O(projbuffer_7_V_165_fu_2077_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \projbuffer_7_V_44_fu_248[29]_i_3 
       (.I0(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .I1(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .O(\projbuffer_7_V_44_fu_248[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \projbuffer_7_V_44_fu_248[29]_i_4 
       (.I0(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I1(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .I2(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .O(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_44_fu_248[2]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I4(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[11]),
        .O(projbuffer_7_V_165_fu_2077_p3[2]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_44_fu_248[3]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I4(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[12]),
        .O(projbuffer_7_V_165_fu_2077_p3[3]));
  FDRE \projbuffer_7_V_44_fu_248_reg[0] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(projbuffer_7_V_165_fu_2077_p3[0]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[10] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[5]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[11] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[6]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[12] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[7]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[13] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[8]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[18] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[13]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[19] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[14]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[1] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(projbuffer_7_V_165_fu_2077_p3[1]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[20] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[15]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[21] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[16]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[22] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[17]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[23] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[18]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[24] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[19]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[26] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(projbuffer_7_V_165_fu_2077_p3[26]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[27] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(projbuffer_7_V_165_fu_2077_p3[27]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[28] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(projbuffer_7_V_165_fu_2077_p3[28]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[29] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(projbuffer_7_V_165_fu_2077_p3[29]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[2] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(projbuffer_7_V_165_fu_2077_p3[2]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[3] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(projbuffer_7_V_165_fu_2077_p3[3]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[4] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[0]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[6] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[1]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[7] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[2]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[8] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[3]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_44_fu_248_reg[9] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_44_fu_248),
        .D(inprojdata_dataarray_data_V_q0[4]),
        .Q(\projbuffer_7_V_44_fu_248_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5404)) 
    \projbuffer_7_V_45_fu_252[0]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .O(projbuffer_7_V_164_fu_2069_p3[0]));
  LUT6 #(
    .INIT(64'hBAFFBFFF45004000)) 
    \projbuffer_7_V_45_fu_252[1]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[10]),
        .O(projbuffer_7_V_164_fu_2069_p3[1]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_45_fu_252[26]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ),
        .I4(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_4_n_0 ),
        .O(projbuffer_7_V_164_fu_2069_p3[26]));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_45_fu_252[27]_i_1 
       (.I0(\savefirst_reg_3044[0]_i_5_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_2_n_0 ),
        .I5(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .O(projbuffer_7_V_164_fu_2069_p3[27]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_45_fu_252[28]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_2_n_0 ),
        .I4(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_3_n_0 ),
        .O(projbuffer_7_V_164_fu_2069_p3[28]));
  LUT6 #(
    .INIT(64'h0A02000020000000)) 
    \projbuffer_7_V_45_fu_252[29]_i_1 
       (.I0(\projbuffer_7_V_35_fu_232[29]_i_3_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I3(p_5_in),
        .I4(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .I5(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .O(projbuffer_7_V_45_fu_252));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_45_fu_252[29]_i_2 
       (.I0(\savefirst_reg_3044[0]_i_6_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_5_n_0 ),
        .I5(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .O(projbuffer_7_V_164_fu_2069_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \projbuffer_7_V_45_fu_252[29]_i_3 
       (.I0(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I1(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .I2(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .O(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_45_fu_252[2]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I4(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[11]),
        .O(projbuffer_7_V_164_fu_2069_p3[2]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_45_fu_252[3]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_44_fu_248[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I4(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[12]),
        .O(projbuffer_7_V_164_fu_2069_p3[3]));
  FDRE \projbuffer_7_V_45_fu_252_reg[0] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(projbuffer_7_V_164_fu_2069_p3[0]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[10] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[5]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[11] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[6]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[12] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[7]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[13] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[8]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[18] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[13]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[19] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[14]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[1] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(projbuffer_7_V_164_fu_2069_p3[1]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[20] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[15]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[21] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[16]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[22] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[17]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[23] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[18]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[24] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[19]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[26] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(projbuffer_7_V_164_fu_2069_p3[26]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[27] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(projbuffer_7_V_164_fu_2069_p3[27]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[28] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(projbuffer_7_V_164_fu_2069_p3[28]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[29] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(projbuffer_7_V_164_fu_2069_p3[29]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[2] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(projbuffer_7_V_164_fu_2069_p3[2]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[3] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(projbuffer_7_V_164_fu_2069_p3[3]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[4] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[0]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[6] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[1]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[7] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[2]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[8] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[3]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_45_fu_252_reg[9] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_45_fu_252),
        .D(inprojdata_dataarray_data_V_q0[4]),
        .Q(\projbuffer_7_V_45_fu_252_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \projbuffer_7_V_8_fu_244[0]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .O(projbuffer_7_V_166_fu_2085_p3[0]));
  LUT6 #(
    .INIT(64'hBAFFBFFF45004000)) 
    \projbuffer_7_V_8_fu_244[1]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[10]),
        .O(projbuffer_7_V_166_fu_2085_p3[1]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_8_fu_244[26]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ),
        .I4(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_4_n_0 ),
        .O(projbuffer_7_V_166_fu_2085_p3[26]));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_8_fu_244[27]_i_1 
       (.I0(\savefirst_reg_3044[0]_i_5_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_2_n_0 ),
        .I5(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .O(projbuffer_7_V_166_fu_2085_p3[27]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_8_fu_244[28]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_2_n_0 ),
        .I4(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_3_n_0 ),
        .O(projbuffer_7_V_166_fu_2085_p3[28]));
  LUT6 #(
    .INIT(64'h4404440004000400)) 
    \projbuffer_7_V_8_fu_244[29]_i_1 
       (.I0(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .I1(\inprojdata_dataarray_data_V_address0[3]_INST_0_i_1_n_0 ),
        .I2(\savelast_reg_3050[0]_i_3_n_0 ),
        .I3(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I4(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I5(p_5_in),
        .O(projbuffer_7_V_8_fu_244));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_8_fu_244[29]_i_2 
       (.I0(\savefirst_reg_3044[0]_i_6_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_5_n_0 ),
        .I5(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .O(projbuffer_7_V_166_fu_2085_p3[29]));
  LUT6 #(
    .INIT(64'h000000000000BA8A)) 
    \projbuffer_7_V_8_fu_244[29]_i_3 
       (.I0(writeindextmp_V_reg_573[2]),
        .I1(tmp_8_reg_3007_pp0_iter1_reg),
        .I2(instubdata_dataarray_data_V_ce0),
        .I3(\writeindextmp_V_reg_573[2]_i_3_n_0 ),
        .I4(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I5(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .O(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_8_fu_244[2]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I4(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[11]),
        .O(projbuffer_7_V_166_fu_2085_p3[2]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_8_fu_244[3]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_22_fu_240[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I4(\projbuffer_7_V_8_fu_244[29]_i_3_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[12]),
        .O(projbuffer_7_V_166_fu_2085_p3[3]));
  FDRE \projbuffer_7_V_8_fu_244_reg[0] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(projbuffer_7_V_166_fu_2085_p3[0]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[10] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[5]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[11] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[6]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[12] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[7]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[13] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[8]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[18] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[13]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[19] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[14]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[1] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(projbuffer_7_V_166_fu_2085_p3[1]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[20] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[15]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[21] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[16]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[22] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[17]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[23] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[18]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[24] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[19]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[26] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(projbuffer_7_V_166_fu_2085_p3[26]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[27] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(projbuffer_7_V_166_fu_2085_p3[27]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[28] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(projbuffer_7_V_166_fu_2085_p3[28]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[29] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(projbuffer_7_V_166_fu_2085_p3[29]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[2] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(projbuffer_7_V_166_fu_2085_p3[2]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[3] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(projbuffer_7_V_166_fu_2085_p3[3]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[4] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[0]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[6] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[1]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[7] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[2]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[8] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[3]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_8_fu_244_reg[9] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_8_fu_244),
        .D(inprojdata_dataarray_data_V_q0[4]),
        .Q(\projbuffer_7_V_8_fu_244_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \projbuffer_7_V_fu_256[0]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .O(projbuffer_7_V_6_fu_2061_p3[0]));
  LUT6 #(
    .INIT(64'hBAFFBFFF45004000)) 
    \projbuffer_7_V_fu_256[1]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(inprojdata_dataarray_data_V_q0[9]),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[10]),
        .O(projbuffer_7_V_6_fu_2061_p3[1]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_fu_256[26]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_4_n_0 ),
        .O(projbuffer_7_V_6_fu_2061_p3[26]));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_fu_256[27]_i_1 
       (.I0(\savefirst_reg_3044[0]_i_5_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_2_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .O(projbuffer_7_V_6_fu_2061_p3[27]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_fu_256[28]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[28]_i_2_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I5(\savefirst_reg_3044[0]_i_3_n_0 ),
        .O(projbuffer_7_V_6_fu_2061_p3[28]));
  LUT6 #(
    .INIT(64'h0000000000A20020)) 
    \projbuffer_7_V_fu_256[29]_i_1 
       (.I0(\inprojdata_dataarray_data_V_address0[3]_INST_0_i_1_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_fu_256[29]_i_3_n_0 ),
        .I4(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I5(\inprojdata_dataarray_data_V_address0[6]_INST_0_i_2_n_0 ),
        .O(projbuffer_7_V_fu_256));
  LUT6 #(
    .INIT(64'h7577454475554555)) 
    \projbuffer_7_V_fu_256[29]_i_2 
       (.I0(\savefirst_reg_3044[0]_i_6_n_0 ),
        .I1(\savelast_reg_3050[0]_i_3_n_0 ),
        .I2(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_5_n_0 ),
        .I5(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .O(projbuffer_7_V_6_fu_2061_p3[29]));
  LUT2 #(
    .INIT(4'h7)) 
    \projbuffer_7_V_fu_256[29]_i_3 
       (.I0(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .I1(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .O(\projbuffer_7_V_fu_256[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_fu_256[2]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[11]),
        .O(projbuffer_7_V_6_fu_2061_p3[2]));
  LUT6 #(
    .INIT(64'hFFBAFFBF45004000)) 
    \projbuffer_7_V_fu_256[3]_i_1 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .I1(\projbuffer_7_V_45_fu_252[29]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_4_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[12]),
        .O(projbuffer_7_V_6_fu_2061_p3[3]));
  FDRE \projbuffer_7_V_fu_256_reg[0] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(projbuffer_7_V_6_fu_2061_p3[0]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[10] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[5]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[11] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[6]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[12] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[7]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[13] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[8]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[18] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[13]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[19] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[14]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[1] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(projbuffer_7_V_6_fu_2061_p3[1]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[20] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[15]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[21] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[16]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[22] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[17]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[23] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[18]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[24] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[19]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[26] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(projbuffer_7_V_6_fu_2061_p3[26]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[27] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(projbuffer_7_V_6_fu_2061_p3[27]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[28] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(projbuffer_7_V_6_fu_2061_p3[28]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[29] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(projbuffer_7_V_6_fu_2061_p3[29]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[2] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(projbuffer_7_V_6_fu_2061_p3[2]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[3] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(projbuffer_7_V_6_fu_2061_p3[3]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[4] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[0]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[6] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[1]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[7] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[2]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[8] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[3]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \projbuffer_7_V_fu_256_reg[9] 
       (.C(ap_clk),
        .CE(projbuffer_7_V_fu_256),
        .D(inprojdata_dataarray_data_V_q0[4]),
        .Q(\projbuffer_7_V_fu_256_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projfinezadj_V_2_reg_3093[0]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[10] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[10] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[10] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[10] ),
        .O(\projfinezadj_V_2_reg_3093[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projfinezadj_V_2_reg_3093[0]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[10] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[10] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[10] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[10] ),
        .O(\projfinezadj_V_2_reg_3093[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projfinezadj_V_2_reg_3093[1]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[11] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[11] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[11] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[11] ),
        .O(\projfinezadj_V_2_reg_3093[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projfinezadj_V_2_reg_3093[1]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[11] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[11] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[11] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[11] ),
        .O(\projfinezadj_V_2_reg_3093[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projfinezadj_V_2_reg_3093[2]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[12] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[12] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[12] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[12] ),
        .O(\projfinezadj_V_2_reg_3093[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projfinezadj_V_2_reg_3093[2]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[12] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[12] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[12] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[12] ),
        .O(\projfinezadj_V_2_reg_3093[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \projfinezadj_V_2_reg_3093[3]_i_1 
       (.I0(\projfinezadj_V_2_reg_3093_reg[4]_i_3_n_0 ),
        .I1(\projfinezadj_V_2_reg_3093_reg[4]_i_2_n_0 ),
        .O(projfinezadj_V_2_fu_2364_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \projfinezadj_V_2_reg_3093[4]_i_1 
       (.I0(\projfinezadj_V_2_reg_3093_reg[4]_i_2_n_0 ),
        .I1(\projfinezadj_V_2_reg_3093_reg[4]_i_3_n_0 ),
        .O(projfinezadj_V_2_fu_2364_p3[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projfinezadj_V_2_reg_3093[4]_i_4 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[0] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[0] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[0] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[0] ),
        .O(\projfinezadj_V_2_reg_3093[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projfinezadj_V_2_reg_3093[4]_i_5 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[0] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[0] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[0] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[0] ),
        .O(\projfinezadj_V_2_reg_3093[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projfinezadj_V_2_reg_3093[4]_i_6 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[13] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[13] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[13] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[13] ),
        .O(\projfinezadj_V_2_reg_3093[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projfinezadj_V_2_reg_3093[4]_i_7 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[13] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[13] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[13] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[13] ),
        .O(\projfinezadj_V_2_reg_3093[4]_i_7_n_0 ));
  FDRE \projfinezadj_V_2_reg_3093_reg[0] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[10]),
        .Q(projfinezadj_V_2_reg_3093[0]),
        .R(1'b0));
  MUXF7 \projfinezadj_V_2_reg_3093_reg[0]_i_1 
       (.I0(\projfinezadj_V_2_reg_3093[0]_i_2_n_0 ),
        .I1(\projfinezadj_V_2_reg_3093[0]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[10]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projfinezadj_V_2_reg_3093_reg[1] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[11]),
        .Q(projfinezadj_V_2_reg_3093[1]),
        .R(1'b0));
  MUXF7 \projfinezadj_V_2_reg_3093_reg[1]_i_1 
       (.I0(\projfinezadj_V_2_reg_3093[1]_i_2_n_0 ),
        .I1(\projfinezadj_V_2_reg_3093[1]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[11]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projfinezadj_V_2_reg_3093_reg[2] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[12]),
        .Q(projfinezadj_V_2_reg_3093[2]),
        .R(1'b0));
  MUXF7 \projfinezadj_V_2_reg_3093_reg[2]_i_1 
       (.I0(\projfinezadj_V_2_reg_3093[2]_i_2_n_0 ),
        .I1(\projfinezadj_V_2_reg_3093[2]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[12]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projfinezadj_V_2_reg_3093_reg[3] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(projfinezadj_V_2_fu_2364_p3[3]),
        .Q(projfinezadj_V_2_reg_3093[3]),
        .R(1'b0));
  FDRE \projfinezadj_V_2_reg_3093_reg[4] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(projfinezadj_V_2_fu_2364_p3[4]),
        .Q(projfinezadj_V_2_reg_3093[4]),
        .R(1'b0));
  MUXF7 \projfinezadj_V_2_reg_3093_reg[4]_i_2 
       (.I0(\projfinezadj_V_2_reg_3093[4]_i_4_n_0 ),
        .I1(\projfinezadj_V_2_reg_3093[4]_i_5_n_0 ),
        .O(\projfinezadj_V_2_reg_3093_reg[4]_i_2_n_0 ),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  MUXF7 \projfinezadj_V_2_reg_3093_reg[4]_i_3 
       (.I0(\projfinezadj_V_2_reg_3093[4]_i_6_n_0 ),
        .I1(\projfinezadj_V_2_reg_3093[4]_i_7_n_0 ),
        .O(\projfinezadj_V_2_reg_3093_reg[4]_i_3_n_0 ),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projfinezadj_V_3_fu_280_reg[0] 
       (.C(ap_clk),
        .CE(isPSseed_fu_2720),
        .D(projfinezadj_V_2_reg_3093[0]),
        .Q(projfinezadj_V_3_fu_280[0]),
        .R(1'b0));
  FDRE \projfinezadj_V_3_fu_280_reg[1] 
       (.C(ap_clk),
        .CE(isPSseed_fu_2720),
        .D(projfinezadj_V_2_reg_3093[1]),
        .Q(projfinezadj_V_3_fu_280[1]),
        .R(1'b0));
  FDRE \projfinezadj_V_3_fu_280_reg[2] 
       (.C(ap_clk),
        .CE(isPSseed_fu_2720),
        .D(projfinezadj_V_2_reg_3093[2]),
        .Q(projfinezadj_V_3_fu_280[2]),
        .R(1'b0));
  FDRE \projfinezadj_V_3_fu_280_reg[3] 
       (.C(ap_clk),
        .CE(isPSseed_fu_2720),
        .D(projfinezadj_V_2_reg_3093[3]),
        .Q(projfinezadj_V_3_fu_280[3]),
        .R(1'b0));
  FDRE \projfinezadj_V_3_fu_280_reg[4] 
       (.C(ap_clk),
        .CE(isPSseed_fu_2720),
        .D(projfinezadj_V_2_reg_3093[4]),
        .Q(projfinezadj_V_3_fu_280[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[0]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[18] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[18] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[18] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[18] ),
        .O(\projindex_V_reg_3078[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[0]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[18] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[18] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[18] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[18] ),
        .O(\projindex_V_reg_3078[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[1]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[19] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[19] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[19] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[19] ),
        .O(\projindex_V_reg_3078[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[1]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[19] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[19] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[19] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[19] ),
        .O(\projindex_V_reg_3078[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[2]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[20] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[20] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[20] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[20] ),
        .O(\projindex_V_reg_3078[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[2]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[20] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[20] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[20] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[20] ),
        .O(\projindex_V_reg_3078[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[3]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[21] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[21] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[21] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[21] ),
        .O(\projindex_V_reg_3078[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[3]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[21] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[21] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[21] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[21] ),
        .O(\projindex_V_reg_3078[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[4]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[22] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[22] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[22] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[22] ),
        .O(\projindex_V_reg_3078[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[4]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[22] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[22] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[22] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[22] ),
        .O(\projindex_V_reg_3078[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[5]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[23] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[23] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[23] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[23] ),
        .O(\projindex_V_reg_3078[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[5]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[23] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[23] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[23] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[23] ),
        .O(\projindex_V_reg_3078[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[6]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[24] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[24] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[24] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[24] ),
        .O(\projindex_V_reg_3078[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projindex_V_reg_3078[6]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[24] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[24] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[24] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[24] ),
        .O(\projindex_V_reg_3078[6]_i_3_n_0 ));
  FDRE \projindex_V_reg_3078_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(projindex_V_reg_3078[0]),
        .Q(projindex_V_reg_3078_pp0_iter2_reg[0]),
        .R(1'b0));
  FDRE \projindex_V_reg_3078_pp0_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(projindex_V_reg_3078[1]),
        .Q(projindex_V_reg_3078_pp0_iter2_reg[1]),
        .R(1'b0));
  FDRE \projindex_V_reg_3078_pp0_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(projindex_V_reg_3078[2]),
        .Q(projindex_V_reg_3078_pp0_iter2_reg[2]),
        .R(1'b0));
  FDRE \projindex_V_reg_3078_pp0_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(projindex_V_reg_3078[3]),
        .Q(projindex_V_reg_3078_pp0_iter2_reg[3]),
        .R(1'b0));
  FDRE \projindex_V_reg_3078_pp0_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(projindex_V_reg_3078[4]),
        .Q(projindex_V_reg_3078_pp0_iter2_reg[4]),
        .R(1'b0));
  FDRE \projindex_V_reg_3078_pp0_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(projindex_V_reg_3078[5]),
        .Q(projindex_V_reg_3078_pp0_iter2_reg[5]),
        .R(1'b0));
  FDRE \projindex_V_reg_3078_pp0_iter2_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(projindex_V_reg_3078[6]),
        .Q(projindex_V_reg_3078_pp0_iter2_reg[6]),
        .R(1'b0));
  FDRE \projindex_V_reg_3078_reg[0] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[18]),
        .Q(projindex_V_reg_3078[0]),
        .R(1'b0));
  MUXF7 \projindex_V_reg_3078_reg[0]_i_1 
       (.I0(\projindex_V_reg_3078[0]_i_2_n_0 ),
        .I1(\projindex_V_reg_3078[0]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[18]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projindex_V_reg_3078_reg[1] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[19]),
        .Q(projindex_V_reg_3078[1]),
        .R(1'b0));
  MUXF7 \projindex_V_reg_3078_reg[1]_i_1 
       (.I0(\projindex_V_reg_3078[1]_i_2_n_0 ),
        .I1(\projindex_V_reg_3078[1]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[19]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projindex_V_reg_3078_reg[2] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[20]),
        .Q(projindex_V_reg_3078[2]),
        .R(1'b0));
  MUXF7 \projindex_V_reg_3078_reg[2]_i_1 
       (.I0(\projindex_V_reg_3078[2]_i_2_n_0 ),
        .I1(\projindex_V_reg_3078[2]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[20]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projindex_V_reg_3078_reg[3] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[21]),
        .Q(projindex_V_reg_3078[3]),
        .R(1'b0));
  MUXF7 \projindex_V_reg_3078_reg[3]_i_1 
       (.I0(\projindex_V_reg_3078[3]_i_2_n_0 ),
        .I1(\projindex_V_reg_3078[3]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[21]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projindex_V_reg_3078_reg[4] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[22]),
        .Q(projindex_V_reg_3078[4]),
        .R(1'b0));
  MUXF7 \projindex_V_reg_3078_reg[4]_i_1 
       (.I0(\projindex_V_reg_3078[4]_i_2_n_0 ),
        .I1(\projindex_V_reg_3078[4]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[22]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projindex_V_reg_3078_reg[5] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[23]),
        .Q(projindex_V_reg_3078[5]),
        .R(1'b0));
  MUXF7 \projindex_V_reg_3078_reg[5]_i_1 
       (.I0(\projindex_V_reg_3078[5]_i_2_n_0 ),
        .I1(\projindex_V_reg_3078[5]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[23]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projindex_V_reg_3078_reg[6] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[24]),
        .Q(projindex_V_reg_3078[6]),
        .R(1'b0));
  MUXF7 \projindex_V_reg_3078_reg[6]_i_1 
       (.I0(\projindex_V_reg_3078[6]_i_2_n_0 ),
        .I1(\projindex_V_reg_3078[6]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[24]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projrinv_V_reg_3083[1]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[6] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[6] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[6] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[6] ),
        .O(\projrinv_V_reg_3083[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projrinv_V_reg_3083[1]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[6] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[6] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[6] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[6] ),
        .O(\projrinv_V_reg_3083[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projrinv_V_reg_3083[2]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[7] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[7] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[7] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[7] ),
        .O(\projrinv_V_reg_3083[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projrinv_V_reg_3083[2]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[7] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[7] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[7] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[7] ),
        .O(\projrinv_V_reg_3083[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projrinv_V_reg_3083[3]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[8] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[8] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[8] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[8] ),
        .O(\projrinv_V_reg_3083[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projrinv_V_reg_3083[3]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[8] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[8] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[8] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[8] ),
        .O(\projrinv_V_reg_3083[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projrinv_V_reg_3083[4]_i_2 
       (.I0(\projbuffer_7_V_22_fu_240_reg_n_0_[9] ),
        .I1(\projbuffer_7_V_29_fu_236_reg_n_0_[9] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_35_fu_232_reg_n_0_[9] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_40_fu_228_reg_n_0_[9] ),
        .O(\projrinv_V_reg_3083[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \projrinv_V_reg_3083[4]_i_3 
       (.I0(\projbuffer_7_V_fu_256_reg_n_0_[9] ),
        .I1(\projbuffer_7_V_45_fu_252_reg_n_0_[9] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I3(\projbuffer_7_V_44_fu_248_reg_n_0_[9] ),
        .I4(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I5(\projbuffer_7_V_8_fu_244_reg_n_0_[9] ),
        .O(\projrinv_V_reg_3083[4]_i_3_n_0 ));
  FDRE \projrinv_V_reg_3083_reg[1] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[6]),
        .Q(projrinv_V_reg_3083[1]),
        .R(1'b0));
  MUXF7 \projrinv_V_reg_3083_reg[1]_i_1 
       (.I0(\projrinv_V_reg_3083[1]_i_2_n_0 ),
        .I1(\projrinv_V_reg_3083[1]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[6]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projrinv_V_reg_3083_reg[2] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[7]),
        .Q(projrinv_V_reg_3083[2]),
        .R(1'b0));
  MUXF7 \projrinv_V_reg_3083_reg[2]_i_1 
       (.I0(\projrinv_V_reg_3083[2]_i_2_n_0 ),
        .I1(\projrinv_V_reg_3083[2]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[7]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projrinv_V_reg_3083_reg[3] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[8]),
        .Q(projrinv_V_reg_3083[3]),
        .R(1'b0));
  MUXF7 \projrinv_V_reg_3083_reg[3]_i_1 
       (.I0(\projrinv_V_reg_3083[3]_i_2_n_0 ),
        .I1(\projrinv_V_reg_3083[3]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[8]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  FDRE \projrinv_V_reg_3083_reg[4] 
       (.C(ap_clk),
        .CE(isPSseed_1_reg_30880),
        .D(qdata_V_fu_764_p10[9]),
        .Q(projrinv_V_reg_3083[4]),
        .R(1'b0));
  MUXF7 \projrinv_V_reg_3083_reg[4]_i_1 
       (.I0(\projrinv_V_reg_3083[4]_i_2_n_0 ),
        .I1(\projrinv_V_reg_3083[4]_i_3_n_0 ),
        .O(qdata_V_fu_764_p10[9]),
        .S(\readindex_V_2_fu_284_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \readindex_V_2_fu_284[0]_i_1 
       (.I0(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .O(grp_fu_626_p2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \readindex_V_2_fu_284[1]_i_1 
       (.I0(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .I1(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .O(grp_fu_626_p2[1]));
  LUT5 #(
    .INIT(32'h88808888)) 
    \readindex_V_2_fu_284[2]_i_1 
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\istub_V_fu_300[3]_i_6_n_0 ),
        .I3(\istub_V_fu_300[3]_i_4_n_0 ),
        .I4(\istub_V_fu_300[3]_i_5_n_0 ),
        .O(readindex_V_2_fu_284));
  LUT5 #(
    .INIT(32'h00000008)) 
    \readindex_V_2_fu_284[2]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\buffernotempty_reg_3034[0]_i_1_n_0 ),
        .I3(\istub_V_fu_300[3]_i_4_n_0 ),
        .I4(\istub_V_fu_300[3]_i_6_n_0 ),
        .O(readindex_V_2_fu_2840));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \readindex_V_2_fu_284[2]_i_3 
       (.I0(\readindex_V_2_fu_284_reg_n_0_[2] ),
        .I1(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .I2(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .O(\readindex_V_2_fu_284[2]_i_3_n_0 ));
  FDRE \readindex_V_2_fu_284_reg[0] 
       (.C(ap_clk),
        .CE(readindex_V_2_fu_2840),
        .D(grp_fu_626_p2[0]),
        .Q(\readindex_V_2_fu_284_reg_n_0_[0] ),
        .R(readindex_V_2_fu_284));
  FDRE \readindex_V_2_fu_284_reg[1] 
       (.C(ap_clk),
        .CE(readindex_V_2_fu_2840),
        .D(grp_fu_626_p2[1]),
        .Q(\readindex_V_2_fu_284_reg_n_0_[1] ),
        .R(readindex_V_2_fu_284));
  FDRE \readindex_V_2_fu_284_reg[2] 
       (.C(ap_clk),
        .CE(readindex_V_2_fu_2840),
        .D(\readindex_V_2_fu_284[2]_i_3_n_0 ),
        .Q(\readindex_V_2_fu_284_reg_n_0_[2] ),
        .R(readindex_V_2_fu_284));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \savefirst_reg_3044[0]_i_1 
       (.I0(\savefirst_reg_3044[0]_i_2_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_3_n_0 ),
        .I2(\savefirst_reg_3044[0]_i_4_n_0 ),
        .I3(\savefirst_reg_3044[0]_i_5_n_0 ),
        .I4(\savefirst_reg_3044[0]_i_6_n_0 ),
        .O(p_5_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_2 
       (.I0(\savefirst_reg_3044_reg[0]_i_7_n_0 ),
        .I1(\savefirst_reg_3044_reg[0]_i_8_n_0 ),
        .I2(\instubdata_dataarray_data_V_address0[8] ),
        .I3(\savefirst_reg_3044_reg[0]_i_9_n_0 ),
        .I4(\instubdata_dataarray_data_V_address0[7] ),
        .I5(\savefirst_reg_3044_reg[0]_i_10_n_0 ),
        .O(\savefirst_reg_3044[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_27 
       (.I0(instubdata_nentries_3_V_3[4]),
        .I1(instubdata_nentries_3_V_2[4]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_3_V_1[4]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_3_V_0[4]),
        .O(\savefirst_reg_3044[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_28 
       (.I0(instubdata_nentries_3_V_7[4]),
        .I1(instubdata_nentries_3_V_6[4]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_3_V_5[4]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_3_V_4[4]),
        .O(\savefirst_reg_3044[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_29 
       (.I0(instubdata_nentries_2_V_3[4]),
        .I1(instubdata_nentries_2_V_2[4]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_2_V_1[4]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_2_V_0[4]),
        .O(\savefirst_reg_3044[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_3 
       (.I0(\savefirst_reg_3044_reg[0]_i_11_n_0 ),
        .I1(\savefirst_reg_3044_reg[0]_i_12_n_0 ),
        .I2(\instubdata_dataarray_data_V_address0[8] ),
        .I3(\savefirst_reg_3044_reg[0]_i_13_n_0 ),
        .I4(\instubdata_dataarray_data_V_address0[7] ),
        .I5(\savefirst_reg_3044_reg[0]_i_14_n_0 ),
        .O(\savefirst_reg_3044[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_30 
       (.I0(instubdata_nentries_2_V_7[4]),
        .I1(instubdata_nentries_2_V_6[4]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_2_V_5[4]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_2_V_4[4]),
        .O(\savefirst_reg_3044[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_31 
       (.I0(instubdata_nentries_1_V_3[4]),
        .I1(instubdata_nentries_1_V_2[4]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_1_V_1[4]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_1_V_0[4]),
        .O(\savefirst_reg_3044[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_32 
       (.I0(instubdata_nentries_1_V_7[4]),
        .I1(instubdata_nentries_1_V_6[4]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_1_V_5[4]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_1_V_4[4]),
        .O(\savefirst_reg_3044[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_33 
       (.I0(instubdata_nentries_0_V_3[4]),
        .I1(instubdata_nentries_0_V_2[4]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_0_V_1[4]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_0_V_0[4]),
        .O(\savefirst_reg_3044[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_34 
       (.I0(instubdata_nentries_0_V_7[4]),
        .I1(instubdata_nentries_0_V_6[4]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_0_V_5[4]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_0_V_4[4]),
        .O(\savefirst_reg_3044[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_35 
       (.I0(instubdata_nentries_3_V_3[2]),
        .I1(instubdata_nentries_3_V_2[2]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_3_V_1[2]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_3_V_0[2]),
        .O(\savefirst_reg_3044[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_36 
       (.I0(instubdata_nentries_3_V_7[2]),
        .I1(instubdata_nentries_3_V_6[2]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_3_V_5[2]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_3_V_4[2]),
        .O(\savefirst_reg_3044[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_37 
       (.I0(instubdata_nentries_2_V_3[2]),
        .I1(instubdata_nentries_2_V_2[2]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_2_V_1[2]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_2_V_0[2]),
        .O(\savefirst_reg_3044[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_38 
       (.I0(instubdata_nentries_2_V_7[2]),
        .I1(instubdata_nentries_2_V_6[2]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_2_V_5[2]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_2_V_4[2]),
        .O(\savefirst_reg_3044[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_39 
       (.I0(instubdata_nentries_1_V_3[2]),
        .I1(instubdata_nentries_1_V_2[2]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_1_V_1[2]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_1_V_0[2]),
        .O(\savefirst_reg_3044[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_4 
       (.I0(\savefirst_reg_3044_reg[0]_i_15_n_0 ),
        .I1(\savefirst_reg_3044_reg[0]_i_16_n_0 ),
        .I2(\instubdata_dataarray_data_V_address0[8] ),
        .I3(\savefirst_reg_3044_reg[0]_i_17_n_0 ),
        .I4(\instubdata_dataarray_data_V_address0[7] ),
        .I5(\savefirst_reg_3044_reg[0]_i_18_n_0 ),
        .O(\savefirst_reg_3044[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_40 
       (.I0(instubdata_nentries_1_V_7[2]),
        .I1(instubdata_nentries_1_V_6[2]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_1_V_5[2]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_1_V_4[2]),
        .O(\savefirst_reg_3044[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_41 
       (.I0(instubdata_nentries_0_V_3[2]),
        .I1(instubdata_nentries_0_V_2[2]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_0_V_1[2]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_0_V_0[2]),
        .O(\savefirst_reg_3044[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_42 
       (.I0(instubdata_nentries_0_V_7[2]),
        .I1(instubdata_nentries_0_V_6[2]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_0_V_5[2]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_0_V_4[2]),
        .O(\savefirst_reg_3044[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_43 
       (.I0(instubdata_nentries_3_V_3[0]),
        .I1(instubdata_nentries_3_V_2[0]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_3_V_1[0]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_3_V_0[0]),
        .O(\savefirst_reg_3044[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_44 
       (.I0(instubdata_nentries_3_V_7[0]),
        .I1(instubdata_nentries_3_V_6[0]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_3_V_5[0]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_3_V_4[0]),
        .O(\savefirst_reg_3044[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_45 
       (.I0(instubdata_nentries_2_V_3[0]),
        .I1(instubdata_nentries_2_V_2[0]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_2_V_1[0]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_2_V_0[0]),
        .O(\savefirst_reg_3044[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_46 
       (.I0(instubdata_nentries_2_V_7[0]),
        .I1(instubdata_nentries_2_V_6[0]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_2_V_5[0]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_2_V_4[0]),
        .O(\savefirst_reg_3044[0]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_47 
       (.I0(instubdata_nentries_1_V_3[0]),
        .I1(instubdata_nentries_1_V_2[0]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_1_V_1[0]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_1_V_0[0]),
        .O(\savefirst_reg_3044[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_48 
       (.I0(instubdata_nentries_1_V_7[0]),
        .I1(instubdata_nentries_1_V_6[0]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_1_V_5[0]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_1_V_4[0]),
        .O(\savefirst_reg_3044[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_49 
       (.I0(instubdata_nentries_0_V_3[0]),
        .I1(instubdata_nentries_0_V_2[0]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_0_V_1[0]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_0_V_0[0]),
        .O(\savefirst_reg_3044[0]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \savefirst_reg_3044[0]_i_5 
       (.I0(\savefirst_reg_3044_reg[0]_i_19_n_0 ),
        .I1(\savefirst_reg_3044_reg[0]_i_20_n_0 ),
        .I2(\savefirst_reg_3044_reg[0]_i_21_n_0 ),
        .I3(\instubdata_dataarray_data_V_address0[7] ),
        .I4(\savefirst_reg_3044_reg[0]_i_22_n_0 ),
        .I5(\instubdata_dataarray_data_V_address0[8] ),
        .O(\savefirst_reg_3044[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_50 
       (.I0(instubdata_nentries_0_V_7[0]),
        .I1(instubdata_nentries_0_V_6[0]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_0_V_5[0]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_0_V_4[0]),
        .O(\savefirst_reg_3044[0]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_51 
       (.I0(instubdata_nentries_3_V_3[1]),
        .I1(instubdata_nentries_3_V_2[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_3_V_1[1]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_3_V_0[1]),
        .O(\savefirst_reg_3044[0]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_52 
       (.I0(instubdata_nentries_3_V_7[1]),
        .I1(instubdata_nentries_3_V_6[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_3_V_5[1]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_3_V_4[1]),
        .O(\savefirst_reg_3044[0]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_53 
       (.I0(instubdata_nentries_2_V_3[1]),
        .I1(instubdata_nentries_2_V_2[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_2_V_1[1]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_2_V_0[1]),
        .O(\savefirst_reg_3044[0]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_54 
       (.I0(instubdata_nentries_2_V_7[1]),
        .I1(instubdata_nentries_2_V_6[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_2_V_5[1]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_2_V_4[1]),
        .O(\savefirst_reg_3044[0]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_55 
       (.I0(instubdata_nentries_1_V_3[1]),
        .I1(instubdata_nentries_1_V_2[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_1_V_1[1]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_1_V_0[1]),
        .O(\savefirst_reg_3044[0]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_56 
       (.I0(instubdata_nentries_1_V_7[1]),
        .I1(instubdata_nentries_1_V_6[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_1_V_5[1]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_1_V_4[1]),
        .O(\savefirst_reg_3044[0]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_57 
       (.I0(instubdata_nentries_0_V_3[1]),
        .I1(instubdata_nentries_0_V_2[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_0_V_1[1]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_0_V_0[1]),
        .O(\savefirst_reg_3044[0]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_58 
       (.I0(instubdata_nentries_0_V_7[1]),
        .I1(instubdata_nentries_0_V_6[1]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_0_V_5[1]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_0_V_4[1]),
        .O(\savefirst_reg_3044[0]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_59 
       (.I0(instubdata_nentries_3_V_3[3]),
        .I1(instubdata_nentries_3_V_2[3]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_3_V_1[3]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_3_V_0[3]),
        .O(\savefirst_reg_3044[0]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \savefirst_reg_3044[0]_i_6 
       (.I0(\savefirst_reg_3044_reg[0]_i_23_n_0 ),
        .I1(\savefirst_reg_3044_reg[0]_i_24_n_0 ),
        .I2(\savefirst_reg_3044_reg[0]_i_25_n_0 ),
        .I3(\instubdata_dataarray_data_V_address0[7] ),
        .I4(\savefirst_reg_3044_reg[0]_i_26_n_0 ),
        .I5(\instubdata_dataarray_data_V_address0[8] ),
        .O(\savefirst_reg_3044[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_60 
       (.I0(instubdata_nentries_3_V_7[3]),
        .I1(instubdata_nentries_3_V_6[3]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_3_V_5[3]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_3_V_4[3]),
        .O(\savefirst_reg_3044[0]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_61 
       (.I0(instubdata_nentries_2_V_3[3]),
        .I1(instubdata_nentries_2_V_2[3]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_2_V_1[3]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_2_V_0[3]),
        .O(\savefirst_reg_3044[0]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_62 
       (.I0(instubdata_nentries_2_V_7[3]),
        .I1(instubdata_nentries_2_V_6[3]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_2_V_5[3]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_2_V_4[3]),
        .O(\savefirst_reg_3044[0]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_63 
       (.I0(instubdata_nentries_1_V_3[3]),
        .I1(instubdata_nentries_1_V_2[3]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_1_V_1[3]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_1_V_0[3]),
        .O(\savefirst_reg_3044[0]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_64 
       (.I0(instubdata_nentries_1_V_7[3]),
        .I1(instubdata_nentries_1_V_6[3]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_1_V_5[3]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_1_V_4[3]),
        .O(\savefirst_reg_3044[0]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_65 
       (.I0(instubdata_nentries_0_V_3[3]),
        .I1(instubdata_nentries_0_V_2[3]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_0_V_1[3]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_0_V_0[3]),
        .O(\savefirst_reg_3044[0]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savefirst_reg_3044[0]_i_66 
       (.I0(instubdata_nentries_0_V_7[3]),
        .I1(instubdata_nentries_0_V_6[3]),
        .I2(inprojdata_dataarray_data_V_q0[11]),
        .I3(instubdata_nentries_0_V_5[3]),
        .I4(inprojdata_dataarray_data_V_q0[10]),
        .I5(instubdata_nentries_0_V_4[3]),
        .O(\savefirst_reg_3044[0]_i_66_n_0 ));
  FDRE \savefirst_reg_3044_reg[0] 
       (.C(ap_clk),
        .CE(brmerge_reg_30380),
        .D(p_5_in),
        .Q(savefirst_reg_3044),
        .R(1'b0));
  MUXF7 \savefirst_reg_3044_reg[0]_i_10 
       (.I0(\savefirst_reg_3044[0]_i_33_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_34_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_10_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_11 
       (.I0(\savefirst_reg_3044[0]_i_35_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_36_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_11_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_12 
       (.I0(\savefirst_reg_3044[0]_i_37_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_38_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_12_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_13 
       (.I0(\savefirst_reg_3044[0]_i_39_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_40_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_13_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_14 
       (.I0(\savefirst_reg_3044[0]_i_41_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_42_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_14_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_15 
       (.I0(\savefirst_reg_3044[0]_i_43_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_44_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_15_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_16 
       (.I0(\savefirst_reg_3044[0]_i_45_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_46_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_16_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_17 
       (.I0(\savefirst_reg_3044[0]_i_47_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_48_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_17_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_18 
       (.I0(\savefirst_reg_3044[0]_i_49_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_50_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_18_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_19 
       (.I0(\savefirst_reg_3044[0]_i_51_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_52_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_19_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_20 
       (.I0(\savefirst_reg_3044[0]_i_53_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_54_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_20_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_21 
       (.I0(\savefirst_reg_3044[0]_i_55_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_56_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_21_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_22 
       (.I0(\savefirst_reg_3044[0]_i_57_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_58_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_22_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_23 
       (.I0(\savefirst_reg_3044[0]_i_59_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_60_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_23_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_24 
       (.I0(\savefirst_reg_3044[0]_i_61_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_62_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_24_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_25 
       (.I0(\savefirst_reg_3044[0]_i_63_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_64_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_25_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_26 
       (.I0(\savefirst_reg_3044[0]_i_65_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_66_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_26_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_7 
       (.I0(\savefirst_reg_3044[0]_i_27_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_28_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_7_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_8 
       (.I0(\savefirst_reg_3044[0]_i_29_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_30_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_8_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  MUXF7 \savefirst_reg_3044_reg[0]_i_9 
       (.I0(\savefirst_reg_3044[0]_i_31_n_0 ),
        .I1(\savefirst_reg_3044[0]_i_32_n_0 ),
        .O(\savefirst_reg_3044_reg[0]_i_9_n_0 ),
        .S(inprojdata_dataarray_data_V_q0[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \savelast_reg_3050[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\tmp_8_reg_3007_reg_n_0_[0] ),
        .O(brmerge_reg_30380));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \savelast_reg_3050[0]_i_10 
       (.I0(\savelast_reg_3050[0]_i_23_n_0 ),
        .I1(\savelast_reg_3050[0]_i_24_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[29]_i_16_n_0 ),
        .I3(\savelast_reg_3050[0]_i_25_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_18_n_0 ),
        .I5(\savelast_reg_3050[0]_i_26_n_0 ),
        .O(\savelast_reg_3050[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_11 
       (.I0(instubdata_nentries_0_V_3[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_2[4]),
        .O(\savelast_reg_3050[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_12 
       (.I0(instubdata_nentries_0_V_1[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_0[4]),
        .O(\savelast_reg_3050[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_13 
       (.I0(instubdata_nentries_0_V_5[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_4[4]),
        .O(\savelast_reg_3050[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_14 
       (.I0(instubdata_nentries_0_V_7[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_0_V_6[4]),
        .O(\savelast_reg_3050[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_15 
       (.I0(instubdata_nentries_1_V_7[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_6[4]),
        .O(\savelast_reg_3050[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_16 
       (.I0(instubdata_nentries_1_V_5[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_4[4]),
        .O(\savelast_reg_3050[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_17 
       (.I0(instubdata_nentries_1_V_1[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_0[4]),
        .O(\savelast_reg_3050[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_18 
       (.I0(instubdata_nentries_1_V_3[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_1_V_2[4]),
        .O(\savelast_reg_3050[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_19 
       (.I0(instubdata_nentries_2_V_7[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_6[4]),
        .O(\savelast_reg_3050[0]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \savelast_reg_3050[0]_i_2 
       (.I0(\savelast_reg_3050[0]_i_3_n_0 ),
        .O(p_6_in));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_20 
       (.I0(instubdata_nentries_2_V_5[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_4[4]),
        .O(\savelast_reg_3050[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_21 
       (.I0(instubdata_nentries_2_V_3[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_2[4]),
        .O(\savelast_reg_3050[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_22 
       (.I0(instubdata_nentries_2_V_1[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_2_V_0[4]),
        .O(\savelast_reg_3050[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_23 
       (.I0(instubdata_nentries_3_V_3[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_2[4]),
        .O(\savelast_reg_3050[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_24 
       (.I0(instubdata_nentries_3_V_1[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_0[4]),
        .O(\savelast_reg_3050[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_25 
       (.I0(instubdata_nentries_3_V_5[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_4[4]),
        .O(\savelast_reg_3050[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \savelast_reg_3050[0]_i_26 
       (.I0(instubdata_nentries_3_V_7[4]),
        .I1(inprojdata_dataarray_data_V_q0[10]),
        .I2(inprojdata_dataarray_data_V_q0[9]),
        .I3(instubdata_nentries_3_V_6[4]),
        .O(\savelast_reg_3050[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \savelast_reg_3050[0]_i_3 
       (.I0(\projbuffer_7_V_40_fu_228[28]_i_2_n_0 ),
        .I1(\savelast_reg_3050_reg[0]_i_4_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228_reg[26]_i_2_n_0 ),
        .I3(\projbuffer_7_V_40_fu_228[27]_i_2_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[29]_i_5_n_0 ),
        .I5(inprojdata_dataarray_data_V_q0[9]),
        .O(\savelast_reg_3050[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \savelast_reg_3050[0]_i_7 
       (.I0(\savelast_reg_3050[0]_i_11_n_0 ),
        .I1(\savelast_reg_3050[0]_i_12_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[29]_i_16_n_0 ),
        .I3(\savelast_reg_3050[0]_i_13_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_18_n_0 ),
        .I5(\savelast_reg_3050[0]_i_14_n_0 ),
        .O(\savelast_reg_3050[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \savelast_reg_3050[0]_i_8 
       (.I0(\savelast_reg_3050[0]_i_15_n_0 ),
        .I1(\savelast_reg_3050[0]_i_16_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\savelast_reg_3050[0]_i_17_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[27]_i_18_n_0 ),
        .I5(\savelast_reg_3050[0]_i_18_n_0 ),
        .O(\savelast_reg_3050[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \savelast_reg_3050[0]_i_9 
       (.I0(\savelast_reg_3050[0]_i_19_n_0 ),
        .I1(\savelast_reg_3050[0]_i_20_n_0 ),
        .I2(\projbuffer_7_V_40_fu_228[3]_i_2_n_0 ),
        .I3(\savelast_reg_3050[0]_i_21_n_0 ),
        .I4(\projbuffer_7_V_40_fu_228[2]_i_2_n_0 ),
        .I5(\savelast_reg_3050[0]_i_22_n_0 ),
        .O(\savelast_reg_3050[0]_i_9_n_0 ));
  FDRE \savelast_reg_3050_reg[0] 
       (.C(ap_clk),
        .CE(brmerge_reg_30380),
        .D(p_6_in),
        .Q(savelast_reg_3050),
        .R(1'b0));
  MUXF8 \savelast_reg_3050_reg[0]_i_4 
       (.I0(\savelast_reg_3050_reg[0]_i_5_n_0 ),
        .I1(\savelast_reg_3050_reg[0]_i_6_n_0 ),
        .O(\savelast_reg_3050_reg[0]_i_4_n_0 ),
        .S(\instubdata_dataarray_data_V_address0[8] ));
  MUXF7 \savelast_reg_3050_reg[0]_i_5 
       (.I0(\savelast_reg_3050[0]_i_7_n_0 ),
        .I1(\savelast_reg_3050[0]_i_8_n_0 ),
        .O(\savelast_reg_3050_reg[0]_i_5_n_0 ),
        .S(\instubdata_dataarray_data_V_address0[7] ));
  MUXF7 \savelast_reg_3050_reg[0]_i_6 
       (.I0(\savelast_reg_3050[0]_i_9_n_0 ),
        .I1(\savelast_reg_3050[0]_i_10_n_0 ),
        .O(\savelast_reg_3050_reg[0]_i_6_n_0 ),
        .S(\instubdata_dataarray_data_V_address0[7] ));
  LUT1 #(
    .INIT(2'h1)) 
    \stubindex_V_reg_3111[6]_i_1 
       (.I0(buffernotempty_reg_3034_pp0_iter2_reg),
        .O(\stubindex_V_reg_3111[6]_i_1_n_0 ));
  FDRE \stubindex_V_reg_3111_reg[0] 
       (.C(ap_clk),
        .CE(\stubindex_V_reg_3111[6]_i_1_n_0 ),
        .D(instubdata_dataarray_data_V_q0[7]),
        .Q(outcandmatch_dataarray_data_V_d0[0]),
        .R(1'b0));
  FDRE \stubindex_V_reg_3111_reg[1] 
       (.C(ap_clk),
        .CE(\stubindex_V_reg_3111[6]_i_1_n_0 ),
        .D(instubdata_dataarray_data_V_q0[8]),
        .Q(outcandmatch_dataarray_data_V_d0[1]),
        .R(1'b0));
  FDRE \stubindex_V_reg_3111_reg[2] 
       (.C(ap_clk),
        .CE(\stubindex_V_reg_3111[6]_i_1_n_0 ),
        .D(instubdata_dataarray_data_V_q0[9]),
        .Q(outcandmatch_dataarray_data_V_d0[2]),
        .R(1'b0));
  FDRE \stubindex_V_reg_3111_reg[3] 
       (.C(ap_clk),
        .CE(\stubindex_V_reg_3111[6]_i_1_n_0 ),
        .D(instubdata_dataarray_data_V_q0[10]),
        .Q(outcandmatch_dataarray_data_V_d0[3]),
        .R(1'b0));
  FDRE \stubindex_V_reg_3111_reg[4] 
       (.C(ap_clk),
        .CE(\stubindex_V_reg_3111[6]_i_1_n_0 ),
        .D(instubdata_dataarray_data_V_q0[11]),
        .Q(outcandmatch_dataarray_data_V_d0[4]),
        .R(1'b0));
  FDRE \stubindex_V_reg_3111_reg[5] 
       (.C(ap_clk),
        .CE(\stubindex_V_reg_3111[6]_i_1_n_0 ),
        .D(instubdata_dataarray_data_V_q0[12]),
        .Q(outcandmatch_dataarray_data_V_d0[5]),
        .R(1'b0));
  FDRE \stubindex_V_reg_3111_reg[6] 
       (.C(ap_clk),
        .CE(\stubindex_V_reg_3111[6]_i_1_n_0 ),
        .D(instubdata_dataarray_data_V_q0[13]),
        .Q(outcandmatch_dataarray_data_V_d0[6]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MatchEngine_1_0_sbkb table1_U
       (.CO(tmp_14_fu_2576_p2),
        .E(outcandmatch_nentrie_fu_264),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .SR(outcandmatch_nentrie_2_fu_260),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter4_reg(outcandmatch_dataarray_data_V_ce0),
        .\buffernotempty_reg_3034_pp0_iter3_reg_reg[0] (\buffernotempty_reg_3034_pp0_iter3_reg_reg_n_0_[0] ),
        .clear(table1_U_n_0),
        .grp_MatchEngine_1_0_s_fu_332_ap_start_reg(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .outcandmatch_dataarray_data_V_we0(outcandmatch_dataarray_data_V_we0),
        .\outcandmatch_nentrie_2_fu_260_reg[7] (table1_U_n_5),
        .p_0_out(p_0_out),
        .pass_2_reg_3116(pass_2_reg_3116),
        .sel(table1_U_n_2),
        .\tmp_4_reg_2995_reg[0] (\instubdata_dataarray_data_V_address0[7] ));
  CARRY8 tmp_14_fu_2576_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({tmp_14_fu_2576_p2_carry_n_0,tmp_14_fu_2576_p2_carry_n_1,tmp_14_fu_2576_p2_carry_n_2,tmp_14_fu_2576_p2_carry_n_3,NLW_tmp_14_fu_2576_p2_carry_CO_UNCONNECTED[3],tmp_14_fu_2576_p2_carry_n_5,tmp_14_fu_2576_p2_carry_n_6,tmp_14_fu_2576_p2_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,tmp_14_fu_2576_p2_carry_i_1_n_0,1'b0,1'b0,tmp_14_fu_2576_p2_carry_i_2_n_0}),
        .O(NLW_tmp_14_fu_2576_p2_carry_O_UNCONNECTED[7:0]),
        .S({tmp_14_fu_2576_p2_carry_i_3_n_0,tmp_14_fu_2576_p2_carry_i_4_n_0,tmp_14_fu_2576_p2_carry_i_5_n_0,tmp_14_fu_2576_p2_carry_i_6_n_0,tmp_14_fu_2576_p2_carry_i_7_n_0,tmp_14_fu_2576_p2_carry_i_8_n_0,tmp_14_fu_2576_p2_carry_i_9_n_0,tmp_14_fu_2576_p2_carry_i_10_n_0}));
  CARRY8 tmp_14_fu_2576_p2_carry__0
       (.CI(tmp_14_fu_2576_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_14_fu_2576_p2,tmp_14_fu_2576_p2_carry__0_n_1,tmp_14_fu_2576_p2_carry__0_n_2,tmp_14_fu_2576_p2_carry__0_n_3,NLW_tmp_14_fu_2576_p2_carry__0_CO_UNCONNECTED[3],tmp_14_fu_2576_p2_carry__0_n_5,tmp_14_fu_2576_p2_carry__0_n_6,tmp_14_fu_2576_p2_carry__0_n_7}),
        .DI({addr_index_assign_fu_268_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tmp_14_fu_2576_p2_carry__0_O_UNCONNECTED[7:0]),
        .S({tmp_14_fu_2576_p2_carry__0_i_1_n_0,tmp_14_fu_2576_p2_carry__0_i_2_n_0,tmp_14_fu_2576_p2_carry__0_i_3_n_0,tmp_14_fu_2576_p2_carry__0_i_4_n_0,tmp_14_fu_2576_p2_carry__0_i_5_n_0,tmp_14_fu_2576_p2_carry__0_i_6_n_0,tmp_14_fu_2576_p2_carry__0_i_7_n_0,tmp_14_fu_2576_p2_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry__0_i_1
       (.I0(addr_index_assign_fu_268_reg[31]),
        .I1(addr_index_assign_fu_268_reg[30]),
        .O(tmp_14_fu_2576_p2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry__0_i_2
       (.I0(addr_index_assign_fu_268_reg[29]),
        .I1(addr_index_assign_fu_268_reg[28]),
        .O(tmp_14_fu_2576_p2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry__0_i_3
       (.I0(addr_index_assign_fu_268_reg[27]),
        .I1(addr_index_assign_fu_268_reg[26]),
        .O(tmp_14_fu_2576_p2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry__0_i_4
       (.I0(addr_index_assign_fu_268_reg[25]),
        .I1(addr_index_assign_fu_268_reg[24]),
        .O(tmp_14_fu_2576_p2_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry__0_i_5
       (.I0(addr_index_assign_fu_268_reg[23]),
        .I1(addr_index_assign_fu_268_reg[22]),
        .O(tmp_14_fu_2576_p2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry__0_i_6
       (.I0(addr_index_assign_fu_268_reg[21]),
        .I1(addr_index_assign_fu_268_reg[20]),
        .O(tmp_14_fu_2576_p2_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry__0_i_7
       (.I0(addr_index_assign_fu_268_reg[19]),
        .I1(addr_index_assign_fu_268_reg[18]),
        .O(tmp_14_fu_2576_p2_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry__0_i_8
       (.I0(addr_index_assign_fu_268_reg[17]),
        .I1(addr_index_assign_fu_268_reg[16]),
        .O(tmp_14_fu_2576_p2_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_14_fu_2576_p2_carry_i_1
       (.I0(addr_index_assign_fu_268_reg[7]),
        .O(tmp_14_fu_2576_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_14_fu_2576_p2_carry_i_10
       (.I0(out[0]),
        .I1(out[1]),
        .O(tmp_14_fu_2576_p2_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry_i_2
       (.I0(out[0]),
        .I1(out[1]),
        .O(tmp_14_fu_2576_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry_i_3
       (.I0(addr_index_assign_fu_268_reg[15]),
        .I1(addr_index_assign_fu_268_reg[14]),
        .O(tmp_14_fu_2576_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry_i_4
       (.I0(addr_index_assign_fu_268_reg[13]),
        .I1(addr_index_assign_fu_268_reg[12]),
        .O(tmp_14_fu_2576_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry_i_5
       (.I0(addr_index_assign_fu_268_reg[11]),
        .I1(addr_index_assign_fu_268_reg[10]),
        .O(tmp_14_fu_2576_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry_i_6
       (.I0(addr_index_assign_fu_268_reg[9]),
        .I1(addr_index_assign_fu_268_reg[8]),
        .O(tmp_14_fu_2576_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_14_fu_2576_p2_carry_i_7
       (.I0(addr_index_assign_fu_268_reg[7]),
        .I1(out[6]),
        .O(tmp_14_fu_2576_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry_i_8
       (.I0(out[5]),
        .I1(out[4]),
        .O(tmp_14_fu_2576_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_14_fu_2576_p2_carry_i_9
       (.I0(out[3]),
        .I1(out[2]),
        .O(tmp_14_fu_2576_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_4_reg_2995[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .O(ap_NS_fsm1));
  FDRE \tmp_4_reg_2995_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(bx_V[0]),
        .Q(\instubdata_dataarray_data_V_address0[7] ),
        .R(1'b0));
  FDRE \tmp_4_reg_2995_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(bx_V[1]),
        .Q(\instubdata_dataarray_data_V_address0[8] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_6_reg_3071[0]_i_1 
       (.I0(\istub_V_fu_300_reg_n_0_[0] ),
        .I1(\istub_V_fu_300_reg_n_0_[1] ),
        .I2(\istub_V_fu_300_reg_n_0_[3] ),
        .I3(\istub_V_fu_300_reg_n_0_[2] ),
        .O(tmp_6_fu_2248_p2));
  FDRE \tmp_6_reg_3071_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_6_reg_3071),
        .Q(tmp_6_reg_3071_pp0_iter2_reg),
        .R(1'b0));
  FDRE \tmp_6_reg_3071_reg[0] 
       (.C(ap_clk),
        .CE(istubtmp_V_reg_30660),
        .D(tmp_6_fu_2248_p2),
        .Q(tmp_6_reg_3071),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \tmp_8_reg_3007[0]_i_1 
       (.I0(p_4_reg_597_reg__0[1]),
        .I1(p_4_reg_597_reg__0[2]),
        .I2(p_4_reg_597_reg__0[4]),
        .I3(p_4_reg_597_reg__0[0]),
        .I4(p_4_reg_597_reg__0[5]),
        .I5(\tmp_8_reg_3007[0]_i_2_n_0 ),
        .O(tmp_8_fu_707_p2));
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_8_reg_3007[0]_i_2 
       (.I0(p_4_reg_597_reg__0[3]),
        .I1(p_4_reg_597_reg__0[6]),
        .O(\tmp_8_reg_3007[0]_i_2_n_0 ));
  FDRE \tmp_8_reg_3007_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(\tmp_8_reg_3007_reg_n_0_[0] ),
        .Q(tmp_8_reg_3007_pp0_iter1_reg),
        .R(1'b0));
  FDRE \tmp_8_reg_3007_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(tmp_8_fu_707_p2),
        .Q(\tmp_8_reg_3007_reg_n_0_[0] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \writeindex_V_3_reg_3029[0]_i_1 
       (.I0(writeindextmp_V_reg_573[0]),
        .I1(tmp_8_reg_3007_pp0_iter1_reg),
        .I2(instubdata_dataarray_data_V_ce0),
        .I3(\writeindex_V_3_reg_3029[0]_i_2_n_0 ),
        .O(ap_phi_mux_writeindextmp_V_phi_fu_577_p4));
  LUT6 #(
    .INIT(64'hFFEB00E8FF2B0028)) 
    \writeindex_V_3_reg_3029[0]_i_2 
       (.I0(writeindexplus_V_reg_3024[0]),
        .I1(savefirst_reg_3044),
        .I2(savelast_reg_3050),
        .I3(brmerge_reg_3038),
        .I4(writeindextmp_V_reg_573[0]),
        .I5(writeindex_V_3_reg_3029[0]),
        .O(\writeindex_V_3_reg_3029[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \writeindex_V_3_reg_3029[1]_i_1 
       (.I0(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .O(writeindex_V_3_fu_792_p2[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \writeindex_V_3_reg_3029[2]_i_1 
       (.I0(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .I1(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .O(writeindex_V_3_fu_792_p2[2]));
  FDRE \writeindex_V_3_reg_3029_reg[0] 
       (.C(ap_clk),
        .CE(brmerge_reg_30380),
        .D(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .Q(writeindex_V_3_reg_3029[0]),
        .R(1'b0));
  FDRE \writeindex_V_3_reg_3029_reg[1] 
       (.C(ap_clk),
        .CE(brmerge_reg_30380),
        .D(writeindex_V_3_fu_792_p2[1]),
        .Q(writeindex_V_3_reg_3029[1]),
        .R(1'b0));
  FDRE \writeindex_V_3_reg_3029_reg[2] 
       (.C(ap_clk),
        .CE(brmerge_reg_30380),
        .D(writeindex_V_3_fu_792_p2[2]),
        .Q(writeindex_V_3_reg_3029[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \writeindexplus_V_reg_3024[0]_i_1 
       (.I0(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .O(writeindexplus_V_fu_786_p2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \writeindexplus_V_reg_3024[1]_i_1 
       (.I0(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .I1(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .O(writeindexplus_V_fu_786_p2[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \writeindexplus_V_reg_3024[2]_i_1 
       (.I0(\writeindexplus_V_reg_3024[2]_i_2_n_0 ),
        .I1(ap_phi_mux_writeindextmp_V_phi_fu_577_p4),
        .I2(\writeindexplus_V_reg_3024[2]_i_3_n_0 ),
        .O(writeindexplus_V_fu_786_p2[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \writeindexplus_V_reg_3024[2]_i_2 
       (.I0(writeindextmp_V_reg_573[2]),
        .I1(tmp_8_reg_3007_pp0_iter1_reg),
        .I2(instubdata_dataarray_data_V_ce0),
        .I3(\writeindextmp_V_reg_573[2]_i_3_n_0 ),
        .O(\writeindexplus_V_reg_3024[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \writeindexplus_V_reg_3024[2]_i_3 
       (.I0(writeindextmp_V_reg_573[1]),
        .I1(tmp_8_reg_3007_pp0_iter1_reg),
        .I2(instubdata_dataarray_data_V_ce0),
        .I3(\writeindextmp_V_reg_573[1]_i_2_n_0 ),
        .O(\writeindexplus_V_reg_3024[2]_i_3_n_0 ));
  FDRE \writeindexplus_V_reg_3024_reg[0] 
       (.C(ap_clk),
        .CE(brmerge_reg_30380),
        .D(writeindexplus_V_fu_786_p2[0]),
        .Q(writeindexplus_V_reg_3024[0]),
        .R(1'b0));
  FDRE \writeindexplus_V_reg_3024_reg[1] 
       (.C(ap_clk),
        .CE(brmerge_reg_30380),
        .D(writeindexplus_V_fu_786_p2[1]),
        .Q(writeindexplus_V_reg_3024[1]),
        .R(1'b0));
  FDRE \writeindexplus_V_reg_3024_reg[2] 
       (.C(ap_clk),
        .CE(brmerge_reg_30380),
        .D(writeindexplus_V_fu_786_p2[2]),
        .Q(writeindexplus_V_reg_3024[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \writeindextmp_V_reg_573[0]_i_1 
       (.I0(\writeindex_V_3_reg_3029[0]_i_2_n_0 ),
        .I1(instubdata_dataarray_data_V_ce0),
        .I2(tmp_8_reg_3007_pp0_iter1_reg),
        .O(\writeindextmp_V_reg_573[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \writeindextmp_V_reg_573[1]_i_1 
       (.I0(\writeindextmp_V_reg_573[1]_i_2_n_0 ),
        .I1(instubdata_dataarray_data_V_ce0),
        .I2(tmp_8_reg_3007_pp0_iter1_reg),
        .O(\writeindextmp_V_reg_573[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEB00E8FF2B0028)) 
    \writeindextmp_V_reg_573[1]_i_2 
       (.I0(writeindexplus_V_reg_3024[1]),
        .I1(savefirst_reg_3044),
        .I2(savelast_reg_3050),
        .I3(brmerge_reg_3038),
        .I4(writeindextmp_V_reg_573[1]),
        .I5(writeindex_V_3_reg_3029[1]),
        .O(\writeindextmp_V_reg_573[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88F8)) 
    \writeindextmp_V_reg_573[2]_i_1 
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(instubdata_dataarray_data_V_ce0),
        .I3(tmp_8_reg_3007_pp0_iter1_reg),
        .O(\writeindextmp_V_reg_573[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \writeindextmp_V_reg_573[2]_i_2 
       (.I0(\writeindextmp_V_reg_573[2]_i_3_n_0 ),
        .I1(instubdata_dataarray_data_V_ce0),
        .I2(tmp_8_reg_3007_pp0_iter1_reg),
        .O(\writeindextmp_V_reg_573[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEB00E8FF2B0028)) 
    \writeindextmp_V_reg_573[2]_i_3 
       (.I0(writeindexplus_V_reg_3024[2]),
        .I1(savefirst_reg_3044),
        .I2(savelast_reg_3050),
        .I3(brmerge_reg_3038),
        .I4(writeindextmp_V_reg_573[2]),
        .I5(writeindex_V_3_reg_3029[2]),
        .O(\writeindextmp_V_reg_573[2]_i_3_n_0 ));
  FDRE \writeindextmp_V_reg_573_reg[0] 
       (.C(ap_clk),
        .CE(\writeindextmp_V_reg_573[2]_i_1_n_0 ),
        .D(\writeindextmp_V_reg_573[0]_i_1_n_0 ),
        .Q(writeindextmp_V_reg_573[0]),
        .R(1'b0));
  FDRE \writeindextmp_V_reg_573_reg[1] 
       (.C(ap_clk),
        .CE(\writeindextmp_V_reg_573[2]_i_1_n_0 ),
        .D(\writeindextmp_V_reg_573[1]_i_1_n_0 ),
        .Q(writeindextmp_V_reg_573[1]),
        .R(1'b0));
  FDRE \writeindextmp_V_reg_573_reg[2] 
       (.C(ap_clk),
        .CE(\writeindextmp_V_reg_573[2]_i_1_n_0 ),
        .D(\writeindextmp_V_reg_573[2]_i_2_n_0 ),
        .Q(writeindextmp_V_reg_573[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MatchEngine_1_0_sbkb
   (clear,
    SR,
    sel,
    E,
    outcandmatch_dataarray_data_V_we0,
    \outcandmatch_nentrie_2_fu_260_reg[7] ,
    ap_clk,
    grp_MatchEngine_1_0_s_fu_332_ap_start_reg,
    Q,
    pass_2_reg_3116,
    ap_enable_reg_pp0_iter4_reg,
    \buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ,
    CO,
    \tmp_4_reg_2995_reg[0] ,
    p_0_out,
    ap_enable_reg_pp0_iter3);
  output clear;
  output [0:0]SR;
  output sel;
  output [0:0]E;
  output outcandmatch_dataarray_data_V_we0;
  output [0:0]\outcandmatch_nentrie_2_fu_260_reg[7] ;
  input ap_clk;
  input grp_MatchEngine_1_0_s_fu_332_ap_start_reg;
  input [0:0]Q;
  input pass_2_reg_3116;
  input ap_enable_reg_pp0_iter4_reg;
  input \buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ;
  input [0:0]CO;
  input \tmp_4_reg_2995_reg[0] ;
  input p_0_out;
  input ap_enable_reg_pp0_iter3;

  wire [0:0]CO;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4_reg;
  wire \buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ;
  wire clear;
  wire grp_MatchEngine_1_0_s_fu_332_ap_start_reg;
  wire outcandmatch_dataarray_data_V_we0;
  wire [0:0]\outcandmatch_nentrie_2_fu_260_reg[7] ;
  wire p_0_out;
  wire pass_2_reg_3116;
  wire sel;
  wire \tmp_4_reg_2995_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MatchEngine_1_0_sbkb_rom MatchEngine_1_0_sbkb_rom_U
       (.CO(CO),
        .E(E),
        .Q(Q),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter4_reg(ap_enable_reg_pp0_iter4_reg),
        .\buffernotempty_reg_3034_pp0_iter3_reg_reg[0] (\buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ),
        .clear(clear),
        .grp_MatchEngine_1_0_s_fu_332_ap_start_reg(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .outcandmatch_dataarray_data_V_we0(outcandmatch_dataarray_data_V_we0),
        .\outcandmatch_nentrie_2_fu_260_reg[7] (\outcandmatch_nentrie_2_fu_260_reg[7] ),
        .p_0_out(p_0_out),
        .pass_2_reg_3116(pass_2_reg_3116),
        .sel(sel),
        .\tmp_4_reg_2995_reg[0] (\tmp_4_reg_2995_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MatchEngine_1_0_sbkb_rom
   (clear,
    SR,
    sel,
    E,
    outcandmatch_dataarray_data_V_we0,
    \outcandmatch_nentrie_2_fu_260_reg[7] ,
    ap_clk,
    grp_MatchEngine_1_0_s_fu_332_ap_start_reg,
    Q,
    pass_2_reg_3116,
    ap_enable_reg_pp0_iter4_reg,
    \buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ,
    CO,
    \tmp_4_reg_2995_reg[0] ,
    p_0_out,
    ap_enable_reg_pp0_iter3);
  output clear;
  output [0:0]SR;
  output sel;
  output [0:0]E;
  output outcandmatch_dataarray_data_V_we0;
  output [0:0]\outcandmatch_nentrie_2_fu_260_reg[7] ;
  input ap_clk;
  input grp_MatchEngine_1_0_s_fu_332_ap_start_reg;
  input [0:0]Q;
  input pass_2_reg_3116;
  input ap_enable_reg_pp0_iter4_reg;
  input \buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ;
  input [0:0]CO;
  input \tmp_4_reg_2995_reg[0] ;
  input p_0_out;
  input ap_enable_reg_pp0_iter3;

  wire [0:0]CO;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4_reg;
  wire \buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ;
  wire clear;
  wire grp_MatchEngine_1_0_s_fu_332_ap_start_reg;
  wire outcandmatch_dataarray_data_V_we0;
  wire [0:0]\outcandmatch_nentrie_2_fu_260_reg[7] ;
  wire p_0_out;
  wire pass_2_reg_3116;
  wire \q0[0]_i_1_n_0 ;
  wire sel;
  wire table1_q0;
  wire \tmp_4_reg_2995_reg[0] ;

  LUT6 #(
    .INIT(64'h8888888808888888)) 
    \addr_index_assign_fu_268[6]_i_1 
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I1(Q),
        .I2(table1_q0),
        .I3(pass_2_reg_3116),
        .I4(ap_enable_reg_pp0_iter4_reg),
        .I5(\buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \addr_index_assign_fu_268[6]_i_2 
       (.I0(\buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ),
        .I1(ap_enable_reg_pp0_iter4_reg),
        .I2(pass_2_reg_3116),
        .I3(table1_q0),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    outcandmatch_dataarray_data_V_we0_INST_0
       (.I0(CO),
        .I1(table1_q0),
        .I2(pass_2_reg_3116),
        .I3(ap_enable_reg_pp0_iter4_reg),
        .I4(\buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ),
        .O(outcandmatch_dataarray_data_V_we0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \outcandmatch_nentrie_2_fu_260[7]_i_1 
       (.I0(\buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ),
        .I1(ap_enable_reg_pp0_iter4_reg),
        .I2(pass_2_reg_3116),
        .I3(table1_q0),
        .I4(CO),
        .I5(\tmp_4_reg_2995_reg[0] ),
        .O(\outcandmatch_nentrie_2_fu_260_reg[7] ));
  LUT4 #(
    .INIT(16'h0888)) 
    \outcandmatch_nentrie_fu_264[7]_i_1 
       (.I0(grp_MatchEngine_1_0_s_fu_332_ap_start_reg),
        .I1(Q),
        .I2(sel),
        .I3(CO),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \outcandmatch_nentrie_fu_264[7]_i_2 
       (.I0(\buffernotempty_reg_3034_pp0_iter3_reg_reg[0] ),
        .I1(ap_enable_reg_pp0_iter4_reg),
        .I2(pass_2_reg_3116),
        .I3(table1_q0),
        .I4(CO),
        .I5(\tmp_4_reg_2995_reg[0] ),
        .O(E));
  LUT3 #(
    .INIT(8'hB8)) 
    \q0[0]_i_1 
       (.I0(p_0_out),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(table1_q0),
        .O(\q0[0]_i_1_n_0 ));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\q0[0]_i_1_n_0 ),
        .Q(table1_q0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
