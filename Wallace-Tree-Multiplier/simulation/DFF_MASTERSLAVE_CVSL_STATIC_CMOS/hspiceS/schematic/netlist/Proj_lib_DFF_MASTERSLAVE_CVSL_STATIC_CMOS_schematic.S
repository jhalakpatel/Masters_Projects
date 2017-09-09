# File name: Proj_lib_DFF_MASTERSLAVE_CVSL_STATIC_CMOS_schematic.S.
# Subcircuit for cell: DFF_MASTERSLAVE_CVSL_STATIC_CMOS.
# Generated for: hspiceS.
# Generated on Nov  3 16:05:34 2014.

XI4 D_IN net84 sub1 
MN5 0 1 2 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN4 1 2 0 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN3 net74 D_IN 0 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN2 net112 CLK net74 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MN1 net82 net84 0 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 
MN0 net86 CLK net82 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-&
15 PD=1.44e-6 PS=1.44e-6 M=1 
MP10 1 CLK net090 vdd!  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP6 net112 net86 vdd! vdd!  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 &
AS=364.5e-15 PD=2.52e-6 PS=2.52e-6 M=1 
MP7 net105 net112 vdd! vdd!  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 &
AS=364.5e-15 PD=2.52e-6 PS=2.52e-6 M=1 
MP8 2 CLK net105 vdd!  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MP9 net090 net86 vdd! vdd!  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 &
AS=364.5e-15 PD=2.52e-6 PS=2.52e-6 M=1 
MP0 vdd! net112 net86 vdd!  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 &
AS=364.5e-15 PD=2.52e-6 PS=2.52e-6 M=1 



