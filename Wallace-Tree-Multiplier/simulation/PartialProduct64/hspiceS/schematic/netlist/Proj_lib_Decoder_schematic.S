# File name: Proj_lib_Decoder_schematic.S.
# Subcircuit for cell: Decoder.
# Generated for: hspiceS.
# Generated on Dec  5 18:39:56 2014.

# terminal mapping: GD = GD
#                   VD = VD
#                   c_in_1 = c_in_1
#                   c_in_2 = c_in_2
#                   c_in_3 = c_in_3
#                   clk = clk
#                   d_out = d_out
#                   p_in_1 = p_in_1
#                   p_in_2 = p_in_2
#                   p_in_3 = p_in_3
.SUBCKT &1 GD VD c_in_1 c_in_2 c_in_3 clk d_out p_in_1 p_in_2 p_in_3 
XI20 clk GD net048 VD sub1 
XI19 nand_out GD d_out VD net048 sub2 
XI17 d_out GD ff_out VD clk sub3 
XI6 ff_out and_out GD nand_out VD sub4 
XI4 net61 xor_3 GD and_out VD sub5 
XI3 xor_1 xor_2 GD net61 VD sub5 
XI2 c_in_1 p_in_1 GD xor_3 VD sub6 
XI1 c_in_2 p_in_2 GD xor_2 VD sub6 
XI0 c_in_3 p_in_3 GD xor_1 VD sub6 



# End of subcircuit definition.
.ENDS &1
