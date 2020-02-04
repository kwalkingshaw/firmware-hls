// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MatchCalculatorTop,Vivado 2018.2" *)
module MC_L3PHIC(match1_dataarray_data_V_ce0, 
  match2_dataarray_data_V_ce0, match3_dataarray_data_V_ce0, 
  match4_dataarray_data_V_ce0, match5_dataarray_data_V_ce0, 
  match6_dataarray_data_V_ce0, match7_dataarray_data_V_ce0, 
  match8_dataarray_data_V_ce0, allstub_dataarray_data_V_ce0, 
  allproj_dataarray_data_V_ce0, bx_o_V_ap_vld, fullmatch1_dataarray_data_V_ce0, 
  fullmatch1_dataarray_data_V_we0, fullmatch1_nentries_0_V_ap_vld, 
  fullmatch1_nentries_1_V_ap_vld, fullmatch2_dataarray_data_V_ce0, 
  fullmatch2_dataarray_data_V_we0, fullmatch2_nentries_0_V_ap_vld, 
  fullmatch2_nentries_1_V_ap_vld, fullmatch3_dataarray_data_V_ce0, 
  fullmatch3_dataarray_data_V_we0, fullmatch3_nentries_0_V_ap_vld, 
  fullmatch3_nentries_1_V_ap_vld, fullmatch4_dataarray_data_V_ce0, 
  fullmatch4_dataarray_data_V_we0, fullmatch4_nentries_0_V_ap_vld, 
  fullmatch4_nentries_1_V_ap_vld, fullmatch5_dataarray_data_V_ce0, 
  fullmatch5_dataarray_data_V_we0, fullmatch5_nentries_0_V_ap_vld, 
  fullmatch5_nentries_1_V_ap_vld, fullmatch6_dataarray_data_V_ce0, 
  fullmatch6_dataarray_data_V_we0, fullmatch6_nentries_0_V_ap_vld, 
  fullmatch6_nentries_1_V_ap_vld, fullmatch7_dataarray_data_V_ce0, 
  fullmatch7_dataarray_data_V_we0, fullmatch7_nentries_0_V_ap_vld, 
  fullmatch7_nentries_1_V_ap_vld, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, bx_V, 
  match1_dataarray_data_V_address0, match1_dataarray_data_V_q0, match1_nentries_0_V, 
  match1_nentries_1_V, match2_dataarray_data_V_address0, match2_dataarray_data_V_q0, 
  match2_nentries_0_V, match2_nentries_1_V, match3_dataarray_data_V_address0, 
  match3_dataarray_data_V_q0, match3_nentries_0_V, match3_nentries_1_V, 
  match4_dataarray_data_V_address0, match4_dataarray_data_V_q0, match4_nentries_0_V, 
  match4_nentries_1_V, match5_dataarray_data_V_address0, match5_dataarray_data_V_q0, 
  match5_nentries_0_V, match5_nentries_1_V, match6_dataarray_data_V_address0, 
  match6_dataarray_data_V_q0, match6_nentries_0_V, match6_nentries_1_V, 
  match7_dataarray_data_V_address0, match7_dataarray_data_V_q0, match7_nentries_0_V, 
  match7_nentries_1_V, match8_dataarray_data_V_address0, match8_dataarray_data_V_q0, 
  match8_nentries_0_V, match8_nentries_1_V, allstub_dataarray_data_V_address0, 
  allstub_dataarray_data_V_q0, allstub_nentries_0_V, allstub_nentries_1_V, 
  allstub_nentries_2_V, allstub_nentries_3_V, allstub_nentries_4_V, allstub_nentries_5_V, 
  allstub_nentries_6_V, allstub_nentries_7_V, allproj_dataarray_data_V_address0, 
  allproj_dataarray_data_V_q0, allproj_nentries_0_V, allproj_nentries_1_V, 
  allproj_nentries_2_V, allproj_nentries_3_V, allproj_nentries_4_V, allproj_nentries_5_V, 
  allproj_nentries_6_V, allproj_nentries_7_V, bx_o_V, 
  fullmatch1_dataarray_data_V_address0, fullmatch1_dataarray_data_V_d0, 
  fullmatch1_nentries_0_V, fullmatch1_nentries_1_V, 
  fullmatch2_dataarray_data_V_address0, fullmatch2_dataarray_data_V_d0, 
  fullmatch2_nentries_0_V, fullmatch2_nentries_1_V, 
  fullmatch3_dataarray_data_V_address0, fullmatch3_dataarray_data_V_d0, 
  fullmatch3_nentries_0_V, fullmatch3_nentries_1_V, 
  fullmatch4_dataarray_data_V_address0, fullmatch4_dataarray_data_V_d0, 
  fullmatch4_nentries_0_V, fullmatch4_nentries_1_V, 
  fullmatch5_dataarray_data_V_address0, fullmatch5_dataarray_data_V_d0, 
  fullmatch5_nentries_0_V, fullmatch5_nentries_1_V, 
  fullmatch6_dataarray_data_V_address0, fullmatch6_dataarray_data_V_d0, 
  fullmatch6_nentries_0_V, fullmatch6_nentries_1_V, 
  fullmatch7_dataarray_data_V_address0, fullmatch7_dataarray_data_V_d0, 
  fullmatch7_nentries_0_V, fullmatch7_nentries_1_V);
  output match1_dataarray_data_V_ce0;
  output match2_dataarray_data_V_ce0;
  output match3_dataarray_data_V_ce0;
  output match4_dataarray_data_V_ce0;
  output match5_dataarray_data_V_ce0;
  output match6_dataarray_data_V_ce0;
  output match7_dataarray_data_V_ce0;
  output match8_dataarray_data_V_ce0;
  output allstub_dataarray_data_V_ce0;
  output allproj_dataarray_data_V_ce0;
  output bx_o_V_ap_vld;
  output fullmatch1_dataarray_data_V_ce0;
  output fullmatch1_dataarray_data_V_we0;
  output fullmatch1_nentries_0_V_ap_vld;
  output fullmatch1_nentries_1_V_ap_vld;
  output fullmatch2_dataarray_data_V_ce0;
  output fullmatch2_dataarray_data_V_we0;
  output fullmatch2_nentries_0_V_ap_vld;
  output fullmatch2_nentries_1_V_ap_vld;
  output fullmatch3_dataarray_data_V_ce0;
  output fullmatch3_dataarray_data_V_we0;
  output fullmatch3_nentries_0_V_ap_vld;
  output fullmatch3_nentries_1_V_ap_vld;
  output fullmatch4_dataarray_data_V_ce0;
  output fullmatch4_dataarray_data_V_we0;
  output fullmatch4_nentries_0_V_ap_vld;
  output fullmatch4_nentries_1_V_ap_vld;
  output fullmatch5_dataarray_data_V_ce0;
  output fullmatch5_dataarray_data_V_we0;
  output fullmatch5_nentries_0_V_ap_vld;
  output fullmatch5_nentries_1_V_ap_vld;
  output fullmatch6_dataarray_data_V_ce0;
  output fullmatch6_dataarray_data_V_we0;
  output fullmatch6_nentries_0_V_ap_vld;
  output fullmatch6_nentries_1_V_ap_vld;
  output fullmatch7_dataarray_data_V_ce0;
  output fullmatch7_dataarray_data_V_we0;
  output fullmatch7_nentries_0_V_ap_vld;
  output fullmatch7_nentries_1_V_ap_vld;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [2:0]bx_V;
  output [7:0]match1_dataarray_data_V_address0;
  input [13:0]match1_dataarray_data_V_q0;
  input [7:0]match1_nentries_0_V;
  input [7:0]match1_nentries_1_V;
  output [7:0]match2_dataarray_data_V_address0;
  input [13:0]match2_dataarray_data_V_q0;
  input [7:0]match2_nentries_0_V;
  input [7:0]match2_nentries_1_V;
  output [7:0]match3_dataarray_data_V_address0;
  input [13:0]match3_dataarray_data_V_q0;
  input [7:0]match3_nentries_0_V;
  input [7:0]match3_nentries_1_V;
  output [7:0]match4_dataarray_data_V_address0;
  input [13:0]match4_dataarray_data_V_q0;
  input [7:0]match4_nentries_0_V;
  input [7:0]match4_nentries_1_V;
  output [7:0]match5_dataarray_data_V_address0;
  input [13:0]match5_dataarray_data_V_q0;
  input [7:0]match5_nentries_0_V;
  input [7:0]match5_nentries_1_V;
  output [7:0]match6_dataarray_data_V_address0;
  input [13:0]match6_dataarray_data_V_q0;
  input [7:0]match6_nentries_0_V;
  input [7:0]match6_nentries_1_V;
  output [7:0]match7_dataarray_data_V_address0;
  input [13:0]match7_dataarray_data_V_q0;
  input [7:0]match7_nentries_0_V;
  input [7:0]match7_nentries_1_V;
  output [7:0]match8_dataarray_data_V_address0;
  input [13:0]match8_dataarray_data_V_q0;
  input [7:0]match8_nentries_0_V;
  input [7:0]match8_nentries_1_V;
  output [9:0]allstub_dataarray_data_V_address0;
  input [35:0]allstub_dataarray_data_V_q0;
  input [7:0]allstub_nentries_0_V;
  input [7:0]allstub_nentries_1_V;
  input [7:0]allstub_nentries_2_V;
  input [7:0]allstub_nentries_3_V;
  input [7:0]allstub_nentries_4_V;
  input [7:0]allstub_nentries_5_V;
  input [7:0]allstub_nentries_6_V;
  input [7:0]allstub_nentries_7_V;
  output [9:0]allproj_dataarray_data_V_address0;
  input [59:0]allproj_dataarray_data_V_q0;
  input [7:0]allproj_nentries_0_V;
  input [7:0]allproj_nentries_1_V;
  input [7:0]allproj_nentries_2_V;
  input [7:0]allproj_nentries_3_V;
  input [7:0]allproj_nentries_4_V;
  input [7:0]allproj_nentries_5_V;
  input [7:0]allproj_nentries_6_V;
  input [7:0]allproj_nentries_7_V;
  output [2:0]bx_o_V;
  output [7:0]fullmatch1_dataarray_data_V_address0;
  output [44:0]fullmatch1_dataarray_data_V_d0;
  output [7:0]fullmatch1_nentries_0_V;
  output [7:0]fullmatch1_nentries_1_V;
  output [7:0]fullmatch2_dataarray_data_V_address0;
  output [44:0]fullmatch2_dataarray_data_V_d0;
  output [7:0]fullmatch2_nentries_0_V;
  output [7:0]fullmatch2_nentries_1_V;
  output [7:0]fullmatch3_dataarray_data_V_address0;
  output [44:0]fullmatch3_dataarray_data_V_d0;
  output [7:0]fullmatch3_nentries_0_V;
  output [7:0]fullmatch3_nentries_1_V;
  output [7:0]fullmatch4_dataarray_data_V_address0;
  output [44:0]fullmatch4_dataarray_data_V_d0;
  output [7:0]fullmatch4_nentries_0_V;
  output [7:0]fullmatch4_nentries_1_V;
  output [7:0]fullmatch5_dataarray_data_V_address0;
  output [44:0]fullmatch5_dataarray_data_V_d0;
  output [7:0]fullmatch5_nentries_0_V;
  output [7:0]fullmatch5_nentries_1_V;
  output [7:0]fullmatch6_dataarray_data_V_address0;
  output [44:0]fullmatch6_dataarray_data_V_d0;
  output [7:0]fullmatch6_nentries_0_V;
  output [7:0]fullmatch6_nentries_1_V;
  output [7:0]fullmatch7_dataarray_data_V_address0;
  output [44:0]fullmatch7_dataarray_data_V_d0;
  output [7:0]fullmatch7_nentries_0_V;
  output [7:0]fullmatch7_nentries_1_V;
endmodule
