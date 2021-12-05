onerror {exit -code 1}
vlib work
vcom -work work GrayCode.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax GrayCode_vhd_vec_tst/i1=GrayCode_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.GrayCode_vhd_vec_tst
vcd file -direction GrayCode.msim.vcd
vcd add -internal GrayCode_vhd_vec_tst/*
vcd add -internal GrayCode_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
