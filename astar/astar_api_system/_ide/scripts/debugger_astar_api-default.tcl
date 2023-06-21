# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\dawid\SDUP\astar_pathfinder_co-processor_on_fpga\astar\astar_api_system\_ide\scripts\debugger_astar_api-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\dawid\SDUP\astar_pathfinder_co-processor_on_fpga\astar\astar_api_system\_ide\scripts\debugger_astar_api-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Arty Z7 003017B7E9A2A" && level==0 && jtag_device_ctx=="jsn-Arty Z7-003017B7E9A2A-23727093-0"}
fpga -file C:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar_api/_ide/bitstream/astar_design_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar_HW/export/astar_HW/hw/astar_design_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar_api/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar_api/Debug/astar_api.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
