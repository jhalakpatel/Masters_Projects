# File name: Proj_lib_TSPC_FF_PositiveEdge_schematic.S.
# Subcircuit for cell: TSPC_FF_PositiveEdge.
# Generated for: hspiceS.
# Generated on Nov 30 19:09:20 2014.

# terminal mapping: D_IN = D_IN
#                   GD = GD
#                   Q_OUT = Q_OUT
#                   VD = VD
#                   clk = clk
.SUBCKT &1 D_IN GD Q_OUT VD clk 
MN6 Q_OUT net63 GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN5 net75 net79 GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN1 net71 D_IN GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN3 net67 clk GD GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN4 net63 clk net75 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN2 net79 net71 net67 GD  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 &
AS=121.5e-15 PD=1.44e-6 PS=1.44e-6 M=1 
MP4 Q_OUT net63 VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP0 net86 D_IN VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP5 net71 clk net86 VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP2 net63 net79 VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP1 net79 clk VD VD  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-15 &
PD=2.52e-6 PS=2.52e-6 M=1 



# End of subcircuit definition.
.ENDS &1
