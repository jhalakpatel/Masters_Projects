# File name: Proj_lib_DFF_STATIC_CMOS_schematic.S.
# Subcircuit for cell: DFF_STATIC_CMOS.
# Generated for: hspiceS.
# Generated on Nov 26 21:40:11 2014.

# terminal mapping: CLK = CLK
#                   D_IN = D_IN
#                   GD = GD
#                   Q_OUT = Q_OUT
#                   VD = VD
.SUBCKT &1 CLK D_IN GD Q_OUT VD 
XI8 net040 net11 GD net17 VD sub1 
XI9 net044 net030 GD Q_OUT VD sub1 
XI10 Q_OUT net17 GD net030 VD sub1 
XI7 D_IN net040 GD net044 VD sub1 
XI6 CLK GD net040 VD sub2 
XI2 D_IN GD net11 VD sub2 



# End of subcircuit definition.
.ENDS &1
