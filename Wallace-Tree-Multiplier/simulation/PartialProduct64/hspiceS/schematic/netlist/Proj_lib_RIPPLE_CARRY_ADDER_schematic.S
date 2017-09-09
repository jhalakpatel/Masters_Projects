# File name: Proj_lib_RIPPLE_CARRY_ADDER_schematic.S.
# Subcircuit for cell: RIPPLE_CARRY_ADDER.
# Generated for: hspiceS.
# Generated on Dec  5 18:39:56 2014.

# terminal mapping: C5 = C5
#                   C6 = C6
#                   C7 = C7
#                   C8 = C8
#                   C9 = C9
#                   C10 = C10
#                   C11 = C11
#                   C12 = C12
#                   C13 = C13
#                   C14 = C14
#                   C_IN = C_IN
#                   ERROR = ERROR
#                   GD = GD
#                   P5 = P5
#                   P6 = P6
#                   P7 = P7
#                   P8 = P8
#                   P9 = P9
#                   P10 = P10
#                   P11 = P11
#                   P12 = P12
#                   P13 = P13
#                   P14 = P14
#                   S_5 = S_5
#                   S_6 = S_6
#                   S_7 = S_7
#                   S_8 = S_8
#                   S_9 = S_9
#                   S_10 = S_10
#                   S_11 = S_11
#                   S_12 = S_12
#                   S_13 = S_13
#                   S_14 = S_14
#                   S_15 = S_15
#                   VD = VD
.SUBCKT &1 C5 C6 C7 C8 C9 C10 C11 C12 C13 C14 C_IN ERROR GD P5 P6 P7 P8 P9 &
P10 P11 P12 P13 P14 S_5 S_6 S_7 S_8 S_9 S_10 S_11 S_12 S_13 S_14 S_15 VD 
XI54 net35 C14 ERROR GD S_15 VD sub7 
XI55 C_IN P5 net44 GD S_5 VD sub7 
XI45 net44 C5 net59 P6 GD S_6 VD sub8 
XI46 net49 C10 net54 P11 GD S_11 VD sub8 
XI47 net54 C11 net84 P12 GD S_12 VD sub8 
XI48 net59 C6 net74 P7 GD S_7 VD sub8 
XI49 net64 C9 net49 P10 GD S_10 VD sub8 
XI50 net69 C8 net64 P9 GD S_9 VD sub8 
XI51 net74 C7 net69 P8 GD S_8 VD sub8 
XI52 net79 C13 net35 P14 GD S_14 VD sub8 
XI53 net84 C12 net79 P13 GD S_13 VD sub8 



# End of subcircuit definition.
.ENDS &1
