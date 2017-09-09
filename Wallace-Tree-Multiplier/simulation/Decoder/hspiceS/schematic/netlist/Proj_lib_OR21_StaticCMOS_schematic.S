# File name: Proj_lib_OR21_StaticCMOS_schematic.S.
# Subcircuit for cell: OR21_StaticCMOS.
# Generated for: hspiceS.
# Generated on Nov 20 21:12:51 2014.

# terminal mapping: A_IN = A_IN
#                   B_IN = B_IN
#                   GD = GD
#                   OUT_OR21 = OUT_OR21
#                   VD = VD
.SUBCKT &1 A_IN B_IN GD OUT_OR21 VD 
MN1 GD A_IN net045 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN0 net045 B_IN GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MP1 net045 B_IN net15 VD  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MP0 net15 A_IN VD VD  tsmc18dP  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
XI0 GD net045 OUT_OR21 VD sub1 



# End of subcircuit definition.
.ENDS &1
