# File name: Proj_lib_Inverter_180nm_schematic.S.
# Subcircuit for cell: Inverter_180nm.
# Generated for: hspiceS.
# Generated on Nov 20 19:31:06 2014.

# terminal mapping: GD = GD
#                   In = In
#                   Out = Out
#                   VD = VD
.SUBCKT &1 GD In Out VD 
MP0 Out In VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-15 &
PD=2.52e-6 PS=2.52e-6 M=1 
MN0 Out In GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 



# End of subcircuit definition.
.ENDS &1
