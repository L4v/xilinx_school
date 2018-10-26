
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name zad01 -dir "/home/jigsaw/workspace/xilinx/v02/zad01/planAhead_run_1" -part xc6slx45fgg676-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "zad01.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {zad01.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top zad01 $srcset
add_files [list {zad01.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45fgg676-2
