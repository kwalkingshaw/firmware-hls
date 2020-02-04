onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MatchEngineTopL3_0_opt

do {wave.do}

view wave
view structure
view signals

do {MatchEngineTopL3_0.udo}

run -all

quit -force
