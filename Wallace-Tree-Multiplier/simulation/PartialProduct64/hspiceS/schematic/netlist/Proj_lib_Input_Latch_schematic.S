# File name: Proj_lib_Input_Latch_schematic.S.
# Subcircuit for cell: Input_Latch.
# Generated for: hspiceS.
# Generated on Nov 30 19:44:00 2014.

# terminal mapping: A_0 = A_0
#                   A_1 = A_1
#                   A_2 = A_2
#                   A_3 = A_3
#                   A_4 = A_4
#                   A_5 = A_5
#                   A_6 = A_6
#                   A_7 = A_7
#                   B_0 = B_0
#                   B_1 = B_1
#                   B_2 = B_2
#                   B_3 = B_3
#                   B_4 = B_4
#                   B_5 = B_5
#                   B_6 = B_6
#                   B_7 = B_7
#                   GD = GD
#                   VD = VD
#                   clk = clk
#                   oA_0 = oA_0
#                   oA_1 = oA_1
#                   oA_2 = oA_2
#                   oA_3 = oA_3
#                   oA_4 = oA_4
#                   oA_5 = oA_5
#                   oA_6 = oA_6
#                   oA_7 = oA_7
#                   oB_0 = oB_0
#                   oB_1 = oB_1
#                   oB_2 = oB_2
#                   oB_3 = oB_3
#                   oB_4 = oB_4
#                   oB_5 = oB_5
#                   oB_6 = oB_6
#                   oB_7 = oB_7
.SUBCKT &1 A_0 A_1 A_2 A_3 A_4 A_5 A_6 A_7 B_0 B_1 B_2 B_3 B_4 B_5 B_6 B_7 &
GD VD clk oA_0 oA_1 oA_2 oA_3 oA_4 oA_5 oA_6 oA_7 oB_0 oB_1 oB_2 oB_3 oB_4 &
oB_5 oB_6 oB_7 
XI25 net172 GD clk_in_4 VD sub2 
XI24 net172 GD clk_in_3 VD sub2 
XI23 net172 GD clk_in_2 VD sub2 
XI22 net172 GD clk_in_1 VD sub2 
XI17 clk GD net172 VD sub2 
XI16 B_0 GD oB_0 VD clk_in_3 sub7 
XI15 B_1 GD oB_1 VD clk_in_3 sub7 
XI14 B_2 GD oB_2 VD clk_in_3 sub7 
XI13 B_3 GD oB_3 VD clk_in_3 sub7 
XI12 B_4 GD oB_4 VD clk_in_4 sub7 
XI11 B_5 GD oB_5 VD clk_in_4 sub7 
XI10 B_6 GD oB_6 VD clk_in_4 sub7 
XI9 B_7 GD oB_7 VD clk_in_4 sub7 
XI8 A_7 GD oA_7 VD clk_in_2 sub7 
XI7 A_6 GD oA_6 VD clk_in_2 sub7 
XI6 A_5 GD oA_5 VD clk_in_2 sub7 
XI5 A_4 GD oA_4 VD clk_in_2 sub7 
XI4 A_3 GD oA_3 VD clk_in_1 sub7 
XI3 A_2 GD oA_2 VD clk_in_1 sub7 
XI2 A_1 GD oA_1 VD clk_in_1 sub7 
XI0 A_0 GD oA_0 VD clk_in_1 sub7 



# End of subcircuit definition.
.ENDS &1
