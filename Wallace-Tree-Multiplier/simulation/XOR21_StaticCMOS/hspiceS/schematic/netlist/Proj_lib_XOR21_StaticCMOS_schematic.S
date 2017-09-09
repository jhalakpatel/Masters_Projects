# File name: Proj_lib_XOR21_StaticCMOS_schematic.S.
# Subcircuit for cell: XOR21_StaticCMOS.
# Generated for: hspiceS.
# Generated on Nov 20 19:31:06 2014.

XI3 GD B_IN net044 VD sub1 
XI2 GD A_IN net23 VD sub1 
MP0 net8 net23 VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP1 OUT_XOR21 A_IN net8 VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 &
AS=364.5e-15 PD=2.52e-6 PS=2.52e-6 M=1 
MP2 net8 B_IN OUT_XOR21 VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 &
AS=364.5e-15 PD=2.52e-6 PS=2.52e-6 M=1 
MP3 VD net044 net8 VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MN3 GD B_IN net29 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN2 net29 A_IN OUT_XOR21 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MN1 net21 net23 GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN0 OUT_XOR21 net044 net21 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 



