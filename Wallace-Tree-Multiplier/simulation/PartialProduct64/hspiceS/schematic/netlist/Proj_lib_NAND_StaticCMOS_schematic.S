# File name: Proj_lib_NAND_StaticCMOS_schematic.S.
# Subcircuit for cell: NAND_StaticCMOS.
# Generated for: hspiceS.
# Generated on Dec  5 18:39:56 2014.

# terminal mapping: A_IN = A_IN
#                   B_IN = B_IN
#                   GD = GD
#                   OUT_NAND21 = OUT_NAND21
#                   VD = VD
.SUBCKT &1 A_IN B_IN GD OUT_NAND21 VD 
MP0 OUT_NAND21 A_IN VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 &
AS=364.5e-15 PD=2.52e-6 PS=2.52e-6 M=1 
MP1 VD B_IN OUT_NAND21 VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 &
AS=364.5e-15 PD=2.52e-6 PS=2.52e-6 M=1 
MN0 OUT_NAND21 A_IN net18 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MN1 net18 B_IN GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 



# End of subcircuit definition.
.ENDS &1
