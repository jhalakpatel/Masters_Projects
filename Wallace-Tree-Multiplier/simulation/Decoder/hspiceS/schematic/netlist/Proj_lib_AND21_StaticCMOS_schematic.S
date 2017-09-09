# File name: Proj_lib_AND21_StaticCMOS_schematic.S.
# Subcircuit for cell: AND21_StaticCMOS.
# Generated for: hspiceS.
# Generated on Nov 26 21:40:11 2014.

# terminal mapping: A_IN = A_IN
#                   B_IN = B_IN
#                   GD = GD
#                   OUT_AND21 = OUT_AND21
#                   VD = VD
.SUBCKT &1 A_IN B_IN GD OUT_AND21 VD 
MN2 OUT_AND21 net18 GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MN1 net6 B_IN GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN0 net18 A_IN net6 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MP2 OUT_AND21 net18 VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 &
AS=364.5e-15 PD=2.52e-6 PS=2.52e-6 M=1 
MP1 VD B_IN net18 VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP0 net18 A_IN VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 



# End of subcircuit definition.
.ENDS &1
