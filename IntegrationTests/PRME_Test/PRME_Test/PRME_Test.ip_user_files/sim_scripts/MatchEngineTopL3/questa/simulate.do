onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MatchEngineTopL3_opt

do {wave.do}

view wave
view structure
view signals

do {MatchEngineTopL3.udo}

run -all

quit -force
