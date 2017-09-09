# File name: Proj_lib_Decoder_schematic.S.
# Subcircuit for cell: Decoder.
# Generated for: hspiceS.
# Generated on Nov 26 21:40:11 2014.

XI15 clk nand_out GD d_out VD sub3 
XI7 d_out GD ff_out VD clk sub4 
XI6 and_out ff_out GD nand_out VD sub1 
XI4 net61 xor_3 GD and_out VD sub5 
XI3 xor_1 xor_2 GD net61 VD sub5 
XI2 p_in_3 c_in_3 GD xor_3 VD sub6 
XI1 p_in_2 c_in_2 GD xor_2 VD sub6 
XI0 p_in_1 c_in_1 GD xor_1 VD sub6 



