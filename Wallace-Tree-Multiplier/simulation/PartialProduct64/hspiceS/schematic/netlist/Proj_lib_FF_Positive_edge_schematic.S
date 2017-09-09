# File name: Proj_lib_FF_Positive_edge_schematic.S.
# Subcircuit for cell: FF_Positive_edge.
# Generated for: hspiceS.
# Generated on Nov 30 19:44:00 2014.

# terminal mapping: D_IN = D_IN
#                   GD = GD
#                   Q_OUT = Q_OUT
#                   VD = VD
#                   clk = clk
.SUBCKT &1 D_IN GD Q_OUT VD clk 
MP2 net34 net42 VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP1 net42 clk VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-15 &
PD=2.52e-6 PS=2.52e-6 M=1 
MP4 Q_OUT net34 VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP0 net50 D_IN VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP5 net46 clk net50 VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MN2 net42 net46 net38 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MN5 net30 net42 GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN1 net46 D_IN GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN3 net38 clk GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN4 net34 clk net30 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN6 Q_OUT net34 GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 



# End of subcircuit definition.
.ENDS &1
