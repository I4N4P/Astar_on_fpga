# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\dawid\SDUP\astar_pathfinder_co-processor_on_fpga\astar\astar_hw_24\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\dawid\SDUP\astar_pathfinder_co-processor_on_fpga\astar\astar_hw_24\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {astar_hw_24}\
-hw {C:\Users\dawid\SDUP\astar_pathfinder_co-processor_on_fpga\astar\astar_design_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {C:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar}

platform write
platform generate -domains 
platform active {astar_hw_24}
platform generate
