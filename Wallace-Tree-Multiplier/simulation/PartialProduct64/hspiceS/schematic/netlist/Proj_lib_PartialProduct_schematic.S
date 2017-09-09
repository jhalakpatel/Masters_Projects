# File name: Proj_lib_PartialProduct_schematic.S.
# Subcircuit for cell: PartialProduct.
# Generated for: hspiceS.
# Generated on Nov 30 19:44:01 2014.

# terminal mapping: A_0 = A_0
#                   A_1 = A_1
#                   A_2 = A_2
#                   A_3 = A_3
#                   A_4 = A_4
#                   A_5 = A_5
#                   A_6 = A_6
#                   A_7 = A_7
#                   B_i = B_i
#                   GD = GD
#                   PP_0 = PP_0
#                   PP_1 = PP_1
#                   PP_2 = PP_2
#                   PP_3 = PP_3
#                   PP_4 = PP_4
#                   PP_5 = PP_5
#                   PP_6 = PP_6
#                   PP_7 = PP_7
#                   VD = VD
.SUBCKT &1 A_0 A_1 A_2 A_3 A_4 A_5 A_6 A_7 B_i GD PP_0 PP_1 PP_2 PP_3 PP_4 &
PP_5 PP_6 PP_7 VD 
XI7 B_i A_5 GD PP_5 VD sub5 
XI6 B_i A_6 GD PP_6 VD sub5 
XI5 B_i A_7 GD PP_7 VD sub5 
XI4 B_i A_4 GD PP_4 VD sub5 
XI3 B_i A_3 GD PP_3 VD sub5 
XI2 B_i A_2 GD PP_2 VD sub5 
XI1 B_i A_1 GD PP_1 VD sub5 
XI0 B_i A_0 GD PP_0 VD sub5 



# End of subcircuit definition.
.ENDS &1
