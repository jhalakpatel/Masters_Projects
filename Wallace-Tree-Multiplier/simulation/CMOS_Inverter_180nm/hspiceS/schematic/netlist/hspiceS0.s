set echo=4 psfflg=1 nodchr=1 artstr=1
FUNCTION dumeval@(x)=x
set @dummy=sdsfun(1205,"cdsSpice_M6","SIMNAME","hspice")
set @dummy=sdsfun(1205,"Artist","Version","5.1.0")
set @dummy=sdsfun(1205,"cdsSpice","artMarchFile",&
"/home/ecegrid/a/559mg3/cadence/simulation/CMOS_Inverter_180nm/hspiceS/schematic/marchFile")
set @dummy=sdsfun(1201,"/home/ecegrid/a/559mg3/cadence/simulation/CMOS_Inverter_180nm/hspiceS/schematic/netlist")
use /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS/rnfuncs
print
print "simBegin( )"
altqual off
altqual /home/ecegrid/a/559mg3/cadence/simulation/CMOS_Inverter_180nm/hspiceS/schematic/netlist /package/eda/cells/ncsu-cdk-1.5.1/local/models/hspice/public/ /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS
set @dummy=sdsfun(1040,"noCktReordering",1.0)
ptprop analog stimulusFile 1
sim CMOS_Inverter_180nm
ptprop Hspice_Opt ABSH 0
ptprop Hspice_Opt ABSI 1e-9
ptprop Hspice_Opt ABSMOS 1e-6
ptprop Hspice_Opt ABSVAR .5
ptprop Hspice_Opt ABSVDC 5e-5
ptprop Hspice_Opt ABSV 5e-5
deprop Hspice_Opt ACCT
ptprop Hspice_Opt ACCURA 0
deprop Hspice_Opt ACOUT
deprop Hspice_Opt ARTIST
ptprop Hspice_Opt ASPEC 0
ptprop Hspice_Opt AUTOST 0
ptprop Hspice_Opt BADCHR 0
ptprop Hspice_Opt BKPSZE 5000
ptprop Hspice_Opt BRIEF 0
deprop Hspice_Opt BYPASS
ptprop Hspice_Opt CAPTAB 0
ptprop Hspice_Opt CHGTOL 1e-15
ptprop Hspice_Opt CO 78
deprop Hspice_Opt CONVERGE
ptprop Hspice_Opt CPTIME 1e+7
ptprop Hspice_Opt CSDF 0
ptprop Hspice_Opt CSHDC 1e-12
ptprop Hspice_Opt CSHUNT 0
ptprop Hspice_Opt CVTOL .2
deprop Hspice_Opt DCAP
ptprop Hspice_Opt DCCAP 0
ptprop Hspice_Opt DCFOR 0
ptprop Hspice_Opt DCHOLD 1
deprop Hspice_Opt DCON
set DCOPPT=1
ptprop Hspice_Opt DCSTEP 0
ptprop Hspice_Opt DEFAD 0
ptprop Hspice_Opt DEFAS 0
ptprop Hspice_Opt DEFL 1e-4
ptprop Hspice_Opt DEFNRD 0
ptprop Hspice_Opt DEFNRS 0
ptprop Hspice_Opt DEFPD 0
ptprop Hspice_Opt DEFPS 0
ptprop Hspice_Opt DEFW 1e-4
ptprop Hspice_Opt DEFW 1e-4
ptprop Hspice_Opt DI 1e+2
ptprop Hspice_Opt DIAGNOSTIC 0
ptprop Hspice_Opt DOIRSCAL 0
ptprop Hspice_Opt DV 1e+3
deprop Hspice_Opt DVDT
ptprop Hspice_Opt DVTR 1e+3
ptprop Hspice_Opt EPSMIN 1e-28
ptprop Hspice_Opt EXPMAX 8e+1
ptprop Hspice_Opt FAST 0
ptprop Hspice_Opt FS 25e-2
ptprop Hspice_Opt FT 25e-2
ptprop Hspice_Opt GENK 1
ptprop Hspice_Opt GMIN 1e-12
ptprop Hspice_Opt GMAX 1e+2
ptprop Hspice_Opt GMINDC 1e-12
ptprop Hspice_Opt GRAMP 0
ptprop Hspice_Opt GSHUNT 0
ptprop Hspice_Opt H9007 0
deprop Hspice_Opt ICSWEEP
ptprop Hspice_Opt IMAX 8
ptprop Hspice_Opt IMIN 3
deprop Hspice_Opt INGOLD
ptprop Hspice_Opt INTERP 0
ptprop Hspice_Opt ITL1 2e+2
ptprop Hspice_Opt ITL2 5e+1
ptprop Hspice_Opt ITL5 0
ptprop Hspice_Opt ITRPRT 0
ptprop Hspice_Opt KCLTEST 0
ptprop Hspice_Opt KLIM 1e-2
ptprop Hspice_Opt K2LIM 0
ptprop Hspice_Opt LENNAM 8
ptprop Hspice_Opt LIMTIM 2.0
ptprop Hspice_Opt LIMPTS 2001
ptprop Hspice_Opt LIST 1
deprop Hspice_Opt LVLTIM
ptprop Hspice_Opt MAXAMP 0
deprop Hspice_Opt MAXORD
ptprop Hspice_Opt MBYPAS 1
deprop Hspice_Opt MEASDGT
ptprop Hspice_Opt MEASOUT 1
ptprop Hspice_Opt METHOD 1
ptprop Hspice_Opt MU .5
ptprop Hspice_Opt NEWTOL 0
ptprop Hspice_Opt NODE 0
ptprop Hspice_Opt NOELCK 0
ptprop Hspice_Opt NOMOD 0
ptprop Hspice_Opt NOPAGE 0
ptprop Hspice_Opt NOTOP 0
ptprop Hspice_Opt NOPIV 0
ptprop Hspice_Opt NOWARN 0
deprop Hspice_Opt NUMDGT
ptprop Hspice_Opt OFF 0
deprop Hspice_Opt OPTLST
ptprop Hspice_Opt OPTS 0
ptprop Hspice_Opt PARHIER 0
ptprop Hspice_Opt PATHNUM 0
deprop Hspice_Opt PIVOT
ptprop Hspice_Opt PIVREL 1e-4
ptprop Hspice_Opt PIVREF 1e8
ptprop Hspice_Opt PIVTOL 1e-15
deprop Hspice_Opt PLIM
deprop Hspice_Opt POST
deprop Hspice_Opt PSF
ptprop Hspice_Opt RELH 5e-2
ptprop Hspice_Opt RELI 1e-2
ptprop Hspice_Opt RELMOS 5e-2
ptprop Hspice_Opt RELQ 1e-2
ptprop Hspice_Opt RELVAR .30
ptprop Hspice_Opt RELVDC 1e-3
ptprop Hspice_Opt RELV 1e-3
ptprop Hspice_Opt RMAX 2
ptprop Hspice_Opt RMAXDC 1e+2
ptprop Hspice_Opt RESMIN 1e-5
ptprop Hspice_Opt RMIN 1e-9
ptprop Hspice_Opt SCALE 1
ptprop Hspice_Opt SCALM 1
deprop Hspice_Opt SDA
ptprop Hspice_Opt SPICE 0
deprop Hspice_Opt SPMESS
ptprop Hspice_Opt TIMRES 1E-12
set TEMPDC=25
ptprop Hspice_Opt TNOM 25
ptprop Hspice_Opt TRTOL 7
set UIC=0
ptprop Hspice_Opt UNWRAP 0
ptprop Hspice_Opt VFLOOR 0
ptprop Hspice_Opt WARNLIMIT 1
deprop Hspice_Opt WL
ptprop Hspice_Opt ABSTOL 1e-9
ptprop Hspice_Opt RELTOL 1e-3
deprop Hspice_Opt CDS
deprop Hspice_Opt DCTRAN
ptprop Hspice_Opt ITL3 3
ptprop Hspice_Opt ITL4 8
ptprop Hspice_Opt NXX 0
deprop Hspice_Opt SPARSE
ptprop Hspice_Opt VERIFY 0
ptprop Hspice_Opt VNTOL 5e-5
ptprop Hspice_Opt XMU 0.5
set WIDTHN=270e-9
set WIDTH=270e-9
set R=1.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 0 )"
go hspice
print
print "commandNoSaveEnd( 0 )"
print
print "commandSaveBegin( 1 )"
print nogo
print "commandSaveEnd( 1 )"
#                          Welcome to cdsSpice 5.1         
#cdsSpice: 
# 
#simBegin( )
#commandNoSaveBegin( 0 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 1.13
###user 0.03
###sys 0.10
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 0 )
# 
#commandSaveBegin( 1 )
#  0.00000    
#commandSaveEnd( 1 )
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 2 )"
go hspice
print
print "commandNoSaveEnd( 2 )"
print
print "commandSaveBegin( 3 )"
print nogo
print "commandSaveEnd( 3 )"
# INTERRUPT ...
#commandNoSaveBegin( 2 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.56
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 2 )
# 
#commandSaveBegin( 3 )
#  0.00000    
#commandSaveEnd( 3 )
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 4 )"
go hspice
print
print "commandNoSaveEnd( 4 )"
print
print "commandSaveBegin( 5 )"
print nogo
print "commandSaveEnd( 5 )"
#commandNoSaveBegin( 4 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.50
###user 0.04
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 4 )
# 
#commandSaveBegin( 5 )
#  0.00000    
#commandSaveEnd( 5 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=2.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 6 )"
go hspice
print
print "commandNoSaveEnd( 6 )"
print
print "commandSaveBegin( 7 )"
print nogo
print "commandSaveEnd( 7 )"
#commandNoSaveBegin( 6 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.51
###user 0.04
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 6 )
# 
#commandSaveBegin( 7 )
#  0.00000    
#commandSaveEnd( 7 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=3.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 8 )"
go hspice
print
print "commandNoSaveEnd( 8 )"
print
print "commandSaveBegin( 9 )"
print nogo
print "commandSaveEnd( 9 )"
#commandNoSaveBegin( 8 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.47
###user 0.03
###sys 0.06
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 8 )
# 
#commandSaveBegin( 9 )
#  0.00000    
#commandSaveEnd( 9 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=4.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 10 )"
go hspice
print
print "commandNoSaveEnd( 10 )"
print
print "commandSaveBegin( 11 )"
print nogo
print "commandSaveEnd( 11 )"
#commandNoSaveBegin( 10 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.43
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 10 )
# 
#commandSaveBegin( 11 )
#  0.00000    
#commandSaveEnd( 11 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=1.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 12 )"
go hspice
print
print "commandNoSaveEnd( 12 )"
print
print "commandSaveBegin( 13 )"
print nogo
print "commandSaveEnd( 13 )"
# INTERRUPT ...
#commandNoSaveBegin( 12 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.49
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 12 )
# 
#commandSaveBegin( 13 )
#  0.00000    
#commandSaveEnd( 13 )
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 14 )"
go hspice
print
print "commandNoSaveEnd( 14 )"
print
print "commandSaveBegin( 15 )"
print nogo
print "commandSaveEnd( 15 )"
#commandNoSaveBegin( 14 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.52
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 14 )
# 
#commandSaveBegin( 15 )
#  0.00000    
#commandSaveEnd( 15 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=2.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 16 )"
go hspice
print
print "commandNoSaveEnd( 16 )"
print
print "commandSaveBegin( 17 )"
print nogo
print "commandSaveEnd( 17 )"
#commandNoSaveBegin( 16 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.53
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 16 )
# 
#commandSaveBegin( 17 )
#  0.00000    
#commandSaveEnd( 17 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=3.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 18 )"
go hspice
print
print "commandNoSaveEnd( 18 )"
print
print "commandSaveBegin( 19 )"
print nogo
print "commandSaveEnd( 19 )"
#commandNoSaveBegin( 18 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.54
###user 0.04
###sys 0.06
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 18 )
# 
#commandSaveBegin( 19 )
#  0.00000    
#commandSaveEnd( 19 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=4.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 20 )"
go hspice
print
print "commandNoSaveEnd( 20 )"
print
print "commandSaveBegin( 21 )"
print nogo
print "commandSaveEnd( 21 )"
#commandNoSaveBegin( 20 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.53
###user 0.04
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 20 )
# 
#commandSaveBegin( 21 )
#  0.00000    
#commandSaveEnd( 21 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=5.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 22 )"
go hspice
print
print "commandNoSaveEnd( 22 )"
print
print "commandSaveBegin( 23 )"
print nogo
print "commandSaveEnd( 23 )"
#commandNoSaveBegin( 22 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.49
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 22 )
# 
#commandSaveBegin( 23 )
#  0.00000    
#commandSaveEnd( 23 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=4.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 24 )"
go hspice
print
print "commandNoSaveEnd( 24 )"
print
print "commandSaveBegin( 25 )"
print nogo
print "commandSaveEnd( 25 )"
# INTERRUPT ...
#commandNoSaveBegin( 24 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.44
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 24 )
# 
#commandSaveBegin( 25 )
#  0.00000    
#commandSaveEnd( 25 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=3.4
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 26 )"
go hspice
print
print "commandNoSaveEnd( 26 )"
print
print "commandSaveBegin( 27 )"
print nogo
print "commandSaveEnd( 27 )"
#commandNoSaveBegin( 26 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 26 )
# 
#commandSaveBegin( 27 )
#  0.00000    
#commandSaveEnd( 27 )
###real 0.54
###user 0.02
###sys 0.06
set WIDTHN=360e-9
set WIDTH=360e-9
set R=3.5
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 28 )"
go hspice
print
print "commandNoSaveEnd( 28 )"
print
print "commandSaveBegin( 29 )"
print nogo
print "commandSaveEnd( 29 )"
#commandNoSaveBegin( 28 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.46
###user 0.04
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 28 )
# 
#commandSaveBegin( 29 )
#  0.00000    
#commandSaveEnd( 29 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=3.3
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 30 )"
go hspice
print
print "commandNoSaveEnd( 30 )"
print
print "commandSaveBegin( 31 )"
print nogo
print "commandSaveEnd( 31 )"
#commandNoSaveBegin( 30 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.40
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 30 )
# 
#commandSaveBegin( 31 )
#  0.00000    
#commandSaveEnd( 31 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=3.6
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 32 )"
go hspice
print
print "commandNoSaveEnd( 32 )"
print
print "commandSaveBegin( 33 )"
print nogo
print "commandSaveEnd( 33 )"
#commandNoSaveBegin( 32 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.45
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 32 )
# 
#commandSaveBegin( 33 )
#  0.00000    
#commandSaveEnd( 33 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=3.2
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 34 )"
go hspice
print
print "commandNoSaveEnd( 34 )"
print
print "commandSaveBegin( 35 )"
print nogo
print "commandSaveEnd( 35 )"
#commandNoSaveBegin( 34 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 1.73
###user 0.03
###sys 0.91
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 34 )
# 
#commandSaveBegin( 35 )
#  0.00000    
#commandSaveEnd( 35 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=3.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 36 )"
go hspice
print
print "commandNoSaveEnd( 36 )"
print
print "commandSaveBegin( 37 )"
print nogo
print "commandSaveEnd( 37 )"
#commandNoSaveBegin( 36 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.52
###user 0.04
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 36 )
# 
#commandSaveBegin( 37 )
#  0.00000    
#commandSaveEnd( 37 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=3.1
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 38 )"
go hspice
print
print "commandNoSaveEnd( 38 )"
print
print "commandSaveBegin( 39 )"
print nogo
print "commandSaveEnd( 39 )"
#commandNoSaveBegin( 38 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 38 )
# 
#commandSaveBegin( 39 )
#  0.00000    
#commandSaveEnd( 39 )
###real 0.53
###user 0.04
###sys 0.04
set WIDTHN=360e-9
set WIDTH=360e-9
set R=3.125
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 40 )"
go hspice
print
print "commandNoSaveEnd( 40 )"
print
print "commandSaveBegin( 41 )"
print nogo
print "commandSaveEnd( 41 )"
#commandNoSaveBegin( 40 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.53
###user 0.04
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 40 )
# 
#commandSaveBegin( 41 )
#  0.00000    
#commandSaveEnd( 41 )
set WIDTHN=360e-9
set WIDTH=360e-9
set R=3.25
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 42 )"
go hspice
print
print "commandNoSaveEnd( 42 )"
print
print "commandSaveBegin( 43 )"
print nogo
print "commandSaveEnd( 43 )"
#commandNoSaveBegin( 42 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.43
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 42 )
# 
#commandSaveBegin( 43 )
#  0.00000    
#commandSaveEnd( 43 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=3.25
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 44 )"
go hspice
print
print "commandNoSaveEnd( 44 )"
print
print "commandSaveBegin( 45 )"
print nogo
print "commandSaveEnd( 45 )"
#commandNoSaveBegin( 44 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.49
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 44 )
# 
#commandSaveBegin( 45 )
#  0.00000    
#commandSaveEnd( 45 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=3.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 46 )"
go hspice
print
print "commandNoSaveEnd( 46 )"
print
print "commandSaveBegin( 47 )"
print nogo
print "commandSaveEnd( 47 )"
#commandNoSaveBegin( 46 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 2.18
###user 0.04
###sys 0.95
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 46 )
# 
#commandSaveBegin( 47 )
#  0.00000    
#commandSaveEnd( 47 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=3.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 48 )"
go hspice
print
print "commandNoSaveEnd( 48 )"
print
print "commandSaveBegin( 49 )"
print nogo
print "commandSaveEnd( 49 )"
# INTERRUPT ...
#commandNoSaveBegin( 48 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.72
###user 0.04
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 48 )
# 
#commandSaveBegin( 49 )
#  0.00000    
#commandSaveEnd( 49 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=4.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 50 )"
go hspice
print
print "commandNoSaveEnd( 50 )"
print
print "commandSaveBegin( 51 )"
print nogo
print "commandSaveEnd( 51 )"
#commandNoSaveBegin( 50 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.42
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 50 )
# 
#commandSaveBegin( 51 )
#  0.00000    
#commandSaveEnd( 51 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=5.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 52 )"
go hspice
print
print "commandNoSaveEnd( 52 )"
print
print "commandSaveBegin( 53 )"
print nogo
print "commandSaveEnd( 53 )"
#commandNoSaveBegin( 52 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.53
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 52 )
# 
#commandSaveBegin( 53 )
#  0.00000    
#commandSaveEnd( 53 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=3.389
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 54 )"
go hspice
print
print "commandNoSaveEnd( 54 )"
print
print "commandSaveBegin( 55 )"
print nogo
print "commandSaveEnd( 55 )"
# INTERRUPT ...
#commandNoSaveBegin( 54 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 1.50
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 54 )
# 
#commandSaveBegin( 55 )
#  0.00000    
#commandSaveEnd( 55 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=1.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 56 )"
go hspice
print
print "commandNoSaveEnd( 56 )"
print
print "commandSaveBegin( 57 )"
print nogo
print "commandSaveEnd( 57 )"
#commandNoSaveBegin( 56 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.47
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 56 )
# 
#commandSaveBegin( 57 )
#  0.00000    
#commandSaveEnd( 57 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=2.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 58 )"
go hspice
print
print "commandNoSaveEnd( 58 )"
print
print "commandSaveBegin( 59 )"
print nogo
print "commandSaveEnd( 59 )"
#commandNoSaveBegin( 58 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.45
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 58 )
# 
#commandSaveBegin( 59 )
#  0.00000    
#commandSaveEnd( 59 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=3.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 60 )"
go hspice
print
print "commandNoSaveEnd( 60 )"
print
print "commandSaveBegin( 61 )"
print nogo
print "commandSaveEnd( 61 )"
#commandNoSaveBegin( 60 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.58
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 60 )
# 
#commandSaveBegin( 61 )
#  0.00000    
#commandSaveEnd( 61 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=4.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 62 )"
go hspice
print
print "commandNoSaveEnd( 62 )"
print
print "commandSaveBegin( 63 )"
print nogo
print "commandSaveEnd( 63 )"
#commandNoSaveBegin( 62 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.54
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 62 )
# 
#commandSaveBegin( 63 )
#  0.00000    
#commandSaveEnd( 63 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=5.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 64 )"
go hspice
print
print "commandNoSaveEnd( 64 )"
print
print "commandSaveBegin( 65 )"
print nogo
print "commandSaveEnd( 65 )"
#commandNoSaveBegin( 64 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.45
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 64 )
# 
#commandSaveBegin( 65 )
#  0.00000    
#commandSaveEnd( 65 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=1.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 66 )"
go hspice
print
print "commandNoSaveEnd( 66 )"
print
print "commandSaveBegin( 67 )"
print nogo
print "commandSaveEnd( 67 )"
# INTERRUPT ...
#commandNoSaveBegin( 66 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.52
###user 0.02
###sys 0.06
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 66 )
# 
#commandSaveBegin( 67 )
#  0.00000    
#commandSaveEnd( 67 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=2.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 68 )"
go hspice
print
print "commandNoSaveEnd( 68 )"
print
print "commandSaveBegin( 69 )"
print nogo
print "commandSaveEnd( 69 )"
#commandNoSaveBegin( 68 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.37
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 68 )
# 
#commandSaveBegin( 69 )
#  0.00000    
#commandSaveEnd( 69 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=3.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 70 )"
go hspice
print
print "commandNoSaveEnd( 70 )"
print
print "commandSaveBegin( 71 )"
print nogo
print "commandSaveEnd( 71 )"
#commandNoSaveBegin( 70 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 70 )
# 
#commandSaveBegin( 71 )
#  0.00000    
#commandSaveEnd( 71 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=4.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 72 )"
go hspice
print
print "commandNoSaveEnd( 72 )"
print
print "commandSaveBegin( 73 )"
print nogo
print "commandSaveEnd( 73 )"
###real 0.47
###user 0.04
###sys 0.04
#commandNoSaveBegin( 72 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.51
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 72 )
# 
#commandSaveBegin( 73 )
#  0.00000    
#commandSaveEnd( 73 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=5.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 74 )"
go hspice
print
print "commandNoSaveEnd( 74 )"
print
print "commandSaveBegin( 75 )"
print nogo
print "commandSaveEnd( 75 )"
#commandNoSaveBegin( 74 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.46
###user 
###0.03
###sys 0.06
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 74 )
# 
#commandSaveBegin( 75 )
#  0.00000    
#commandSaveEnd( 75 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=1.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 76 )"
go hspice
print
print "commandNoSaveEnd( 76 )"
print
print "commandSaveBegin( 77 )"
print nogo
print "commandSaveEnd( 77 )"
# INTERRUPT ...
#commandNoSaveBegin( 76 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.39
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 76 )
# 
#commandSaveBegin( 77 )
#  0.00000    
#commandSaveEnd( 77 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=2.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 78 )"
go hspice
print
print "commandNoSaveEnd( 78 )"
print
print "commandSaveBegin( 79 )"
print nogo
print "commandSaveEnd( 79 )"
#commandNoSaveBegin( 78 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.50
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 78 )
# 
#commandSaveBegin( 79 )
#  0.00000    
#commandSaveEnd( 79 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=3.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 80 )"
go hspice
print
print "commandNoSaveEnd( 80 )"
print
print "commandSaveBegin( 81 )"
print nogo
print "commandSaveEnd( 81 )"
#commandNoSaveBegin( 80 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.38
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 80 )
# 
#commandSaveBegin( 81 )
#  0.00000    
#commandSaveEnd( 81 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=4.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 82 )"
go hspice
print
print "commandNoSaveEnd( 82 )"
print
print "commandSaveBegin( 83 )"
print nogo
print "commandSaveEnd( 83 )"
#commandNoSaveBegin( 82 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.45
###user 0.04
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 82 )
# 
#commandSaveBegin( 83 )
#  0.00000    
#commandSaveEnd( 83 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=5.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 84 )"
go hspice
print
print "commandNoSaveEnd( 84 )"
print
print "commandSaveBegin( 85 )"
print nogo
print "commandSaveEnd( 85 )"
#commandNoSaveBegin( 84 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.46
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 84 )
# 
#commandSaveBegin( 85 )
#  0.00000    
#commandSaveEnd( 85 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=2.9
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 86 )"
go hspice
print
print "commandNoSaveEnd( 86 )"
print
print "commandSaveBegin( 87 )"
print nogo
print "commandSaveEnd( 87 )"
# INTERRUPT ...
#commandNoSaveBegin( 86 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 1.67
###user 0.03
###sys 0.87
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 86 )
# 
#commandSaveBegin( 87 )
#  0.00000    
#commandSaveEnd( 87 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=1.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 88 )"
go hspice
print
print "commandNoSaveEnd( 88 )"
print
print "commandSaveBegin( 89 )"
print nogo
print "commandSaveEnd( 89 )"
#commandNoSaveBegin( 88 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.42
###user 0.03
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 88 )
# 
#commandSaveBegin( 89 )
#  0.00000    
#commandSaveEnd( 89 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=2.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 90 )"
go hspice
print
print "commandNoSaveEnd( 90 )"
print
print "commandSaveBegin( 91 )"
print nogo
print "commandSaveEnd( 91 )"
#commandNoSaveBegin( 90 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.42
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 90 )
# 
#commandSaveBegin( 91 )
#  0.00000    
#commandSaveEnd( 91 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=3.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 92 )"
go hspice
print
print "commandNoSaveEnd( 92 )"
print
print "commandSaveBegin( 93 )"
print nogo
print "commandSaveEnd( 93 )"
#commandNoSaveBegin( 92 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.46
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 92 )
# 
#commandSaveBegin( 93 )
#  0.00000    
#commandSaveEnd( 93 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=4.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 94 )"
go hspice
print
print "commandNoSaveEnd( 94 )"
print
print "commandSaveBegin( 95 )"
print nogo
print "commandSaveEnd( 95 )"
#commandNoSaveBegin( 94 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.41
###user 0.03
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 94 )
# 
#commandSaveBegin( 95 )
#  0.00000    
#commandSaveEnd( 95 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=5.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 96 )"
go hspice
print
print "commandNoSaveEnd( 96 )"
print
print "commandSaveBegin( 97 )"
print nogo
print "commandSaveEnd( 97 )"
#commandNoSaveBegin( 96 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.46
###u
###ser 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 96 )
# 
#commandSaveBegin( 97 )
#  0.00000    
#commandSaveEnd( 97 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=2.945
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 98 )"
go hspice
print
print "commandNoSaveEnd( 98 )"
print
print "commandSaveBegin( 99 )"
print nogo
print "commandSaveEnd( 99 )"
# INTERRUPT ...
#commandNoSaveBegin( 98 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.54
###user 0.04
###sys 0.04
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 98 )
# 
#commandSaveBegin( 99 )
#  0.00000    
#commandSaveEnd( 99 )
set WIDTHN=270e-9
set WIDTH=270e-9
set R=3.0
deprop analog ForceNodeFile
deprop analog libStmts
deprop analog NodeSetFile
deprop analog InitCondFile
restore off
trstore off
keep off
keep all
sweep off
noise off
sweep time from 0.0 to 30e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 100 )"
go hspice
print
print "commandNoSaveEnd( 100 )"
print
print "commandSaveBegin( 101 )"
print nogo
print "commandSaveEnd( 101 )"
#commandNoSaveBegin( 100 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.42
###user 0.03
###sys 0.05
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 100 )
# 
#commandSaveBegin( 101 )
#  0.00000    
#commandSaveEnd( 101 )
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
