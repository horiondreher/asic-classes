onerror {exit -code 1}
vlib work
vcom -work work Somador_Completin.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax Somador_Completin_vhd_vec_tst/i1=Somador_Completin_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Somador_Completin_vhd_vec_tst
vcd file -direction Somador_Completin.msim.vcd
vcd add -internal Somador_Completin_vhd_vec_tst/*
vcd add -internal Somador_Completin_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

