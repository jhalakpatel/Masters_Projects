set echo=4 psfflg=1 nodchr=1 artstr=1
FUNCTION dumeval@(x)=x
set @dummy=sdsfun(1205,"cdsSpice_M6","SIMNAME","hspice")
set @dummy=sdsfun(1205,"Artist","Version","5.1.0")
set @dummy=sdsfun(1205,"cdsSpice","artMarchFile",&
"/home/ecegrid/a/559mg3/cadence/simulation/InverterFan4_180nm/hspiceS/schematic/marchFile")
set @dummy=sdsfun(1201,"/home/ecegrid/a/559mg3/cadence/simulation/InverterFan4_180nm/hspiceS/schematic/netlist")
use /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS/rnfuncs
print
print "simBegin( )"
#                          Welcome to cdsSpice 5.1         
#cdsSpice: 
# 
#simBegin( )
print
print
print
print
print "simEnd( )"
# 
# 
# 
# 
#simEnd( )
quit
# Leaving cdsSpice ...
