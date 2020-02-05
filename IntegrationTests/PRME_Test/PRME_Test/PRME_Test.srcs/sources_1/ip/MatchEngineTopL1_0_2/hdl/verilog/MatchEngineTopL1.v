// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="MatchEngineTopL1,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcvu7p-flvb2104-1-e,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.520238,HLS_SYN_LAT=107,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=546,HLS_SYN_LUT=5356,HLS_VERSION=2018_2}" *)

module MatchEngineTopL1 (
        ap_clk,
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
        outcandmatch_nentries_1_V_ap_vld
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [2:0] bx_V;
output  [2:0] bx_o_V;
output   bx_o_V_ap_vld;
output  [8:0] instubdata_dataarray_data_V_address0;
output   instubdata_dataarray_data_V_ce0;
input  [13:0] instubdata_dataarray_data_V_q0;
input  [4:0] instubdata_nentries_0_V_0;
input  [4:0] instubdata_nentries_0_V_1;
input  [4:0] instubdata_nentries_0_V_2;
input  [4:0] instubdata_nentries_0_V_3;
input  [4:0] instubdata_nentries_0_V_4;
input  [4:0] instubdata_nentries_0_V_5;
input  [4:0] instubdata_nentries_0_V_6;
input  [4:0] instubdata_nentries_0_V_7;
input  [4:0] instubdata_nentries_1_V_0;
input  [4:0] instubdata_nentries_1_V_1;
input  [4:0] instubdata_nentries_1_V_2;
input  [4:0] instubdata_nentries_1_V_3;
input  [4:0] instubdata_nentries_1_V_4;
input  [4:0] instubdata_nentries_1_V_5;
input  [4:0] instubdata_nentries_1_V_6;
input  [4:0] instubdata_nentries_1_V_7;
input  [4:0] instubdata_nentries_2_V_0;
input  [4:0] instubdata_nentries_2_V_1;
input  [4:0] instubdata_nentries_2_V_2;
input  [4:0] instubdata_nentries_2_V_3;
input  [4:0] instubdata_nentries_2_V_4;
input  [4:0] instubdata_nentries_2_V_5;
input  [4:0] instubdata_nentries_2_V_6;
input  [4:0] instubdata_nentries_2_V_7;
input  [4:0] instubdata_nentries_3_V_0;
input  [4:0] instubdata_nentries_3_V_1;
input  [4:0] instubdata_nentries_3_V_2;
input  [4:0] instubdata_nentries_3_V_3;
input  [4:0] instubdata_nentries_3_V_4;
input  [4:0] instubdata_nentries_3_V_5;
input  [4:0] instubdata_nentries_3_V_6;
input  [4:0] instubdata_nentries_3_V_7;
output  [7:0] inprojdata_dataarray_data_V_address0;
output   inprojdata_dataarray_data_V_ce0;
input  [20:0] inprojdata_dataarray_data_V_q0;
input  [7:0] inprojdata_nentries_0_V;
input  [7:0] inprojdata_nentries_1_V;
output  [7:0] outcandmatch_dataarray_data_V_address0;
output   outcandmatch_dataarray_data_V_ce0;
output   outcandmatch_dataarray_data_V_we0;
output  [13:0] outcandmatch_dataarray_data_V_d0;
output  [7:0] outcandmatch_nentries_0_V;
output   outcandmatch_nentries_0_V_ap_vld;
output  [7:0] outcandmatch_nentries_1_V;
output   outcandmatch_nentries_1_V_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg outcandmatch_nentries_0_V_ap_vld;
reg outcandmatch_nentries_1_V_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [2:0] bx_o_V_1_data_reg;
reg    bx_o_V_1_vld_reg;
wire    bx_o_V_1_vld_in;
reg    bx_o_V_1_ack_in;
wire    grp_MatchEngine_1_0_s_fu_332_ap_start;
wire    grp_MatchEngine_1_0_s_fu_332_ap_done;
wire    grp_MatchEngine_1_0_s_fu_332_ap_idle;
wire    grp_MatchEngine_1_0_s_fu_332_ap_ready;
wire   [2:0] grp_MatchEngine_1_0_s_fu_332_bx_o_V;
wire    grp_MatchEngine_1_0_s_fu_332_bx_o_V_ap_vld;
wire   [8:0] grp_MatchEngine_1_0_s_fu_332_instubdata_dataarray_data_V_address0;
wire    grp_MatchEngine_1_0_s_fu_332_instubdata_dataarray_data_V_ce0;
wire   [7:0] grp_MatchEngine_1_0_s_fu_332_inprojdata_dataarray_data_V_address0;
wire    grp_MatchEngine_1_0_s_fu_332_inprojdata_dataarray_data_V_ce0;
wire   [7:0] grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_address0;
wire    grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_ce0;
wire    grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_we0;
wire   [13:0] grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_d0;
wire   [7:0] grp_MatchEngine_1_0_s_fu_332_ap_return_0;
wire   [7:0] grp_MatchEngine_1_0_s_fu_332_ap_return_1;
reg    grp_MatchEngine_1_0_s_fu_332_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 bx_o_V_1_data_reg = 3'd0;
#0 bx_o_V_1_vld_reg = 1'b0;
#0 grp_MatchEngine_1_0_s_fu_332_ap_start_reg = 1'b0;
end

MatchEngine_1_0_s grp_MatchEngine_1_0_s_fu_332(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_MatchEngine_1_0_s_fu_332_ap_start),
    .ap_done(grp_MatchEngine_1_0_s_fu_332_ap_done),
    .ap_idle(grp_MatchEngine_1_0_s_fu_332_ap_idle),
    .ap_ready(grp_MatchEngine_1_0_s_fu_332_ap_ready),
    .bx_V(bx_V),
    .bx_o_V(grp_MatchEngine_1_0_s_fu_332_bx_o_V),
    .bx_o_V_ap_vld(grp_MatchEngine_1_0_s_fu_332_bx_o_V_ap_vld),
    .instubdata_dataarray_data_V_address0(grp_MatchEngine_1_0_s_fu_332_instubdata_dataarray_data_V_address0),
    .instubdata_dataarray_data_V_ce0(grp_MatchEngine_1_0_s_fu_332_instubdata_dataarray_data_V_ce0),
    .instubdata_dataarray_data_V_q0(instubdata_dataarray_data_V_q0),
    .instubdata_nentries_0_V_0_read(instubdata_nentries_0_V_0),
    .instubdata_nentries_0_V_1_read(instubdata_nentries_0_V_1),
    .instubdata_nentries_0_V_2_read(instubdata_nentries_0_V_2),
    .instubdata_nentries_0_V_3_read(instubdata_nentries_0_V_3),
    .instubdata_nentries_0_V_4_read(instubdata_nentries_0_V_4),
    .instubdata_nentries_0_V_5_read(instubdata_nentries_0_V_5),
    .instubdata_nentries_0_V_6_read(instubdata_nentries_0_V_6),
    .instubdata_nentries_0_V_7_read(instubdata_nentries_0_V_7),
    .instubdata_nentries_1_V_0_read(instubdata_nentries_1_V_0),
    .instubdata_nentries_1_V_1_read(instubdata_nentries_1_V_1),
    .instubdata_nentries_1_V_2_read(instubdata_nentries_1_V_2),
    .instubdata_nentries_1_V_3_read(instubdata_nentries_1_V_3),
    .instubdata_nentries_1_V_4_read(instubdata_nentries_1_V_4),
    .instubdata_nentries_1_V_5_read(instubdata_nentries_1_V_5),
    .instubdata_nentries_1_V_6_read(instubdata_nentries_1_V_6),
    .instubdata_nentries_1_V_7_read(instubdata_nentries_1_V_7),
    .instubdata_nentries_2_V_0_read(instubdata_nentries_2_V_0),
    .instubdata_nentries_2_V_1_read(instubdata_nentries_2_V_1),
    .instubdata_nentries_2_V_2_read(instubdata_nentries_2_V_2),
    .instubdata_nentries_2_V_3_read(instubdata_nentries_2_V_3),
    .instubdata_nentries_2_V_4_read(instubdata_nentries_2_V_4),
    .instubdata_nentries_2_V_5_read(instubdata_nentries_2_V_5),
    .instubdata_nentries_2_V_6_read(instubdata_nentries_2_V_6),
    .instubdata_nentries_2_V_7_read(instubdata_nentries_2_V_7),
    .instubdata_nentries_3_V_0_read(instubdata_nentries_3_V_0),
    .instubdata_nentries_3_V_1_read(instubdata_nentries_3_V_1),
    .instubdata_nentries_3_V_2_read(instubdata_nentries_3_V_2),
    .instubdata_nentries_3_V_3_read(instubdata_nentries_3_V_3),
    .instubdata_nentries_3_V_4_read(instubdata_nentries_3_V_4),
    .instubdata_nentries_3_V_5_read(instubdata_nentries_3_V_5),
    .instubdata_nentries_3_V_6_read(instubdata_nentries_3_V_6),
    .instubdata_nentries_3_V_7_read(instubdata_nentries_3_V_7),
    .inprojdata_dataarray_data_V_address0(grp_MatchEngine_1_0_s_fu_332_inprojdata_dataarray_data_V_address0),
    .inprojdata_dataarray_data_V_ce0(grp_MatchEngine_1_0_s_fu_332_inprojdata_dataarray_data_V_ce0),
    .inprojdata_dataarray_data_V_q0(inprojdata_dataarray_data_V_q0),
    .inprojdata_nentries_0_V_read(inprojdata_nentries_0_V),
    .inprojdata_nentries_1_V_read(inprojdata_nentries_1_V),
    .outcandmatch_dataarray_data_V_address0(grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_address0),
    .outcandmatch_dataarray_data_V_ce0(grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_ce0),
    .outcandmatch_dataarray_data_V_we0(grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_we0),
    .outcandmatch_dataarray_data_V_d0(grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_d0),
    .ap_return_0(grp_MatchEngine_1_0_s_fu_332_ap_return_0),
    .ap_return_1(grp_MatchEngine_1_0_s_fu_332_ap_return_1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_MatchEngine_1_0_s_fu_332_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_MatchEngine_1_0_s_fu_332_ap_start_reg <= 1'b1;
        end else if ((grp_MatchEngine_1_0_s_fu_332_ap_ready == 1'b1)) begin
            grp_MatchEngine_1_0_s_fu_332_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (bx_o_V_1_vld_reg == 1'b0) & (bx_o_V_1_vld_in == 1'b1))) begin
        bx_o_V_1_vld_reg <= 1'b1;
    end else if (((bx_o_V_1_vld_in == 1'b0) & (1'b1 == 1'b1) & (bx_o_V_1_vld_reg == 1'b1))) begin
        bx_o_V_1_vld_reg <= 1'b0;
    end
end

always @ (posedge ap_clk) begin
    if (((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (bx_o_V_1_vld_reg == 1'b0) & (bx_o_V_1_vld_in == 1'b1)) | (~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == 1'b1) & (bx_o_V_1_vld_in == 1'b1) & (bx_o_V_1_vld_reg == 1'b1)))) begin
        bx_o_V_1_data_reg <= grp_MatchEngine_1_0_s_fu_332_bx_o_V;
    end
end

always @ (*) begin
    if (((bx_o_V_1_ack_in == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((bx_o_V_1_ack_in == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((bx_o_V_1_vld_reg == 1'b0) | ((1'b1 == 1'b1) & (bx_o_V_1_vld_reg == 1'b1)))) begin
        bx_o_V_1_ack_in = 1'b1;
    end else begin
        bx_o_V_1_ack_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_MatchEngine_1_0_s_fu_332_ap_done == 1'b1))) begin
        outcandmatch_nentries_0_V_ap_vld = 1'b1;
    end else begin
        outcandmatch_nentries_0_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_MatchEngine_1_0_s_fu_332_ap_done == 1'b1))) begin
        outcandmatch_nentries_1_V_ap_vld = 1'b1;
    end else begin
        outcandmatch_nentries_1_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_MatchEngine_1_0_s_fu_332_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((bx_o_V_1_ack_in == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign bx_o_V = bx_o_V_1_data_reg;

assign bx_o_V_1_vld_in = grp_MatchEngine_1_0_s_fu_332_bx_o_V_ap_vld;

assign bx_o_V_ap_vld = bx_o_V_1_vld_reg;

assign grp_MatchEngine_1_0_s_fu_332_ap_start = grp_MatchEngine_1_0_s_fu_332_ap_start_reg;

assign inprojdata_dataarray_data_V_address0 = grp_MatchEngine_1_0_s_fu_332_inprojdata_dataarray_data_V_address0;

assign inprojdata_dataarray_data_V_ce0 = grp_MatchEngine_1_0_s_fu_332_inprojdata_dataarray_data_V_ce0;

assign instubdata_dataarray_data_V_address0 = grp_MatchEngine_1_0_s_fu_332_instubdata_dataarray_data_V_address0;

assign instubdata_dataarray_data_V_ce0 = grp_MatchEngine_1_0_s_fu_332_instubdata_dataarray_data_V_ce0;

assign outcandmatch_dataarray_data_V_address0 = grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_address0;

assign outcandmatch_dataarray_data_V_ce0 = grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_ce0;

assign outcandmatch_dataarray_data_V_d0 = grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_d0;

assign outcandmatch_dataarray_data_V_we0 = grp_MatchEngine_1_0_s_fu_332_outcandmatch_dataarray_data_V_we0;

assign outcandmatch_nentries_0_V = grp_MatchEngine_1_0_s_fu_332_ap_return_0;

assign outcandmatch_nentries_1_V = grp_MatchEngine_1_0_s_fu_332_ap_return_1;

endmodule //MatchEngineTopL1
