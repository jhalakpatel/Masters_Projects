# File name: Proj_lib_AND21_StaticCMOS_schematic.S.
# Subcircuit for cell: AND21_StaticCMOS.
# Generated for: hspiceS.
# Generated on Nov  3 12:49:08 2014.

# terminal mapping: A_IN = A_IN
#                   B_IN = B_IN
#                   OUT_AND21 = OUT_AND21
.SUBCKT &1 A_IN B_IN OUT_AND21 
XI2 net18 OUT_AND21 sub1 
MN1 net6 B_IN 0 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN0 net18 A_IN net6 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MP1 vdd! B_IN net18 vdd!  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MP0 net18 A_IN vdd! vdd!  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 



# End of subcircuit definition.
.ENDS &1
