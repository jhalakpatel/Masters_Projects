set echo=4 psfflg=1 nodchr=1 artstr=1
FUNCTION dumeval@(x)=x
set @dummy=sdsfun(1205,"cdsSpice_M6","SIMNAME","hspice")
set @dummy=sdsfun(1205,"Artist","Version","5.1.0")
set @dummy=sdsfun(1205,"cdsSpice","artMarchFile",&
"/home/ecegrid/a/559mg3/cadence/simulation/FF_Positive_edge/hspiceS/schematic/marchFile")
set @dummy=sdsfun(1201,"/home/ecegrid/a/559mg3/cadence/simulation/FF_Positive_edge/hspiceS/schematic/netlist")
use /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS/rnfuncs
print
print "simBegin( )"
altqual off
altqual /home/ecegrid/a/559mg3/cadence/simulation/FF_Positive_edge/hspiceS/schematic/netlist /package/eda/cells/ncsu-cdk-1.5.1/local/models/hspice/public/ /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS
set @dummy=sdsfun(1040,"noCktReordering",1.0)
ptprop analog stimulusFile 1
sim FF_Positive_edge
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
sweep time from 0.0 to 60e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 47 )"
go hspice
print
print "commandNoSaveEnd( 47 )"
print
print "commandSaveBegin( 48 )"
print nogo
print "commandSaveEnd( 48 )"
#                          Welcome to cdsSpice 5.1         
#cdsSpice: 
# 
#simBegin( )
#commandNoSaveBegin( 47 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 1.31
###user 0.05
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 47 )
# 
#commandSaveBegin( 48 )
#  0.00000    
#commandSaveEnd( 48 )
altqual off
altqual /home/ecegrid/a/559mg3/cadence/simulation/FF_Positive_edge/hspiceS/schematic/netlist /package/eda/cells/ncsu-cdk-1.5.1/local/models/hspice/public/ /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS
set @dummy=sdsfun(1040,"noCktReordering",1.0)
ptprop analog stimulusFile 1
sim FF_Positive_edge
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
sweep time from 0.0 to 60e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 49 )"
go hspice
print
print "commandNoSaveEnd( 49 )"
print
print "commandSaveBegin( 50 )"
print nogo
print "commandSaveEnd( 50 )"
#commandNoSaveBegin( 49 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 1.84
###user 0.04
###sys 0.62
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 49 )
# 
#commandSaveBegin( 50 )
#  0.00000    
#commandSaveEnd( 50 )
altqual off
altqual /home/ecegrid/a/559mg3/cadence/simulation/FF_Positive_edge/hspiceS/schematic/netlist /package/eda/cells/ncsu-cdk-1.5.1/local/models/hspice/public/ /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS
set @dummy=sdsfun(1040,"noCktReordering",1.0)
ptprop analog stimulusFile 1
sim FF_Positive_edge
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
sweep time from 0.0 to 60e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 51 )"
go hspice
print
print "commandNoSaveEnd( 51 )"
print
print "commandSaveBegin( 52 )"
print nogo
print "commandSaveEnd( 52 )"
#commandNoSaveBegin( 51 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.73
###user 0.04
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 51 )
# 
#commandSaveBegin( 52 )
#  0.00000    
#commandSaveEnd( 52 )
altqual off
altqual /home/ecegrid/a/559mg3/cadence/simulation/FF_Positive_edge/hspiceS/schematic/netlist /package/eda/cells/ncsu-cdk-1.5.1/local/models/hspice/public/ /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS
set @dummy=sdsfun(1040,"noCktReordering",1.0)
ptprop analog stimulusFile 1
sim FF_Positive_edge
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
sweep time from 0.0 to 60e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 53 )"
go hspice
print
print "commandNoSaveEnd( 53 )"
print
print "commandSaveBegin( 54 )"
print nogo
print "commandSaveEnd( 54 )"
#commandNoSaveBegin( 53 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.89
###user 0.04
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 53 )
# 
#commandSaveBegin( 54 )
#  0.00000    
#commandSaveEnd( 54 )
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
sweep time from 0.0 to 60e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 55 )"
go hspice
print
print "commandNoSaveEnd( 55 )"
print
print "commandSaveBegin( 56 )"
print nogo
print "commandSaveEnd( 56 )"
#commandNoSaveBegin( 55 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 55 )
# 
#commandSaveBegin( 56 )
#  0.00000    
#commandSaveEnd( 56 )
###real 1.08
###user 0.04
###sys 0.01
altqual off
altqual /home/ecegrid/a/559mg3/cadence/simulation/FF_Positive_edge/hspiceS/schematic/netlist /package/eda/cells/ncsu-cdk-1.5.1/local/models/hspice/public/ /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS
set @dummy=sdsfun(1040,"noCktReordering",1.0)
ptprop analog stimulusFile 1
sim FF_Positive_edge
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
sweep time from 0.0 to 60e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 57 )"
go hspice
print
print "commandNoSaveEnd( 57 )"
print
print "commandSaveBegin( 58 )"
print nogo
print "commandSaveEnd( 58 )"
#commandNoSaveBegin( 57 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.55
###user 0.04
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 57 )
# 
#commandSaveBegin( 58 )
#  0.00000    
#commandSaveEnd( 58 )
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
