
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2[
Gc:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/ip_repo2default:defaultZ19-1700h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2020.2/data/ip2default:defaultZ19-2313h px� 
�
Command: %s
53*	vivadotcl2n
Zsynth_design -top astar_design_astar_stream_0_0 -part xc7z020clg400-1 -mode out_of_context2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
82242default:defaultZ8-7075h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 1012.344 ; gain = 0.000
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys21
astar_design_astar_stream_0_02default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ip/astar_design_astar_stream_0_0/synth/astar_design_astar_stream_0_0.v2default:default2
572default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
axis_fifo_v1_02default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/hdl/astar_stream_v1_0.v2default:default2
122default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_AXIS_TDATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter W bound to: 20 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter H bound to: 20 - type: integer 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter IDLE bound to: 4'b0000 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter WAIT_0 bound to: 4'b0001 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter WRITE_O bound to: 4'b0010 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter WRITE_P bound to: 4'b0011 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter WRITE_C bound to: 4'b0100 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter READ_S bound to: 4'b0101 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter READ_E bound to: 4'b0110 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter READ_C bound to: 4'b0111 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter READ_M bound to: 4'b1000 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter WAIT_1 bound to: 4'b1001 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
	astar_rtl2default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/astar_rtl.sv2default:default2
122default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter W bound to: 20 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter H bound to: 20 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter param_x bound to: 256'b1111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111100000000000000000000000000000001111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000001 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter param_y bound to: 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter param_g bound to: 256'b0000000000000000000000000000111000000000000000000000000000001010000000000000000000000000000011100000000000000000000000000000101000000000000000000000000000001010000000000000000000000000000011100000000000000000000000000000101000000000000000000000000000001110 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter S1 bound to: 4'b0001 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter S2 bound to: 4'b0010 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter S3 bound to: 4'b0011 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter S4 bound to: 4'b0100 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter S5 bound to: 4'b0101 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter S6 bound to: 4'b0110 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter S7 bound to: 4'b0111 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter S8 bound to: 4'b1000 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter S9 bound to: 4'b1001 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2!
calc_children2default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6157h px� 
]
%s
*synth2E
1	Parameter param_x bound to: -1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_y bound to: -1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_g bound to: 14 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
calc_children2default:default2
 2default:default2
12default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
maze_children2default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/maze_children.v2default:default2
132default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter W bound to: 20 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter H bound to: 20 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
maze_children2default:default2
 2default:default2
22default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/maze_children.v2default:default2
132default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
validate_child2default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/validate_child.sv2default:default2
132default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
validate_child2default:default2
 2default:default2
32default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/validate_child.sv2default:default2
132default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
calc_children__parameterized02default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter param_x bound to: 0 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_y bound to: -1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_g bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
calc_children__parameterized02default:default2
 2default:default2
32default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
calc_children__parameterized12default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter param_x bound to: 1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_y bound to: -1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_g bound to: 14 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
calc_children__parameterized12default:default2
 2default:default2
32default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
calc_children__parameterized22default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6157h px� 
]
%s
*synth2E
1	Parameter param_x bound to: -1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter param_y bound to: 0 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_g bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
calc_children__parameterized22default:default2
 2default:default2
32default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
calc_children__parameterized32default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter param_x bound to: 1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter param_y bound to: 0 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_g bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
calc_children__parameterized32default:default2
 2default:default2
32default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
calc_children__parameterized42default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6157h px� 
]
%s
*synth2E
1	Parameter param_x bound to: -1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter param_y bound to: 1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_g bound to: 14 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
calc_children__parameterized42default:default2
 2default:default2
32default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
calc_children__parameterized52default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter param_x bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter param_y bound to: 1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_g bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
calc_children__parameterized52default:default2
 2default:default2
32default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
calc_children__parameterized62default:default2
 2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter param_x bound to: 1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter param_y bound to: 1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter param_g bound to: 14 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
calc_children__parameterized62default:default2
 2default:default2
