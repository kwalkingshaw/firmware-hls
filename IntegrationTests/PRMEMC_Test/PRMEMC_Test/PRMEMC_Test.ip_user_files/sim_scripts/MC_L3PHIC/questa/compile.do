vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../ipstatic/hdl/verilog/MatchCalculator.v" \
"../../../ipstatic/hdl/verilog/MatchCalculator_Lbkb.v" \
"../../../ipstatic/hdl/verilog/MatchCalculator_Lcud.v" \
"../../../ipstatic/hdl/verilog/MatchCalculatorTodEe.v" \
"../../../ipstatic/hdl/verilog/MatchCalculatorTop.v" \
"../../../../PRMEMC_Test.srcs/sources_1/ip/MC_L3PHIC/sim/MC_L3PHIC.v" \


vlog -work xil_defaultlib \
"glbl.v"

