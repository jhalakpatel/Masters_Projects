# File name: Proj_lib_OR21_StaticCMOS_schematic.S.
# Subcircuit for cell: OR21_StaticCMOS.
# Generated for: hspiceS.
# Generated on Nov  3 12:49:08 2014.

# terminal mapping: A_IN = A_IN
#                   B_IN = B_IN
#                   OUT_OR21 = OUT_OR21
.SUBCKT &1 A_IN B_IN OUT_OR21 
MN1 0 A_IN net8 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN0 net8 B_IN 0 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MP1 net8 B_IN net15 vdd!  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MP0 net15 A_IN vdd! vdd!  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
XI0 net8 OUT_OR21 sub1 



# End of subcircuit definition.
.ENDS &1
