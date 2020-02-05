onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+MatchEngineTopL1_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MatchEngineTopL1_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {MatchEngineTopL1_1.udo}

run -all

endsim

quit -force
