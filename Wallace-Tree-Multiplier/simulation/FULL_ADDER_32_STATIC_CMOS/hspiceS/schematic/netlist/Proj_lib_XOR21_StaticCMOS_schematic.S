# File name: Proj_lib_XOR21_StaticCMOS_schematic.S.
# Subcircuit for cell: XOR21_StaticCMOS.
# Generated for: hspiceS.
# Generated on Nov  3 12:49:08 2014.

# terminal mapping: A_IN = A_IN
#                   B_IN = B_IN
#                   OUT_XOR21 = OUT_XOR21
.SUBCKT &1 A_IN B_IN OUT_XOR21 
XI3 B_IN net044 sub1 
XI2 A_IN net23 sub1 
MP0 net8 net23 vdd! vdd!  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MP1 OUT_XOR21 A_IN net8 vdd!  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MP2 net8 B_IN OUT_XOR21 vdd!  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MP3 vdd! net044 net8 vdd!  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MN3 0 B_IN net29 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN2 net29 A_IN OUT_XOR21 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MN1 net21 net23 0 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN0 OUT_XOR21 net044 net21 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 



# End of subcircuit definition.
.ENDS &1
