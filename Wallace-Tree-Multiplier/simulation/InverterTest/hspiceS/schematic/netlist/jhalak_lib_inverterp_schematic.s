# File name: jhalak_lib_inverterp_schematic.s.
# Subcircuit for cell: inverterp.
# Generated for: hspiceS.
# Generated on Oct 18 21:13:12 2014.

# terminal mapping: In = In
#                   Out = Out
.SUBCKT &1 In Out 
MP0 Out In vdd! vdd!  tsmc25P  L=(&2) W=(&3) AD=((&3)*2.5)*300e-9 AS=((&3)*&
2.5)*300e-9 PD=2.0*(&3)+5.0*300e-9 PS=2.0*(&3)+5.0*300e-9 M=1 
MN0 Out In 0 0  tsmc25N  L=(&4) W=(&5) AD=((&5)*2.5)*300e-9 AS=((&5)*2.5)*&
300e-9 PD=2.0*(&5)+5.0*300e-9 PS=2.0*(&5)+5.0*300e-9 M=1 



# End of subcircuit definition.
.ENDS &1
