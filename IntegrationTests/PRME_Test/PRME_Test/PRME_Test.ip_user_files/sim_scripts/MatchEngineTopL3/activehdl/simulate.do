onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+MatchEngineTopL3 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MatchEngineTopL3 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {MatchEngineTopL3.udo}

run -all

endsim

quit -force
