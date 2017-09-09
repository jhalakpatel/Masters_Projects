# File name: Proj_lib_XOR21_StaticCMOS_schematic.S.
# Subcircuit for cell: XOR21_StaticCMOS.
# Generated for: hspiceS.
# Generated on Dec  5 18:39:56 2014.

# terminal mapping: A_IN = A_IN
#                   B_IN = B_IN
#                   GD = GD
#                   OUT_XOR21 = OUT_XOR21
#                   VD = VD
.SUBCKT &1 A_IN B_IN GD OUT_XOR21 VD 
XI3 B_IN GD net044 VD sub1 
XI2 A_IN GD net23 VD sub1 
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



# End of subcircuit definition.
.ENDS &1
