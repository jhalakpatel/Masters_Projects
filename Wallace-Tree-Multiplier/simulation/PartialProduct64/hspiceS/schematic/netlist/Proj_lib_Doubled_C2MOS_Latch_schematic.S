# File name: Proj_lib_Doubled_C2MOS_Latch_schematic.S.
# Subcircuit for cell: Doubled_C2MOS_Latch.
# Generated for: hspiceS.
# Generated on Dec  5 18:39:56 2014.

# terminal mapping: D_in = D_in
#                   GD = GD
#                   Q_OUT = Q_OUT
#                   VD = VD
#                   clk = clk
.SUBCKT &1 D_in GD Q_OUT VD clk 
MN3 net13 net18 GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN2 Q_OUT clk net13 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN1 net14 D_in GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN0 net18 clk net14 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MP1 Q_OUT net18 VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP0 net18 D_in VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 



# End of subcircuit definition.
.ENDS &1
