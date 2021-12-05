onerror {exit -code 1}
vlib work
vcom -work work Multiplier.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax Multiplier_vhd_vec_tst/i1=Multiplier_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Multiplier_vhd_vec_tst
vcd file -direction Multiplier.msim.vcd
vcd add -internal Multiplier_vhd_vec_tst/*
vcd add -internal Multiplier_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

