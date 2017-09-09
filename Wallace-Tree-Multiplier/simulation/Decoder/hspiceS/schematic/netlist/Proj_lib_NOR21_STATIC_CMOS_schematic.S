# File name: Proj_lib_NOR21_STATIC_CMOS_schematic.S.
# Subcircuit for cell: NOR21_STATIC_CMOS.
# Generated for: hspiceS.
# Generated on Nov 26 21:20:54 2014.

# terminal mapping: A_IN = A_IN
#                   B_IN = B_IN
#                   GD = GD
#                   OUT_OR21 = OUT_OR21
#                   VD = VD
.SUBCKT &1 A_IN B_IN GD OUT_OR21 VD 
MP0 net13 A_IN VD VD  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MP1 OUT_OR21 B_IN net13 VD  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MN0 OUT_OR21 B_IN GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MN1 GD A_IN OUT_OR21 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 



# End of subcircuit definition.
.ENDS &1
