* # File name: /home/ecegrid/a/559mg3/cadence/simulation/
# FULL_ADDER_32_STATIC_CMOS/hspiceS/schematic/netlist/
# FULL_ADDER_32_STATIC_CMOS.C.raw
# Netlist output for hspiceS.
# Generated on Nov 3 12:49:08 2014

# global net definitions
.GLOBAL vdd!
USE Proj_lib_FULL_ADDER_32_STATIC_CMOS_schematic

USE Proj_lib_HALF_ADDER_22_STATIC_CMOS_schematic sub5
USE Proj_lib_XOR21_StaticCMOS_schematic sub3
USE Proj_lib_OR21_StaticCMOS_schematic sub4
USE Proj_lib_Inverter_180nm_schematic sub1
USE Proj_lib_AND21_StaticCMOS_schematic sub2

USEM tsmc18dP tsmc18dP
USEM tsmc18dN tsmc18dN

# Include files






# End of Netlist
