
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name cbps02 -dir "/home/hk-47/workspace/xilinx/_domaci/d1/cbps02/planAhead_run_1" -part xc6slx45fgg676-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "cbps02.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {cbps02.vhf}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top cbps02 $srcset
add_files [list {cbps02.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45fgg676-2
