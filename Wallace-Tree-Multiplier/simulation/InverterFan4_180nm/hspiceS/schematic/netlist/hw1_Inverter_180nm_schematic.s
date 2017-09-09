# File name: hw1_Inverter_180nm_schematic.s.
# Subcircuit for cell: Inverter_180nm.
# Generated for: hspiceS.
# Generated on Oct 30 21:35:50 2014.

# terminal mapping: In = In
#                   Out = Out
.SUBCKT &1 In Out 
MP0 Out In vdd! vdd!  tsmc18dP  L=180e-9 W=810e-9 AD=364.5e-15 AS=364.5e-&
15 PD=2.52e-6 PS=2.52e-6 M=1 
MN0 Out In 0 0  tsmc18dN  L=180e-9 W=270e-9 AD=121.5e-15 AS=121.5e-15 &
PD=1.44e-6 PS=1.44e-6 M=1 



# End of subcircuit definition.
.ENDS &1
