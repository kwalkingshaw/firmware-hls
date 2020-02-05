vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../ipstatic/hdl/verilog/MatchEngine_1_0_s.v" \
"../../../ipstatic/hdl/verilog/MatchEngine_1_0_sbkb.v" \
"../../../ipstatic/hdl/verilog/MatchEngineTopL1_cud.v" \
"../../../ipstatic/hdl/verilog/MatchEngineTopL1_dEe.v" \
"../../../ipstatic/hdl/verilog/MatchEngineTopL1.v" \
"../../../../PRME_Test.srcs/sources_1/ip/MatchEngineTopL1_1_1/sim/MatchEngineTopL1_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