32default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
122default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	astar_rtl2default:default2
 2default:default2
42default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/astar_rtl.sv2default:default2
122default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
axis_fifo_v1_02default:default2
 2default:default2
52default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/hdl/astar_stream_v1_0.v2default:default2
122default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
astar_design_astar_stream_0_02default:default2
 2default:default2
62default:default2
12default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ip/astar_design_astar_stream_0_0/synth/astar_design_astar_stream_0_0.v2default:default2
572default:default8@Z8-6155h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:43 ; elapsed = 00:00:52 . Memory (MB): peak = 1407.125 ; gain = 394.781
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:50 ; elapsed = 00:01:01 . Memory (MB): peak = 1407.125 ; gain = 394.781
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:50 ; elapsed = 00:01:01 . Memory (MB): peak = 1407.125 ; gain = 394.781
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:022default:default2
00:00:022default:default2
1407.1252default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0172default:default2
1457.9772default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:052default:default2
00:00:032default:default2
1495.4612default:default2
37.4842default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:01:23 ; elapsed = 00:01:35 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:01:23 ; elapsed = 00:01:35 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:23 ; elapsed = 00:01:35 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:02:02 ; elapsed = 00:02:42 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   33 Bit       Adders := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   14 Bit       Adders := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   13 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 22    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   12 Bit       Adders := 16    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    9 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               34 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               33 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               13 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 1645  
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 30    
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
j
%s
*synth2R
>	               8K Bit	(256 X 34 bit)          RAMs := 1     
2default:defaulth p
x
� 
i
%s
*synth2Q
=	              400 Bit	(20 X 20 bit)          RAMs := 4     
2default:defaulth p
x
� 
h
%s
*synth2P
<	               96 Bit	(8 X 12 bit)          RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input   34 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   34 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 12    
2default:defaulth p
x
� 
X
%s
*synth2@
,	  10 Input   32 Bit        Muxes := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input   24 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   20 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  10 Input   20 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input   13 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 42    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  10 Input   12 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 13    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 633   
2default:defaulth p
x
� 
X
%s
*synth2@
,	  10 Input    1 Bit        Muxes := 413   
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    1 Bit        Muxes := 14    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[1].calc_children_m/children_y_reg[11:0]2default:default2C
/genblk1[0].calc_children_m/children_y_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
302default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[2].calc_children_m/children_y_reg[11:0]2default:default2C
/genblk1[0].calc_children_m/children_y_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
302default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[2].calc_children_m/children_g_reg[11:0]2default:default2C
/genblk1[0].calc_children_m/children_g_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
312default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[3].calc_children_m/children_x_reg[11:0]2default:default2C
/genblk1[0].calc_children_m/children_x_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
292default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[3].calc_children_m/children_g_reg[11:0]2default:default2C
/genblk1[1].calc_children_m/children_g_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
312default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[4].calc_children_m/children_x_reg[11:0]2default:default2C
/genblk1[2].calc_children_m/children_x_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
292default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[4].calc_children_m/children_y_reg[11:0]2default:default2C
/genblk1[3].calc_children_m/children_y_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
302default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[4].calc_children_m/children_g_reg[11:0]2default:default2C
/genblk1[1].calc_children_m/children_g_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
312default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[5].calc_children_m/children_x_reg[11:0]2default:default2C
/genblk1[0].calc_children_m/children_x_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
292default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[5].calc_children_m/children_g_reg[11:0]2default:default2C
/genblk1[0].calc_children_m/children_g_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
312default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[6].calc_children_m/children_x_reg[11:0]2default:default2C
/genblk1[1].calc_children_m/children_x_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
292default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[6].calc_children_m/children_y_reg[11:0]2default:default2C
/genblk1[5].calc_children_m/children_y_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
302default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[6].calc_children_m/children_g_reg[11:0]2default:default2C
/genblk1[1].calc_children_m/children_g_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
312default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[7].calc_children_m/children_x_reg[11:0]2default:default2C
/genblk1[2].calc_children_m/children_x_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
292default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[7].calc_children_m/children_y_reg[11:0]2default:default2C
/genblk1[5].calc_children_m/children_y_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
302default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2C
/genblk1[7].calc_children_m/children_g_reg[11:0]2default:default2C
/genblk1[0].calc_children_m/children_g_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
312default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2?
+genblk1[4].calc_children_m/diff_y_reg[11:0]2default:default2?
+genblk1[3].calc_children_m/diff_y_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
332default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2?
+genblk1[6].calc_children_m/diff_x_reg[11:0]2default:default2?
+genblk1[1].calc_children_m/diff_x_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
322default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2?
+genblk1[1].calc_children_m/diff_y_reg[11:0]2default:default2?
+genblk1[0].calc_children_m/diff_y_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
332default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2?
+genblk1[2].calc_children_m/diff_y_reg[11:0]2default:default2?
+genblk1[0].calc_children_m/diff_y_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
332default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2?
+genblk1[3].calc_children_m/diff_x_reg[11:0]2default:default2?
+genblk1[0].calc_children_m/diff_x_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
322default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2?
+genblk1[4].calc_children_m/diff_x_reg[11:0]2default:default2?
+genblk1[2].calc_children_m/diff_x_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
322default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2?
+genblk1[5].calc_children_m/diff_x_reg[11:0]2default:default2?
+genblk1[0].calc_children_m/diff_x_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
322default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2?
+genblk1[6].calc_children_m/diff_y_reg[11:0]2default:default2?
+genblk1[5].calc_children_m/diff_y_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
332default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2?
+genblk1[7].calc_children_m/diff_x_reg[11:0]2default:default2?
+genblk1[2].calc_children_m/diff_x_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
322default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2?
+genblk1[7].calc_children_m/diff_y_reg[11:0]2default:default2?
+genblk1[5].calc_children_m/diff_y_reg[11:0]2default:default2�
�c:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.gen/sources_1/bd/astar_design/ipshared/1bc4/src/calc_children.sv2default:default2
332default:default8@Z8-4471h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[2].calc_children_m/children_x_reg_rep[0]2default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[2].calc_children_m/children_x_reg_rep[1]2default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[2].calc_children_m/children_x_reg_rep[2]2default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[2].calc_children_m/children_x_reg_rep[3]2default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[2].calc_children_m/children_x_reg_rep[4]2default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[1].calc_children_m/children_x_reg_rep[0]2default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[0]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[1].calc_children_m/children_x_reg_rep[1]2default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[1]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[1].calc_children_m/children_x_reg_rep[2]2default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[2]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[1].calc_children_m/children_x_reg_rep[3]2default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[3]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[1].calc_children_m/children_x_reg_rep[4]2default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[4]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[0].calc_children_m/children_x_reg_rep[0]2default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[0].calc_children_m/children_x_reg_rep[1]2default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[0].calc_children_m/children_x_reg_rep[2]2default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[0].calc_children_m/children_x_reg_rep[3]2default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0genblk1[0].calc_children_m/children_x_reg_rep[4]2default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__02default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__02default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__02default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__02default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__02default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__02default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__02default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__02default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__02default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__02default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__12default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__12default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__12default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__12default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__12default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[0]__02default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[0]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[1]__02default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[1]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[2]__02default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[2]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[3]__02default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[3]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[4]__02default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[4]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__12default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__12default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__12default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__12default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__12default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__42default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__42default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__42default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__42default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__42default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__52default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__32default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__52default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__32default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__52default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__32default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__52default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__32default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__52default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__32default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[0]__22default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[0]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[1]__22default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[1]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[2]__22default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[2]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[3]__22default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[3]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[4]__22default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[4]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[0]__32default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[0]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[1]__32default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[1]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[2]__32default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[2]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[3]__32default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[3]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[1].calc_children_m/children_x_reg_rep[4]__32default:default2
FDR2default:default2G
3genblk1[1].calc_children_m/children_x_reg_rep[4]__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__42default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__42default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__42default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__42default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__42default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__52default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__52default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__52default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__52default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__52default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__32default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__32default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__32default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__32default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__32default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__62default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__62default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__62default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__62default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__62default:default2
FDR2default:default2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__32default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__32default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__32default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__32default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__32default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__62default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__62default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[0]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__62default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[1]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__62default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[2]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__62default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[3]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__62default:default2
FDR2default:default2G
3genblk1[0].calc_children_m/children_x_reg_rep[4]__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__22default:default2
FDR2default:default2@
,genblk1[2].calc_children_m/children_x_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__22default:default2
FDR2default:default2@
,genblk1[2].calc_children_m/children_x_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__22default:default2
FDR2default:default2@
,genblk1[2].calc_children_m/children_x_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__22default:default2
FDR2default:default2@
,genblk1[2].calc_children_m/children_x_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__22default:default2
FDR2default:default2@
,genblk1[2].calc_children_m/children_x_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[0]__72default:default2
FDR2default:default2@
,genblk1[2].calc_children_m/children_x_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[1]__72default:default2
FDR2default:default2@
,genblk1[2].calc_children_m/children_x_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[2]__72default:default2
FDR2default:default2@
,genblk1[2].calc_children_m/children_x_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[3]__72default:default2
FDR2default:default2@
,genblk1[2].calc_children_m/children_x_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3genblk1[2].calc_children_m/children_x_reg_rep[4]__72default:default2
FDR2default:default2@
,genblk1[2].calc_children_m/children_x_reg[4]2default:defaultZ8-3886h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\state_reg[7] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:58 ; elapsed = 00:04:44 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px� 
�
%s*synth2�
s+------------------------------+----------------+-----------+----------------------+-----------------------------+
2default:defaulth px� 
�
%s*synth2�
t|Module Name                   | RTL Object     | Inference | Size (Depth x Width) | Primitives                  | 
2default:defaulth px� 
�
%s*synth2�
s+------------------------------+----------------+-----------+----------------------+-----------------------------+
2default:defaulth px� 
�
%s*synth2�
t|astar_rtl__GB0                | maze_reg       | Implied   | 32 x 20              | RAM32M x 32	                | 
2default:defaulth px� 
�
%s*synth2�
t|astar_rtl__GB0                | open_list_reg  | Implied   | 32 x 20              | RAM32M x 48	                | 
2default:defaulth px� 
�
%s*synth2�
t|astar_rtl__GB0                | path_reg       | Implied   | 32 x 20              | RAM32M x 8	                 | 
2default:defaulth px� 
�
%s*synth2�
t|astar_rtl__GB0                | close_list_reg | Implied   | 32 x 20              | RAM32M x 40	                | 
2default:defaulth px� 
�
%s*synth2�
t|astar_rtl__GB0                | children_h_reg | Implied   | 8 x 12               | RAM32M x 2	                 | 
2default:defaulth px� 
�
%s*synth2�
t|astar_design_astar_stream_0_0 | mem_reg        | Implied   | 256 x 34             | RAM64X1D x 12	RAM64M x 132	 | 
2default:defaulth px� 
�
%s*synth2�
t+------------------------------+----------------+-----------+----------------------+-----------------------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:03:13 ; elapsed = 00:05:01 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:03:18 ; elapsed = 00:05:08 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
� 
�
%s
*synth2�
s+------------------------------+----------------+-----------+----------------------+-----------------------------+
2default:defaulth p
x
� 
�
%s
*synth2�
t|Module Name                   | RTL Object     | Inference | Size (Depth x Width) | Primitives                  | 
2default:defaulth p
x
� 
�
%s
*synth2�
s+------------------------------+----------------+-----------+----------------------+-----------------------------+
2default:defaulth p
x
� 
�
%s
*synth2�
t|astar_rtl__GB0                | maze_reg       | Implied   | 32 x 20              | RAM32M x 32	                | 
2default:defaulth p
x
� 
�
%s
*synth2�
t|astar_rtl__GB0                | open_list_reg  | Implied   | 32 x 20              | RAM32M x 48	                | 
2default:defaulth p
x
� 
�
%s
*synth2�
t|astar_rtl__GB0                | path_reg       | Implied   | 32 x 20              | RAM32M x 8	                 | 
2default:defaulth p
x
� 
�
%s
*synth2�
t|astar_rtl__GB0                | close_list_reg | Implied   | 32 x 20              | RAM32M x 40	                | 
2default:defaulth p
x
� 
�
%s
*synth2�
t|astar_rtl__GB0                | children_h_reg | Implied   | 8 x 12               | RAM32M x 2	                 | 
2default:defaulth p
x
� 
�
%s
*synth2�
t|astar_design_astar_stream_0_0 | mem_reg        | Implied   | 256 x 34             | RAM64X1D x 12	RAM64M x 132	 | 
2default:defaulth p
x
� 
�
%s
*synth2�
t+------------------------------+----------------+-----------+----------------------+-----------------------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:03:27 ; elapsed = 00:05:45 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:03:42 ; elapsed = 00:06:02 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:03:42 ; elapsed = 00:06:03 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:45 ; elapsed = 00:06:06 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:03:46 ; elapsed = 00:06:06 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:03:47 ; elapsed = 00:06:08 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:03:48 ; elapsed = 00:06:09 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |CARRY4 |   184|
2default:defaulth px� 
D
%s*synth2,
|2     |LUT1   |   105|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT2   |   709|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT3   |   583|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT4   |   318|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT5   |  2109|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT6   |  9935|
2default:defaulth px� 
D
%s*synth2,
|8     |MUXF7  |  3518|
2default:defaulth px� 
D
%s*synth2,
|9     |MUXF8  |   477|
2default:defaulth px� 
D
%s*synth2,
|10    |RAM32M |    70|
2default:defaulth px� 
D
%s*synth2,
|11    |RAM64M |   132|
2default:defaulth px� 
D
%s*synth2,
|12    |FDRE   | 20017|
2default:defaulth px� 
D
%s*synth2,
|13    |FDSE   |    10|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:03:48 ; elapsed = 00:06:09 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:02:36 ; elapsed = 00:05:50 . Memory (MB): peak = 1495.461 ; gain = 394.781
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:03:48 ; elapsed = 00:06:11 . Memory (MB): peak = 1495.461 ; gain = 483.117
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2
00:00:012default:default2
1495.4612default:default2
0.0002default:defaultZ17-268h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
43812default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0212default:default2
1495.4612default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 202 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 70 instances
  RAM64M => RAM64M (RAMD64E(x4)): 132 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1722default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:04:102default:default2
