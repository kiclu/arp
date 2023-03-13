onerror {exit -code 1}
vlib work
vlog -work work ARP.vo
vlog -work work 4clk_inst.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ARP_vlg_vec_tst -voptargs="+acc"
vcd file -direction ARP.msim.vcd
vcd add -internal ARP_vlg_vec_tst/*
vcd add -internal ARP_vlg_vec_tst/i1/*
run -all
quit -f
