
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name prototip_1 -dir "/home/jigsaw/workspace/xilinx/_domaci/d1/prototip_1/planAhead_run_1" -part xc6slx45fgg676-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "prototip_1.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {prototip_1.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top prototip_1 $srcset
add_files [list {prototip_1.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45fgg676-2