00:06:392default:default2
1495.4612default:default2
483.1172default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�C:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.runs/astar_design_astar_stream_0_0_synth_1/astar_design_astar_stream_0_0.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:112default:default2
00:00:102default:default2
1495.4612default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
write_vhdl: 2default:default2
00:00:072default:default2
00:00:092default:default2
1495.4612default:default2
0.0002default:defaultZ17-268h px� 
�
'%s' is deprecated. %s
384*common2#
use_project_ipc2default:default2A
-This option is deprecated and no longer used.2default:defaultZ17-576h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl21
astar_design_astar_stream_0_02default:default2$
ff4263ddfc22f3e22default:defaultZ2-1648h px� 
Q
Renamed %s cell refs.
330*coretcl2
232default:defaultZ2-1174h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�C:/Users/dawid/SDUP/astar_pathfinder_co-processor_on_fpga/astar/astar.runs/astar_design_astar_stream_0_0_synth_1/astar_design_astar_stream_0_0.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:122default:default2
00:00:102default:default2
1495.4612default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file astar_design_astar_stream_0_0_utilization_synth.rpt -pb astar_design_astar_stream_0_0_utilization_synth.pb
2default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
write_vhdl: 2default:default2
00:00:082default:default2
00:00:082default:default2
1495.4612default:default2
0.0002default:defaultZ17-268h px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jun 21 13:24:20 20232default:defaultZ17-206h px� 


End Record