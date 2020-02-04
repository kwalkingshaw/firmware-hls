vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../ipstatic/hdl/verilog/MatchEngine_3_0_s.v" \
"../../../ipstatic/hdl/verilog/MatchEngine_3_0_sbkb.v" \
"../../../ipstatic/hdl/verilog/MatchEngineTopL1_cud.v" \
"../../../ipstatic/hdl/verilog/MatchEngineTopL1_dEe.v" \
"../../../ipstatic/hdl/verilog/MatchEngineTopL1.v" \
"../../../../PRMEMC_Test.srcs/sources_1/ip/MatchEngineTopL3_0/sim/MatchEngineTopL3_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

