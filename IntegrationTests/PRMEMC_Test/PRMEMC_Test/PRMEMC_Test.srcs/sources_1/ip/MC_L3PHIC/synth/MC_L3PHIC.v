// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:MatchCalculatorTop:1.0
// IP Revision: 2002040938

(* X_CORE_INFO = "MatchCalculatorTop,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "MC_L3PHIC,MatchCalculatorTop,{}" *)
(* CORE_GENERATION_INFO = "MC_L3PHIC,MatchCalculatorTop,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=MatchCalculatorTop,x_ipVersion=1.0,x_ipCoreRevision=2002040938,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module MC_L3PHIC (
  match1_dataarray_data_V_ce0,
  match2_dataarray_data_V_ce0,
  match3_dataarray_data_V_ce0,
  match4_dataarray_data_V_ce0,
  match5_dataarray_data_V_ce0,
  match6_dataarray_data_V_ce0,
  match7_dataarray_data_V_ce0,
  match8_dataarray_data_V_ce0,
  allstub_dataarray_data_V_ce0,
  allproj_dataarray_data_V_ce0,
  bx_o_V_ap_vld,
  fullmatch1_dataarray_data_V_ce0,
  fullmatch1_dataarray_data_V_we0,
  fullmatch1_nentries_0_V_ap_vld,
  fullmatch1_nentries_1_V_ap_vld,
  fullmatch2_dataarray_data_V_ce0,
  fullmatch2_dataarray_data_V_we0,
  fullmatch2_nentries_0_V_ap_vld,
  fullmatch2_nentries_1_V_ap_vld,
  fullmatch3_dataarray_data_V_ce0,
  fullmatch3_dataarray_data_V_we0,
  fullmatch3_nentries_0_V_ap_vld,
  fullmatch3_nentries_1_V_ap_vld,
  fullmatch4_dataarray_data_V_ce0,
  fullmatch4_dataarray_data_V_we0,
  fullmatch4_nentries_0_V_ap_vld,
  fullmatch4_nentries_1_V_ap_vld,
  fullmatch5_dataarray_data_V_ce0,
  fullmatch5_dataarray_data_V_we0,
  fullmatch5_nentries_0_V_ap_vld,
  fullmatch5_nentries_1_V_ap_vld,
  fullmatch6_dataarray_data_V_ce0,
  fullmatch6_dataarray_data_V_we0,
  fullmatch6_nentries_0_V_ap_vld,
  fullmatch6_nentries_1_V_ap_vld,
  fullmatch7_dataarray_data_V_ce0,
  fullmatch7_dataarray_data_V_we0,
  fullmatch7_nentries_0_V_ap_vld,
  fullmatch7_nentries_1_V_ap_vld,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  bx_V,
  match1_dataarray_data_V_address0,
  match1_dataarray_data_V_q0,
  match1_nentries_0_V,
  match1_nentries_1_V,
  match2_dataarray_data_V_address0,
  match2_dataarray_data_V_q0,
  match2_nentries_0_V,
  match2_nentries_1_V,
  match3_dataarray_data_V_address0,
  match3_dataarray_data_V_q0,
  match3_nentries_0_V,
  match3_nentries_1_V,
  match4_dataarray_data_V_address0,
  match4_dataarray_data_V_q0,
  match4_nentries_0_V,
  match4_nentries_1_V,
  match5_dataarray_data_V_address0,
  match5_dataarray_data_V_q0,
  match5_nentries_0_V,
  match5_nentries_1_V,
  match6_dataarray_data_V_address0,
  match6_dataarray_data_V_q0,
  match6_nentries_0_V,
  match6_nentries_1_V,
  match7_dataarray_data_V_address0,
  match7_dataarray_data_V_q0,
  match7_nentries_0_V,
  match7_nentries_1_V,
  match8_dataarray_data_V_address0,
  match8_dataarray_data_V_q0,
  match8_nentries_0_V,
  match8_nentries_1_V,
  allstub_dataarray_data_V_address0,
  allstub_dataarray_data_V_q0,
  allstub_nentries_0_V,
  allstub_nentries_1_V,
  allstub_nentries_2_V,
  allstub_nentries_3_V,
  allstub_nentries_4_V,
  allstub_nentries_5_V,
  allstub_nentries_6_V,
  allstub_nentries_7_V,
  allproj_dataarray_data_V_address0,
  allproj_dataarray_data_V_q0,
  allproj_nentries_0_V,
  allproj_nentries_1_V,
  allproj_nentries_2_V,
  allproj_nentries_3_V,
  allproj_nentries_4_V,
  allproj_nentries_5_V,
  allproj_nentries_6_V,
  allproj_nentries_7_V,
  bx_o_V,
  fullmatch1_dataarray_data_V_address0,
  fullmatch1_dataarray_data_V_d0,
  fullmatch1_nentries_0_V,
  fullmatch1_nentries_1_V,
  fullmatch2_dataarray_data_V_address0,
  fullmatch2_dataarray_data_V_d0,
  fullmatch2_nentries_0_V,
  fullmatch2_nentries_1_V,
  fullmatch3_dataarray_data_V_address0,
  fullmatch3_dataarray_data_V_d0,
  fullmatch3_nentries_0_V,
  fullmatch3_nentries_1_V,
  fullmatch4_dataarray_data_V_address0,
  fullmatch4_dataarray_data_V_d0,
  fullmatch4_nentries_0_V,
  fullmatch4_nentries_1_V,
  fullmatch5_dataarray_data_V_address0,
  fullmatch5_dataarray_data_V_d0,
  fullmatch5_nentries_0_V,
  fullmatch5_nentries_1_V,
  fullmatch6_dataarray_data_V_address0,
  fullmatch6_dataarray_data_V_d0,
  fullmatch6_nentries_0_V,
  fullmatch6_nentries_1_V,
  fullmatch7_dataarray_data_V_address0,
  fullmatch7_dataarray_data_V_d0,
  fullmatch7_nentries_0_V,
  fullmatch7_nentries_1_V
);

output wire match1_dataarray_data_V_ce0;
output wire match2_dataarray_data_V_ce0;
output wire match3_dataarray_data_V_ce0;
output wire match4_dataarray_data_V_ce0;
output wire match5_dataarray_data_V_ce0;
output wire match6_dataarray_data_V_ce0;
output wire match7_dataarray_data_V_ce0;
output wire match8_dataarray_data_V_ce0;
output wire allstub_dataarray_data_V_ce0;
output wire allproj_dataarray_data_V_ce0;
output wire bx_o_V_ap_vld;
output wire fullmatch1_dataarray_data_V_ce0;
output wire fullmatch1_dataarray_data_V_we0;
output wire fullmatch1_nentries_0_V_ap_vld;
output wire fullmatch1_nentries_1_V_ap_vld;
output wire fullmatch2_dataarray_data_V_ce0;
output wire fullmatch2_dataarray_data_V_we0;
output wire fullmatch2_nentries_0_V_ap_vld;
output wire fullmatch2_nentries_1_V_ap_vld;
output wire fullmatch3_dataarray_data_V_ce0;
output wire fullmatch3_dataarray_data_V_we0;
output wire fullmatch3_nentries_0_V_ap_vld;
output wire fullmatch3_nentries_1_V_ap_vld;
output wire fullmatch4_dataarray_data_V_ce0;
output wire fullmatch4_dataarray_data_V_we0;
output wire fullmatch4_nentries_0_V_ap_vld;
output wire fullmatch4_nentries_1_V_ap_vld;
output wire fullmatch5_dataarray_data_V_ce0;
output wire fullmatch5_dataarray_data_V_we0;
output wire fullmatch5_nentries_0_V_ap_vld;
output wire fullmatch5_nentries_1_V_ap_vld;
output wire fullmatch6_dataarray_data_V_ce0;
output wire fullmatch6_dataarray_data_V_we0;
output wire fullmatch6_nentries_0_V_ap_vld;
output wire fullmatch6_nentries_1_V_ap_vld;
output wire fullmatch7_dataarray_data_V_ce0;
output wire fullmatch7_dataarray_data_V_we0;
output wire fullmatch7_nentries_0_V_ap_vld;
output wire fullmatch7_nentries_1_V_ap_vld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bx_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 bx_V DATA" *)
input wire [2 : 0] bx_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match1_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match1_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] match1_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match1_dataarray_data_V_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match1_dataarray_data_V_q0 DATA" *)
input wire [13 : 0] match1_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match1_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match1_nentries_0_V DATA" *)
input wire [7 : 0] match1_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match1_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match1_nentries_1_V DATA" *)
input wire [7 : 0] match1_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match2_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match2_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] match2_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match2_dataarray_data_V_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match2_dataarray_data_V_q0 DATA" *)
input wire [13 : 0] match2_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match2_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match2_nentries_0_V DATA" *)
input wire [7 : 0] match2_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match2_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match2_nentries_1_V DATA" *)
input wire [7 : 0] match2_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match3_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match3_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] match3_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match3_dataarray_data_V_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match3_dataarray_data_V_q0 DATA" *)
input wire [13 : 0] match3_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match3_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match3_nentries_0_V DATA" *)
input wire [7 : 0] match3_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match3_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match3_nentries_1_V DATA" *)
input wire [7 : 0] match3_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match4_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match4_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] match4_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match4_dataarray_data_V_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match4_dataarray_data_V_q0 DATA" *)
input wire [13 : 0] match4_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match4_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match4_nentries_0_V DATA" *)
input wire [7 : 0] match4_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match4_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match4_nentries_1_V DATA" *)
input wire [7 : 0] match4_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match5_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match5_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] match5_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match5_dataarray_data_V_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match5_dataarray_data_V_q0 DATA" *)
input wire [13 : 0] match5_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match5_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match5_nentries_0_V DATA" *)
input wire [7 : 0] match5_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match5_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match5_nentries_1_V DATA" *)
input wire [7 : 0] match5_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match6_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match6_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] match6_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match6_dataarray_data_V_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match6_dataarray_data_V_q0 DATA" *)
input wire [13 : 0] match6_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match6_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match6_nentries_0_V DATA" *)
input wire [7 : 0] match6_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match6_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match6_nentries_1_V DATA" *)
input wire [7 : 0] match6_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match7_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match7_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] match7_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match7_dataarray_data_V_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match7_dataarray_data_V_q0 DATA" *)
input wire [13 : 0] match7_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match7_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match7_nentries_0_V DATA" *)
input wire [7 : 0] match7_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match7_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match7_nentries_1_V DATA" *)
input wire [7 : 0] match7_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match8_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match8_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] match8_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match8_dataarray_data_V_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match8_dataarray_data_V_q0 DATA" *)
input wire [13 : 0] match8_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match8_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match8_nentries_0_V DATA" *)
input wire [7 : 0] match8_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME match8_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match8_nentries_1_V DATA" *)
input wire [7 : 0] match8_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allstub_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allstub_dataarray_data_V_address0 DATA" *)
output wire [9 : 0] allstub_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allstub_dataarray_data_V_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allstub_dataarray_data_V_q0 DATA" *)
input wire [35 : 0] allstub_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allstub_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allstub_nentries_0_V DATA" *)
input wire [7 : 0] allstub_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allstub_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allstub_nentries_1_V DATA" *)
input wire [7 : 0] allstub_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allstub_nentries_2_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allstub_nentries_2_V DATA" *)
input wire [7 : 0] allstub_nentries_2_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allstub_nentries_3_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allstub_nentries_3_V DATA" *)
input wire [7 : 0] allstub_nentries_3_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allstub_nentries_4_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allstub_nentries_4_V DATA" *)
input wire [7 : 0] allstub_nentries_4_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allstub_nentries_5_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allstub_nentries_5_V DATA" *)
input wire [7 : 0] allstub_nentries_5_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allstub_nentries_6_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allstub_nentries_6_V DATA" *)
input wire [7 : 0] allstub_nentries_6_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allstub_nentries_7_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allstub_nentries_7_V DATA" *)
input wire [7 : 0] allstub_nentries_7_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allproj_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allproj_dataarray_data_V_address0 DATA" *)
output wire [9 : 0] allproj_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allproj_dataarray_data_V_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allproj_dataarray_data_V_q0 DATA" *)
input wire [59 : 0] allproj_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allproj_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allproj_nentries_0_V DATA" *)
input wire [7 : 0] allproj_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allproj_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allproj_nentries_1_V DATA" *)
input wire [7 : 0] allproj_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allproj_nentries_2_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allproj_nentries_2_V DATA" *)
input wire [7 : 0] allproj_nentries_2_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allproj_nentries_3_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allproj_nentries_3_V DATA" *)
input wire [7 : 0] allproj_nentries_3_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allproj_nentries_4_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allproj_nentries_4_V DATA" *)
input wire [7 : 0] allproj_nentries_4_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allproj_nentries_5_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allproj_nentries_5_V DATA" *)
input wire [7 : 0] allproj_nentries_5_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allproj_nentries_6_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allproj_nentries_6_V DATA" *)
input wire [7 : 0] allproj_nentries_6_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME allproj_nentries_7_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 allproj_nentries_7_V DATA" *)
input wire [7 : 0] allproj_nentries_7_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bx_o_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 bx_o_V DATA" *)
output wire [2 : 0] bx_o_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch1_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch1_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] fullmatch1_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch1_dataarray_data_V_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch1_dataarray_data_V_d0 DATA" *)
output wire [44 : 0] fullmatch1_dataarray_data_V_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch1_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch1_nentries_0_V DATA" *)
output wire [7 : 0] fullmatch1_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch1_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch1_nentries_1_V DATA" *)
output wire [7 : 0] fullmatch1_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch2_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch2_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] fullmatch2_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch2_dataarray_data_V_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch2_dataarray_data_V_d0 DATA" *)
output wire [44 : 0] fullmatch2_dataarray_data_V_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch2_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch2_nentries_0_V DATA" *)
output wire [7 : 0] fullmatch2_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch2_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch2_nentries_1_V DATA" *)
output wire [7 : 0] fullmatch2_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch3_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch3_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] fullmatch3_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch3_dataarray_data_V_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch3_dataarray_data_V_d0 DATA" *)
output wire [44 : 0] fullmatch3_dataarray_data_V_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch3_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch3_nentries_0_V DATA" *)
output wire [7 : 0] fullmatch3_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch3_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch3_nentries_1_V DATA" *)
output wire [7 : 0] fullmatch3_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch4_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch4_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] fullmatch4_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch4_dataarray_data_V_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch4_dataarray_data_V_d0 DATA" *)
output wire [44 : 0] fullmatch4_dataarray_data_V_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch4_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch4_nentries_0_V DATA" *)
output wire [7 : 0] fullmatch4_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch4_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch4_nentries_1_V DATA" *)
output wire [7 : 0] fullmatch4_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch5_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch5_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] fullmatch5_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch5_dataarray_data_V_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch5_dataarray_data_V_d0 DATA" *)
output wire [44 : 0] fullmatch5_dataarray_data_V_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch5_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch5_nentries_0_V DATA" *)
output wire [7 : 0] fullmatch5_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch5_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch5_nentries_1_V DATA" *)
output wire [7 : 0] fullmatch5_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch6_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch6_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] fullmatch6_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch6_dataarray_data_V_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch6_dataarray_data_V_d0 DATA" *)
output wire [44 : 0] fullmatch6_dataarray_data_V_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch6_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch6_nentries_0_V DATA" *)
output wire [7 : 0] fullmatch6_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch6_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch6_nentries_1_V DATA" *)
output wire [7 : 0] fullmatch6_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch7_dataarray_data_V_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch7_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] fullmatch7_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch7_dataarray_data_V_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch7_dataarray_data_V_d0 DATA" *)
output wire [44 : 0] fullmatch7_dataarray_data_V_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch7_nentries_0_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch7_nentries_0_V DATA" *)
output wire [7 : 0] fullmatch7_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fullmatch7_nentries_1_V, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fullmatch7_nentries_1_V DATA" *)
output wire [7 : 0] fullmatch7_nentries_1_V;

  MatchCalculatorTop inst (
    .match1_dataarray_data_V_ce0(match1_dataarray_data_V_ce0),
    .match2_dataarray_data_V_ce0(match2_dataarray_data_V_ce0),
    .match3_dataarray_data_V_ce0(match3_dataarray_data_V_ce0),
    .match4_dataarray_data_V_ce0(match4_dataarray_data_V_ce0),
    .match5_dataarray_data_V_ce0(match5_dataarray_data_V_ce0),
    .match6_dataarray_data_V_ce0(match6_dataarray_data_V_ce0),
    .match7_dataarray_data_V_ce0(match7_dataarray_data_V_ce0),
    .match8_dataarray_data_V_ce0(match8_dataarray_data_V_ce0),
    .allstub_dataarray_data_V_ce0(allstub_dataarray_data_V_ce0),
    .allproj_dataarray_data_V_ce0(allproj_dataarray_data_V_ce0),
    .bx_o_V_ap_vld(bx_o_V_ap_vld),
    .fullmatch1_dataarray_data_V_ce0(fullmatch1_dataarray_data_V_ce0),
    .fullmatch1_dataarray_data_V_we0(fullmatch1_dataarray_data_V_we0),
    .fullmatch1_nentries_0_V_ap_vld(fullmatch1_nentries_0_V_ap_vld),
    .fullmatch1_nentries_1_V_ap_vld(fullmatch1_nentries_1_V_ap_vld),
    .fullmatch2_dataarray_data_V_ce0(fullmatch2_dataarray_data_V_ce0),
    .fullmatch2_dataarray_data_V_we0(fullmatch2_dataarray_data_V_we0),
    .fullmatch2_nentries_0_V_ap_vld(fullmatch2_nentries_0_V_ap_vld),
    .fullmatch2_nentries_1_V_ap_vld(fullmatch2_nentries_1_V_ap_vld),
    .fullmatch3_dataarray_data_V_ce0(fullmatch3_dataarray_data_V_ce0),
    .fullmatch3_dataarray_data_V_we0(fullmatch3_dataarray_data_V_we0),
    .fullmatch3_nentries_0_V_ap_vld(fullmatch3_nentries_0_V_ap_vld),
    .fullmatch3_nentries_1_V_ap_vld(fullmatch3_nentries_1_V_ap_vld),
    .fullmatch4_dataarray_data_V_ce0(fullmatch4_dataarray_data_V_ce0),
    .fullmatch4_dataarray_data_V_we0(fullmatch4_dataarray_data_V_we0),
    .fullmatch4_nentries_0_V_ap_vld(fullmatch4_nentries_0_V_ap_vld),
    .fullmatch4_nentries_1_V_ap_vld(fullmatch4_nentries_1_V_ap_vld),
    .fullmatch5_dataarray_data_V_ce0(fullmatch5_dataarray_data_V_ce0),
    .fullmatch5_dataarray_data_V_we0(fullmatch5_dataarray_data_V_we0),
    .fullmatch5_nentries_0_V_ap_vld(fullmatch5_nentries_0_V_ap_vld),
    .fullmatch5_nentries_1_V_ap_vld(fullmatch5_nentries_1_V_ap_vld),
    .fullmatch6_dataarray_data_V_ce0(fullmatch6_dataarray_data_V_ce0),
    .fullmatch6_dataarray_data_V_we0(fullmatch6_dataarray_data_V_we0),
    .fullmatch6_nentries_0_V_ap_vld(fullmatch6_nentries_0_V_ap_vld),
    .fullmatch6_nentries_1_V_ap_vld(fullmatch6_nentries_1_V_ap_vld),
    .fullmatch7_dataarray_data_V_ce0(fullmatch7_dataarray_data_V_ce0),
    .fullmatch7_dataarray_data_V_we0(fullmatch7_dataarray_data_V_we0),
    .fullmatch7_nentries_0_V_ap_vld(fullmatch7_nentries_0_V_ap_vld),
    .fullmatch7_nentries_1_V_ap_vld(fullmatch7_nentries_1_V_ap_vld),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .bx_V(bx_V),
    .match1_dataarray_data_V_address0(match1_dataarray_data_V_address0),
    .match1_dataarray_data_V_q0(match1_dataarray_data_V_q0),
    .match1_nentries_0_V(match1_nentries_0_V),
    .match1_nentries_1_V(match1_nentries_1_V),
    .match2_dataarray_data_V_address0(match2_dataarray_data_V_address0),
    .match2_dataarray_data_V_q0(match2_dataarray_data_V_q0),
    .match2_nentries_0_V(match2_nentries_0_V),
    .match2_nentries_1_V(match2_nentries_1_V),
    .match3_dataarray_data_V_address0(match3_dataarray_data_V_address0),
    .match3_dataarray_data_V_q0(match3_dataarray_data_V_q0),
    .match3_nentries_0_V(match3_nentries_0_V),
    .match3_nentries_1_V(match3_nentries_1_V),
    .match4_dataarray_data_V_address0(match4_dataarray_data_V_address0),
    .match4_dataarray_data_V_q0(match4_dataarray_data_V_q0),
    .match4_nentries_0_V(match4_nentries_0_V),
    .match4_nentries_1_V(match4_nentries_1_V),
    .match5_dataarray_data_V_address0(match5_dataarray_data_V_address0),
    .match5_dataarray_data_V_q0(match5_dataarray_data_V_q0),
    .match5_nentries_0_V(match5_nentries_0_V),
    .match5_nentries_1_V(match5_nentries_1_V),
    .match6_dataarray_data_V_address0(match6_dataarray_data_V_address0),
    .match6_dataarray_data_V_q0(match6_dataarray_data_V_q0),
    .match6_nentries_0_V(match6_nentries_0_V),
    .match6_nentries_1_V(match6_nentries_1_V),
    .match7_dataarray_data_V_address0(match7_dataarray_data_V_address0),
    .match7_dataarray_data_V_q0(match7_dataarray_data_V_q0),
    .match7_nentries_0_V(match7_nentries_0_V),
    .match7_nentries_1_V(match7_nentries_1_V),
    .match8_dataarray_data_V_address0(match8_dataarray_data_V_address0),
    .match8_dataarray_data_V_q0(match8_dataarray_data_V_q0),
    .match8_nentries_0_V(match8_nentries_0_V),
    .match8_nentries_1_V(match8_nentries_1_V),
    .allstub_dataarray_data_V_address0(allstub_dataarray_data_V_address0),
    .allstub_dataarray_data_V_q0(allstub_dataarray_data_V_q0),
    .allstub_nentries_0_V(allstub_nentries_0_V),
    .allstub_nentries_1_V(allstub_nentries_1_V),
    .allstub_nentries_2_V(allstub_nentries_2_V),
    .allstub_nentries_3_V(allstub_nentries_3_V),
    .allstub_nentries_4_V(allstub_nentries_4_V),
    .allstub_nentries_5_V(allstub_nentries_5_V),
    .allstub_nentries_6_V(allstub_nentries_6_V),
    .allstub_nentries_7_V(allstub_nentries_7_V),
    .allproj_dataarray_data_V_address0(allproj_dataarray_data_V_address0),
    .allproj_dataarray_data_V_q0(allproj_dataarray_data_V_q0),
    .allproj_nentries_0_V(allproj_nentries_0_V),
    .allproj_nentries_1_V(allproj_nentries_1_V),
    .allproj_nentries_2_V(allproj_nentries_2_V),
    .allproj_nentries_3_V(allproj_nentries_3_V),
    .allproj_nentries_4_V(allproj_nentries_4_V),
    .allproj_nentries_5_V(allproj_nentries_5_V),
    .allproj_nentries_6_V(allproj_nentries_6_V),
    .allproj_nentries_7_V(allproj_nentries_7_V),
    .bx_o_V(bx_o_V),
    .fullmatch1_dataarray_data_V_address0(fullmatch1_dataarray_data_V_address0),
    .fullmatch1_dataarray_data_V_d0(fullmatch1_dataarray_data_V_d0),
    .fullmatch1_nentries_0_V(fullmatch1_nentries_0_V),
    .fullmatch1_nentries_1_V(fullmatch1_nentries_1_V),
    .fullmatch2_dataarray_data_V_address0(fullmatch2_dataarray_data_V_address0),
    .fullmatch2_dataarray_data_V_d0(fullmatch2_dataarray_data_V_d0),
    .fullmatch2_nentries_0_V(fullmatch2_nentries_0_V),
    .fullmatch2_nentries_1_V(fullmatch2_nentries_1_V),
    .fullmatch3_dataarray_data_V_address0(fullmatch3_dataarray_data_V_address0),
    .fullmatch3_dataarray_data_V_d0(fullmatch3_dataarray_data_V_d0),
    .fullmatch3_nentries_0_V(fullmatch3_nentries_0_V),
    .fullmatch3_nentries_1_V(fullmatch3_nentries_1_V),
    .fullmatch4_dataarray_data_V_address0(fullmatch4_dataarray_data_V_address0),
    .fullmatch4_dataarray_data_V_d0(fullmatch4_dataarray_data_V_d0),
    .fullmatch4_nentries_0_V(fullmatch4_nentries_0_V),
    .fullmatch4_nentries_1_V(fullmatch4_nentries_1_V),
    .fullmatch5_dataarray_data_V_address0(fullmatch5_dataarray_data_V_address0),
    .fullmatch5_dataarray_data_V_d0(fullmatch5_dataarray_data_V_d0),
    .fullmatch5_nentries_0_V(fullmatch5_nentries_0_V),
    .fullmatch5_nentries_1_V(fullmatch5_nentries_1_V),
    .fullmatch6_dataarray_data_V_address0(fullmatch6_dataarray_data_V_address0),
    .fullmatch6_dataarray_data_V_d0(fullmatch6_dataarray_data_V_d0),
    .fullmatch6_nentries_0_V(fullmatch6_nentries_0_V),
    .fullmatch6_nentries_1_V(fullmatch6_nentries_1_V),
    .fullmatch7_dataarray_data_V_address0(fullmatch7_dataarray_data_V_address0),
    .fullmatch7_dataarray_data_V_d0(fullmatch7_dataarray_data_V_d0),
    .fullmatch7_nentries_0_V(fullmatch7_nentries_0_V),
    .fullmatch7_nentries_1_V(fullmatch7_nentries_1_V)
  );
endmodule
