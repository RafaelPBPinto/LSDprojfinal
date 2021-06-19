transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_2/TimerFSM.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_2/Fase2FSM.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_2/Sel_Tam_Garrafa_FSM.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_2/DebounceUnit.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_2/Display_Tam_Garrafa.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_2/Fase2.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_2/ClkDividerN.vhd}
vcom -93 -work work {C:/LSD/ProjFinal/LSDprojfinal/Fase_2/Display.vhd}

