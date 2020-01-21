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


// IP VLNV: xilinx.com:hls:MatchEngineTopL1:1.0
// IP Revision: 2001161054

(* X_CORE_INFO = "MatchEngineTopL1,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "MatchEngineTopL1_0,MatchEngineTopL1,{}" *)
(* CORE_GENERATION_INFO = "MatchEngineTopL1_0,MatchEngineTopL1,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=MatchEngineTopL1,x_ipVersion=1.0,x_ipCoreRevision=2001161054,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module MatchEngineTopL1_0 (
  bx_o_V_ap_vld,
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
  outcandmatch_nentries_1_V
);

output wire bx_o_V_ap_vld;
output wire instubdata_dataarray_data_V_ce0;
output wire inprojdata_dataarray_data_V_ce0;
output wire outcandmatch_dataarray_data_V_ce0;
output wire outcandmatch_dataarray_data_V_we0;
output wire outcandmatch_nentries_0_V_ap_vld;
output wire outcandmatch_nentries_1_V_ap_vld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum \
{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long\
 minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bx_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fal\
se}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 bx_V DATA" *)
input wire [2 : 0] bx_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bx_o_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value f\
alse}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 bx_o_V DATA" *)
output wire [2 : 0] bx_o_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_dataarray_data_V_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_dataarray_data_V_address0 DATA" *)
output wire [8 : 0] instubdata_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_dataarray_data_V_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minim\
um {} maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_dataarray_data_V_q0 DATA" *)
input wire [13 : 0] instubdata_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_0 DATA" *)
input wire [4 : 0] instubdata_nentries_0_V_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_1 DATA" *)
input wire [4 : 0] instubdata_nentries_0_V_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_2 DATA" *)
input wire [4 : 0] instubdata_nentries_0_V_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_3 DATA" *)
input wire [4 : 0] instubdata_nentries_0_V_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_4 DATA" *)
input wire [4 : 0] instubdata_nentries_0_V_4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_5 DATA" *)
input wire [4 : 0] instubdata_nentries_0_V_5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_6 DATA" *)
input wire [4 : 0] instubdata_nentries_0_V_6;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_0_V_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_0_V_7 DATA" *)
input wire [4 : 0] instubdata_nentries_0_V_7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_0 DATA" *)
input wire [4 : 0] instubdata_nentries_1_V_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_1 DATA" *)
input wire [4 : 0] instubdata_nentries_1_V_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_2 DATA" *)
input wire [4 : 0] instubdata_nentries_1_V_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_3 DATA" *)
input wire [4 : 0] instubdata_nentries_1_V_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_4 DATA" *)
input wire [4 : 0] instubdata_nentries_1_V_4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_5 DATA" *)
input wire [4 : 0] instubdata_nentries_1_V_5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_6 DATA" *)
input wire [4 : 0] instubdata_nentries_1_V_6;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_1_V_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_1_V_7 DATA" *)
input wire [4 : 0] instubdata_nentries_1_V_7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_0 DATA" *)
input wire [4 : 0] instubdata_nentries_2_V_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_1 DATA" *)
input wire [4 : 0] instubdata_nentries_2_V_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_2 DATA" *)
input wire [4 : 0] instubdata_nentries_2_V_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_3 DATA" *)
input wire [4 : 0] instubdata_nentries_2_V_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_4 DATA" *)
input wire [4 : 0] instubdata_nentries_2_V_4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_5 DATA" *)
input wire [4 : 0] instubdata_nentries_2_V_5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_6 DATA" *)
input wire [4 : 0] instubdata_nentries_2_V_6;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_2_V_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_2_V_7 DATA" *)
input wire [4 : 0] instubdata_nentries_2_V_7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_0 DATA" *)
input wire [4 : 0] instubdata_nentries_3_V_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_1 DATA" *)
input wire [4 : 0] instubdata_nentries_3_V_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_2 DATA" *)
input wire [4 : 0] instubdata_nentries_3_V_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_3 DATA" *)
input wire [4 : 0] instubdata_nentries_3_V_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_4 DATA" *)
input wire [4 : 0] instubdata_nentries_3_V_4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_5 DATA" *)
input wire [4 : 0] instubdata_nentries_3_V_5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_6 DATA" *)
input wire [4 : 0] instubdata_nentries_3_V_6;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instubdata_nentries_3_V_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 instubdata_nentries_3_V_7 DATA" *)
input wire [4 : 0] instubdata_nentries_3_V_7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inprojdata_dataarray_data_V_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inprojdata_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] inprojdata_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inprojdata_dataarray_data_V_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 21} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minim\
um {} maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inprojdata_dataarray_data_V_q0 DATA" *)
input wire [20 : 0] inprojdata_dataarray_data_V_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inprojdata_nentries_0_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} ma\
ximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inprojdata_nentries_0_V DATA" *)
input wire [7 : 0] inprojdata_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inprojdata_nentries_1_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} ma\
ximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inprojdata_nentries_1_V DATA" *)
input wire [7 : 0] inprojdata_nentries_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outcandmatch_dataarray_data_V_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 outcandmatch_dataarray_data_V_address0 DATA" *)
output wire [7 : 0] outcandmatch_dataarray_data_V_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outcandmatch_dataarray_data_V_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool min\
imum {} maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 outcandmatch_dataarray_data_V_d0 DATA" *)
output wire [13 : 0] outcandmatch_dataarray_data_V_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outcandmatch_nentries_0_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 outcandmatch_nentries_0_V DATA" *)
output wire [7 : 0] outcandmatch_nentries_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outcandmatch_nentries_1_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} \
maximum {}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 outcandmatch_nentries_1_V DATA" *)
output wire [7 : 0] outcandmatch_nentries_1_V;

  MatchEngineTopL1 inst (
    .bx_o_V_ap_vld(bx_o_V_ap_vld),
    .instubdata_dataarray_data_V_ce0(instubdata_dataarray_data_V_ce0),
    .inprojdata_dataarray_data_V_ce0(inprojdata_dataarray_data_V_ce0),
    .outcandmatch_dataarray_data_V_ce0(outcandmatch_dataarray_data_V_ce0),
    .outcandmatch_dataarray_data_V_we0(outcandmatch_dataarray_data_V_we0),
    .outcandmatch_nentries_0_V_ap_vld(outcandmatch_nentries_0_V_ap_vld),
    .outcandmatch_nentries_1_V_ap_vld(outcandmatch_nentries_1_V_ap_vld),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .bx_V(bx_V),
    .bx_o_V(bx_o_V),
    .instubdata_dataarray_data_V_address0(instubdata_dataarray_data_V_address0),
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
    .inprojdata_dataarray_data_V_address0(inprojdata_dataarray_data_V_address0),
    .inprojdata_dataarray_data_V_q0(inprojdata_dataarray_data_V_q0),
    .inprojdata_nentries_0_V(inprojdata_nentries_0_V),
    .inprojdata_nentries_1_V(inprojdata_nentries_1_V),
    .outcandmatch_dataarray_data_V_address0(outcandmatch_dataarray_data_V_address0),
    .outcandmatch_dataarray_data_V_d0(outcandmatch_dataarray_data_V_d0),
    .outcandmatch_nentries_0_V(outcandmatch_nentries_0_V),
    .outcandmatch_nentries_1_V(outcandmatch_nentries_1_V)
  );
endmodule
