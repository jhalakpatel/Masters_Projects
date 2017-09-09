set echo=4 psfflg=1 nodchr=1 artstr=1
FUNCTION dumeval@(x)=x
set @dummy=sdsfun(1205,"cdsSpice_M6","SIMNAME","hspice")
set @dummy=sdsfun(1205,"Artist","Version","5.1.0")
set @dummy=sdsfun(1205,"cdsSpice","artMarchFile",&
"/home/ecegrid/a/559mg3/cadence/simulation/CMOS_NAND_180nm/hspiceS/schematic/marchFile")
set @dummy=sdsfun(1201,"/home/ecegrid/a/559mg3/cadence/simulation/CMOS_NAND_180nm/hspiceS/schematic/netlist")
use /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS/rnfuncs
print
print "simBegin( )"
altqual off
altqual /home/ecegrid/a/559mg3/cadence/simulation/CMOS_NAND_180nm/hspiceS/schematic/netlist /package/eda/cells/ncsu-cdk-1.5.1/local/models/hspice/public/ /package/eda/cadence/IC5141.151/tools.lnx86/dfII//etc/cdsSpice/dotS
set @dummy=sdsfun(1040,"noCktReordering",1.0)
ptprop analog stimulusFile 1
sim CMOS_NAND_180nm
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
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 143 )"
go hspice
print
print "commandNoSaveEnd( 143 )"
print
print "commandSaveBegin( 144 )"
print nogo
print "commandSaveEnd( 144 )"
#                          Welcome to cdsSpice 5.1         
#cdsSpice:  
#simBegin( )
#commandNoSaveBegin( 143 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.19
###use
###r 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 143 )
# 
#commandSaveBegin( 144 )
#  0.00000    
#commandSaveEnd( 144 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 145 )"
go hspice
print
print "commandNoSaveEnd( 145 )"
print
print "commandSaveBegin( 146 )"
print nogo
print "commandSaveEnd( 146 )"
#commandNoSaveBegin( 145 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 145 )
# 
#commandSaveBegin( 146 )
#  0.00000    
#commandSaveEnd( 146 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 147 )"
go hspice
print
print "commandNoSaveEnd( 147 )"
print
print "commandSaveBegin( 148 )"
print nogo
print "commandSaveEnd( 148 )"
#commandNoSaveBegin( 147 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 147 )
# 
#commandSaveBegin( 148 )
#  0.00000    
#commandSaveEnd( 148 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 149 )"
go hspice
print
print "commandNoSaveEnd( 149 )"
print
print "commandSaveBegin( 150 )"
print nogo
print "commandSaveEnd( 150 )"
#commandNoSaveBegin( 149 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 149 )
# 
#commandSaveBegin( 150 )
#  0.00000    
#commandSaveEnd( 150 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 151 )"
go hspice
print
print "commandNoSaveEnd( 151 )"
print
print "commandSaveBegin( 152 )"
print nogo
print "commandSaveEnd( 152 )"
#commandNoSaveBegin( 151 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 151 )
# 
#commandSaveBegin( 152 )
#  0.00000    
#commandSaveEnd( 152 )
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 153 )"
go hspice
print
print "commandNoSaveEnd( 153 )"
print
print "commandSaveBegin( 154 )"
print nogo
print "commandSaveEnd( 154 )"
# INTERRUPT ...
#commandNoSaveBegin( 153 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 153 )
# 
#commandSaveBegin( 154 )
#  0.00000    
#commandSaveEnd( 154 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 155 )"
go hspice
print
print "commandNoSaveEnd( 155 )"
print
print "commandSaveBegin( 156 )"
print nogo
print "commandSaveEnd( 156 )"
#commandNoSaveBegin( 155 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 155 )
# 
#commandSaveBegin( 156 )
#  0.00000    
#commandSaveEnd( 156 )
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 157 )"
go hspice
print
print "commandNoSaveEnd( 157 )"
print
print "commandSaveBegin( 158 )"
print nogo
print "commandSaveEnd( 158 )"
#commandNoSaveBegin( 157 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 157 )
# 
#commandSaveBegin( 158 )
#  0.00000    
#commandSaveEnd( 158 )
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 159 )"
go hspice
print
print "commandNoSaveEnd( 159 )"
print
print "commandSaveBegin( 160 )"
print nogo
print "commandSaveEnd( 160 )"
#commandNoSaveBegin( 159 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 159 )
# 
#commandSaveBegin( 160 )
#  0.00000    
#commandSaveEnd( 160 )
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 161 )"
go hspice
print
print "commandNoSaveEnd( 161 )"
print
print "commandSaveBegin( 162 )"
print nogo
print "commandSaveEnd( 162 )"
#commandNoSaveBegin( 161 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 161 )
# 
#commandSaveBegin( 162 )
#  0.00000    
#commandSaveEnd( 162 )
set @dummy=sdsfun(1040,"noCktReordering",1.0)
ptprop analog stimulusFile 1
sim CMOS_NAND_180nm
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
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 163 )"
go hspice
print
print "commandNoSaveEnd( 163 )"
print
print "commandSaveBegin( 164 )"
print nogo
print "commandSaveEnd( 164 )"
#commandNoSaveBegin( 163 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 163 )
# 
#commandSaveBegin( 164 )
#  0.00000    
#commandSaveEnd( 164 )
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 165 )"
go hspice
print
print "commandNoSaveEnd( 165 )"
print
print "commandSaveBegin( 166 )"
print nogo
print "commandSaveEnd( 166 )"
#commandNoSaveBegin( 165 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###u
###ser 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 165 )
# 
#commandSaveBegin( 166 )
#  0.00000    
#commandSaveEnd( 166 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 167 )"
go hspice
print
print "commandNoSaveEnd( 167 )"
print
print "commandSaveBegin( 168 )"
print nogo
print "commandSaveEnd( 168 )"
#commandNoSaveBegin( 167 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 167 )
# 
#commandSaveBegin( 168 )
#  0.00000    
#commandSaveEnd( 168 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 169 )"
go hspice
print
print "commandNoSaveEnd( 169 )"
print
print "commandSaveBegin( 170 )"
print nogo
print "commandSaveEnd( 170 )"
#commandNoSaveBegin( 169 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.20
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 169 )
# 
#commandSaveBegin( 170 )
#  0.00000    
#commandSaveEnd( 170 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 171 )"
go hspice
print
print "commandNoSaveEnd( 171 )"
print
print "commandSaveBegin( 172 )"
print nogo
print "commandSaveEnd( 172 )"
#commandNoSaveBegin( 171 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.19
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 171 )
# 
#commandSaveBegin( 172 )
#  0.00000    
#commandSaveEnd( 172 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 173 )"
go hspice
print
print "commandNoSaveEnd( 173 )"
print
print "commandSaveBegin( 174 )"
print nogo
print "commandSaveEnd( 174 )"
#commandNoSaveBegin( 173 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 173 )
# 
#commandSaveBegin( 174 )
#  0.00000    
#commandSaveEnd( 174 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 175 )"
go hspice
print
print "commandNoSaveEnd( 175 )"
print
print "commandSaveBegin( 176 )"
print nogo
print "commandSaveEnd( 176 )"
#commandNoSaveBegin( 175 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 175 )
# 
#commandSaveBegin( 176 )
#  0.00000    
#commandSaveEnd( 176 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=6.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 177 )"
go hspice
print
print "commandNoSaveEnd( 177 )"
print
print "commandSaveBegin( 178 )"
print nogo
print "commandSaveEnd( 178 )"
#commandNoSaveBegin( 177 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 177 )
# 
#commandSaveBegin( 178 )
#  0.00000    
#commandSaveEnd( 178 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=7.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 179 )"
go hspice
print
print "commandNoSaveEnd( 179 )"
print
print "commandSaveBegin( 180 )"
print nogo
print "commandSaveEnd( 180 )"
#commandNoSaveBegin( 179 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###u
###ser 0.01
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 179 )
# 
#commandSaveBegin( 180 )
#  0.00000    
#commandSaveEnd( 180 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=8.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 181 )"
go hspice
print
print "commandNoSaveEnd( 181 )"
print
print "commandSaveBegin( 182 )"
print nogo
print "commandSaveEnd( 182 )"
#commandNoSaveBegin( 181 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 181 )
# 
#commandSaveBegin( 182 )
#  0.00000    
#commandSaveEnd( 182 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=9.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 183 )"
go hspice
print
print "commandNoSaveEnd( 183 )"
print
print "commandSaveBegin( 184 )"
print nogo
print "commandSaveEnd( 184 )"
#commandNoSaveBegin( 183 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 183 )
# 
#commandSaveBegin( 184 )
#  0.00000    
#commandSaveEnd( 184 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=10.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 185 )"
go hspice
print
print "commandNoSaveEnd( 185 )"
print
print "commandSaveBegin( 186 )"
print nogo
print "commandSaveEnd( 186 )"
#commandNoSaveBegin( 185 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.19
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 185 )
# 
#commandSaveBegin( 186 )
#  0.00000    
#commandSaveEnd( 186 )
set WIDTHP=270e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 187 )"
go hspice
print
print "commandNoSaveEnd( 187 )"
print
print "commandSaveBegin( 188 )"
print nogo
print "commandSaveEnd( 188 )"
# INTERRUPT ...
#commandNoSaveBegin( 187 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 187 )
# 
#commandSaveBegin( 188 )
#  0.00000    
#commandSaveEnd( 188 )
set WIDTHP=270e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 189 )"
go hspice
print
print "commandNoSaveEnd( 189 )"
print
print "commandSaveBegin( 190 )"
print nogo
print "commandSaveEnd( 190 )"
#commandNoSaveBegin( 189 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###user 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 189 )
# 
#commandSaveBegin( 190 )
#  0.00000    
#commandSaveEnd( 190 )
set WIDTHP=270e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 191 )"
go hspice
print
print "commandNoSaveEnd( 191 )"
print
print "commandSaveBegin( 192 )"
print nogo
print "commandSaveEnd( 192 )"
#commandNoSaveBegin( 191 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 191 )
# 
#commandSaveBegin( 192 )
#  0.00000    
#commandSaveEnd( 192 )
set WIDTHP=270e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 193 )"
go hspice
print
print "commandNoSaveEnd( 193 )"
print
print "commandSaveBegin( 194 )"
print nogo
print "commandSaveEnd( 194 )"
#commandNoSaveBegin( 193 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###use
###r 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 193 )
# 
#commandSaveBegin( 194 )
#  0.00000    
#commandSaveEnd( 194 )
set WIDTHP=270e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 195 )"
go hspice
print
print "commandNoSaveEnd( 195 )"
print
print "commandSaveBegin( 196 )"
print nogo
print "commandSaveEnd( 196 )"
#commandNoSaveBegin( 195 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 195 )
# 
#commandSaveBegin( 196 )
#  0.00000    
#commandSaveEnd( 196 )
set WIDTHP=270e-9
set WIDTHN=360e-9
set R=6.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 197 )"
go hspice
print
print "commandNoSaveEnd( 197 )"
print
print "commandSaveBegin( 198 )"
print nogo
print "commandSaveEnd( 198 )"
#commandNoSaveBegin( 197 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###user 
###0.01
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 197 )
# 
#commandSaveBegin( 198 )
#  0.00000    
#commandSaveEnd( 198 )
set WIDTHP=270e-9
set WIDTHN=360e-9
set R=7.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 199 )"
go hspice
print
print "commandNoSaveEnd( 199 )"
print
print "commandSaveBegin( 200 )"
print nogo
print "commandSaveEnd( 200 )"
#commandNoSaveBegin( 199 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.21
###u
###ser 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 199 )
# 
#commandSaveBegin( 200 )
#  0.00000    
#commandSaveEnd( 200 )
set WIDTHP=270e-9
set WIDTHN=360e-9
set R=8.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 201 )"
go hspice
print
print "commandNoSaveEnd( 201 )"
print
print "commandSaveBegin( 202 )"
print nogo
print "commandSaveEnd( 202 )"
#commandNoSaveBegin( 201 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.21
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 201 )
# 
#commandSaveBegin( 202 )
#  0.00000    
#commandSaveEnd( 202 )
set WIDTHP=270e-9
set WIDTHN=360e-9
set R=9.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 203 )"
go hspice
print
print "commandNoSaveEnd( 203 )"
print
print "commandSaveBegin( 204 )"
print nogo
print "commandSaveEnd( 204 )"
#commandNoSaveBegin( 203 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.21
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 203 )
# 
#commandSaveBegin( 204 )
#  0.00000    
#commandSaveEnd( 204 )
set WIDTHP=270e-9
set WIDTHN=360e-9
set R=10.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 205 )"
go hspice
print
print "commandNoSaveEnd( 205 )"
print
print "commandSaveBegin( 206 )"
print nogo
print "commandSaveEnd( 206 )"
#commandNoSaveBegin( 205 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 205 )
# 
#commandSaveBegin( 206 )
#  0.00000    
#commandSaveEnd( 206 )
set WIDTHP=270e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 207 )"
go hspice
print
print "commandNoSaveEnd( 207 )"
print
print "commandSaveBegin( 208 )"
print nogo
print "commandSaveEnd( 208 )"
# INTERRUPT ...
#commandNoSaveBegin( 207 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.01
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 207 )
# 
#commandSaveBegin( 208 )
#  0.00000    
#commandSaveEnd( 208 )
set WIDTHP=270e-9
set WIDTHN=540e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 209 )"
go hspice
print
print "commandNoSaveEnd( 209 )"
print
print "commandSaveBegin( 210 )"
print nogo
print "commandSaveEnd( 210 )"
#commandNoSaveBegin( 209 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 209 )
# 
#commandSaveBegin( 210 )
#  0.00000    
#commandSaveEnd( 210 )
set WIDTHP=270e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 211 )"
go hspice
print
print "commandNoSaveEnd( 211 )"
print
print "commandSaveBegin( 212 )"
print nogo
print "commandSaveEnd( 212 )"
#commandNoSaveBegin( 211 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###use
###r 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 211 )
# 
#commandSaveBegin( 212 )
#  0.00000    
#commandSaveEnd( 212 )
set WIDTHP=360e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 213 )"
go hspice
print
print "commandNoSaveEnd( 213 )"
print
print "commandSaveBegin( 214 )"
print nogo
print "commandSaveEnd( 214 )"
#commandNoSaveBegin( 213 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 213 )
# 
#commandSaveBegin( 214 )
#  0.00000    
#commandSaveEnd( 214 )
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 215 )"
go hspice
print
print "commandNoSaveEnd( 215 )"
print
print "commandSaveBegin( 216 )"
print nogo
print "commandSaveEnd( 216 )"
#commandNoSaveBegin( 215 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 215 )
# 
#commandSaveBegin( 216 )
#  0.00000    
#commandSaveEnd( 216 )
set WIDTHP=360e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 217 )"
go hspice
print
print "commandNoSaveEnd( 217 )"
print
print "commandSaveBegin( 218 )"
print nogo
print "commandSaveEnd( 218 )"
#commandNoSaveBegin( 217 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 217 )
# 
#commandSaveBegin( 218 )
#  0.00000    
#commandSaveEnd( 218 )
set WIDTHP=360e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 219 )"
go hspice
print
print "commandNoSaveEnd( 219 )"
print
print "commandSaveBegin( 220 )"
print nogo
print "commandSaveEnd( 220 )"
#commandNoSaveBegin( 219 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 219 )
# 
#commandSaveBegin( 220 )
#  0.00000    
#commandSaveEnd( 220 )
set WIDTHP=360e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 221 )"
go hspice
print
print "commandNoSaveEnd( 221 )"
print
print "commandSaveBegin( 222 )"
print nogo
print "commandSaveEnd( 222 )"
#commandNoSaveBegin( 221 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 221 )
# 
#commandSaveBegin( 222 )
#  0.00000    
#commandSaveEnd( 222 )
set WIDTHP=360e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 223 )"
go hspice
print
print "commandNoSaveEnd( 223 )"
print
print "commandSaveBegin( 224 )"
print nogo
print "commandSaveEnd( 224 )"
#commandNoSaveBegin( 223 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 223 )
# 
#commandSaveBegin( 224 )
#  0.00000    
#commandSaveEnd( 224 )
set WIDTHP=360e-9
set WIDTHN=360e-9
set R=6.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 225 )"
go hspice
print
print "commandNoSaveEnd( 225 )"
print
print "commandSaveBegin( 226 )"
print nogo
print "commandSaveEnd( 226 )"
#commandNoSaveBegin( 225 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###use
###r 0.04
###sys 0.00
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 225 )
# 
#commandSaveBegin( 226 )
#  0.00000    
#commandSaveEnd( 226 )
set WIDTHP=360e-9
set WIDTHN=360e-9
set R=7.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 227 )"
go hspice
print
print "commandNoSaveEnd( 227 )"
print
print "commandSaveBegin( 228 )"
print nogo
print "commandSaveEnd( 228 )"
#commandNoSaveBegin( 227 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 227 )
# 
#commandSaveBegin( 228 )
#  0.00000    
#commandSaveEnd( 228 )
set WIDTHP=360e-9
set WIDTHN=360e-9
set R=8.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 229 )"
go hspice
print
print "commandNoSaveEnd( 229 )"
print
print "commandSaveBegin( 230 )"
print nogo
print "commandSaveEnd( 230 )"
#commandNoSaveBegin( 229 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.20
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 229 )
# 
#commandSaveBegin( 230 )
#  0.00000    
#commandSaveEnd( 230 )
set WIDTHP=360e-9
set WIDTHN=360e-9
set R=9.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 231 )"
go hspice
print
print "commandNoSaveEnd( 231 )"
print
print "commandSaveBegin( 232 )"
print nogo
print "commandSaveEnd( 232 )"
#commandNoSaveBegin( 231 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.19
###user 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 231 )
# 
#commandSaveBegin( 232 )
#  0.00000    
#commandSaveEnd( 232 )
set WIDTHP=360e-9
set WIDTHN=360e-9
set R=10.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 233 )"
go hspice
print
print "commandNoSaveEnd( 233 )"
print
print "commandSaveBegin( 234 )"
print nogo
print "commandSaveEnd( 234 )"
#commandNoSaveBegin( 233 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 233 )
# 
#commandSaveBegin( 234 )
#  0.00000    
#commandSaveEnd( 234 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 235 )"
go hspice
print
print "commandNoSaveEnd( 235 )"
print
print "commandSaveBegin( 236 )"
print nogo
print "commandSaveEnd( 236 )"
# INTERRUPT ...
#commandNoSaveBegin( 235 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.19
###user 
###0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 235 )
# 
#commandSaveBegin( 236 )
#  0.00000    
#commandSaveEnd( 236 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 237 )"
go hspice
print
print "commandNoSaveEnd( 237 )"
print
print "commandSaveBegin( 238 )"
print nogo
print "commandSaveEnd( 238 )"
#commandNoSaveBegin( 237 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 237 )
# 
#commandSaveBegin( 238 )
#  0.00000    
#commandSaveEnd( 238 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 239 )"
go hspice
print
print "commandNoSaveEnd( 239 )"
print
print "commandSaveBegin( 240 )"
print nogo
print "commandSaveEnd( 240 )"
#commandNoSaveBegin( 239 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 239 )
# 
#commandSaveBegin( 240 )
#  0.00000    
#commandSaveEnd( 240 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 241 )"
go hspice
print
print "commandNoSaveEnd( 241 )"
print
print "commandSaveBegin( 242 )"
print nogo
print "commandSaveEnd( 242 )"
#commandNoSaveBegin( 241 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 241 )
# 
#commandSaveBegin( 242 )
#  0.00000    
#commandSaveEnd( 242 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 243 )"
go hspice
print
print "commandNoSaveEnd( 243 )"
print
print "commandSaveBegin( 244 )"
print nogo
print "commandSaveEnd( 244 )"
#commandNoSaveBegin( 243 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 243 )
# 
#commandSaveBegin( 244 )
#  0.00000    
#commandSaveEnd( 244 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=6.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 245 )"
go hspice
print
print "commandNoSaveEnd( 245 )"
print
print "commandSaveBegin( 246 )"
print nogo
print "commandSaveEnd( 246 )"
#commandNoSaveBegin( 245 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###user 
###0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 245 )
# 
#commandSaveBegin( 246 )
#  0.00000    
#commandSaveEnd( 246 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=7.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 247 )"
go hspice
print
print "commandNoSaveEnd( 247 )"
print
print "commandSaveBegin( 248 )"
print nogo
print "commandSaveEnd( 248 )"
#commandNoSaveBegin( 247 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 
###0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 247 )
# 
#commandSaveBegin( 248 )
#  0.00000    
#commandSaveEnd( 248 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=8.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 249 )"
go hspice
print
print "commandNoSaveEnd( 249 )"
print
print "commandSaveBegin( 250 )"
print nogo
print "commandSaveEnd( 250 )"
#commandNoSaveBegin( 249 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 249 )
# 
#commandSaveBegin( 250 )
#  0.00000    
#commandSaveEnd( 250 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=9.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 251 )"
go hspice
print
print "commandNoSaveEnd( 251 )"
print
print "commandSaveBegin( 252 )"
print nogo
print "commandSaveEnd( 252 )"
#commandNoSaveBegin( 251 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.19
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 251 )
# 
#commandSaveBegin( 252 )
#  0.00000    
#commandSaveEnd( 252 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=10.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 253 )"
go hspice
print
print "commandNoSaveEnd( 253 )"
print
print "commandSaveBegin( 254 )"
print nogo
print "commandSaveEnd( 254 )"
#commandNoSaveBegin( 253 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.19
###use
###r 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 253 )
# 
#commandSaveBegin( 254 )
#  0.00000    
#commandSaveEnd( 254 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 255 )"
go hspice
print
print "commandNoSaveEnd( 255 )"
print
print "commandSaveBegin( 256 )"
print nogo
print "commandSaveEnd( 256 )"
# INTERRUPT ...
#commandNoSaveBegin( 255 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 255 )
# 
#commandSaveBegin( 256 )
#  0.00000    
#commandSaveEnd( 256 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 257 )"
go hspice
print
print "commandNoSaveEnd( 257 )"
print
print "commandSaveBegin( 258 )"
print nogo
print "commandSaveEnd( 258 )"
#commandNoSaveBegin( 257 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 257 )
# 
#commandSaveBegin( 258 )
#  0.00000    
#commandSaveEnd( 258 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 259 )"
go hspice
print
print "commandNoSaveEnd( 259 )"
print
print "commandSaveBegin( 260 )"
print nogo
print "commandSaveEnd( 260 )"
#commandNoSaveBegin( 259 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 259 )
# 
#commandSaveBegin( 260 )
#  0.00000    
#commandSaveEnd( 260 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 261 )"
go hspice
print
print "commandNoSaveEnd( 261 )"
print
print "commandSaveBegin( 262 )"
print nogo
print "commandSaveEnd( 262 )"
#commandNoSaveBegin( 261 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 261 )
# 
#commandSaveBegin( 262 )
#  0.00000    
#commandSaveEnd( 262 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 263 )"
go hspice
print
print "commandNoSaveEnd( 263 )"
print
print "commandSaveBegin( 264 )"
print nogo
print "commandSaveEnd( 264 )"
#commandNoSaveBegin( 263 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.20
###user 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 263 )
# 
#commandSaveBegin( 264 )
#  0.00000    
#commandSaveEnd( 264 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 265 )"
go hspice
print
print "commandNoSaveEnd( 265 )"
print
print "commandSaveBegin( 266 )"
print nogo
print "commandSaveEnd( 266 )"
#commandNoSaveBegin( 265 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 265 )
# 
#commandSaveBegin( 266 )
#  0.00000    
#commandSaveEnd( 266 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 267 )"
go hspice
print
print "commandNoSaveEnd( 267 )"
print
print "commandSaveBegin( 268 )"
print nogo
print "commandSaveEnd( 268 )"
#commandNoSaveBegin( 267 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 267 )
# 
#commandSaveBegin( 268 )
#  0.00000    
#commandSaveEnd( 268 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 269 )"
go hspice
print
print "commandNoSaveEnd( 269 )"
print
print "commandSaveBegin( 270 )"
print nogo
print "commandSaveEnd( 270 )"
#commandNoSaveBegin( 269 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 269 )
# 
#commandSaveBegin( 270 )
#  0.00000    
#commandSaveEnd( 270 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=6.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 271 )"
go hspice
print
print "commandNoSaveEnd( 271 )"
print
print "commandSaveBegin( 272 )"
print nogo
print "commandSaveEnd( 272 )"
#commandNoSaveBegin( 271 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 271 )
# 
#commandSaveBegin( 272 )
#  0.00000    
#commandSaveEnd( 272 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=7.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 273 )"
go hspice
print
print "commandNoSaveEnd( 273 )"
print
print "commandSaveBegin( 274 )"
print nogo
print "commandSaveEnd( 274 )"
#commandNoSaveBegin( 273 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 273 )
# 
#commandSaveBegin( 274 )
#  0.00000    
#commandSaveEnd( 274 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=8.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 275 )"
go hspice
print
print "commandNoSaveEnd( 275 )"
print
print "commandSaveBegin( 276 )"
print nogo
print "commandSaveEnd( 276 )"
#commandNoSaveBegin( 275 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###user 0.03
###sys 0.00
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 275 )
# 
#commandSaveBegin( 276 )
#  0.00000    
#commandSaveEnd( 276 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=9.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 277 )"
go hspice
print
print "commandNoSaveEnd( 277 )"
print
print "commandSaveBegin( 278 )"
print nogo
print "commandSaveEnd( 278 )"
#commandNoSaveBegin( 277 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 
###0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 277 )
# 
#commandSaveBegin( 278 )
#  0.00000    
#commandSaveEnd( 278 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=10.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 279 )"
go hspice
print
print "commandNoSaveEnd( 279 )"
print
print "commandSaveBegin( 280 )"
print nogo
print "commandSaveEnd( 280 )"
#commandNoSaveBegin( 279 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 279 )
# 
#commandSaveBegin( 280 )
#  0.00000    
#commandSaveEnd( 280 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 281 )"
go hspice
print
print "commandNoSaveEnd( 281 )"
print
print "commandSaveBegin( 282 )"
print nogo
print "commandSaveEnd( 282 )"
# INTERRUPT ...
#commandNoSaveBegin( 281 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 281 )
# 
#commandSaveBegin( 282 )
#  0.00000    
#commandSaveEnd( 282 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 283 )"
go hspice
print
print "commandNoSaveEnd( 283 )"
print
print "commandSaveBegin( 284 )"
print nogo
print "commandSaveEnd( 284 )"
#commandNoSaveBegin( 283 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 283 )
# 
#commandSaveBegin( 284 )
#  0.00000    
#commandSaveEnd( 284 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 285 )"
go hspice
print
print "commandNoSaveEnd( 285 )"
print
print "commandSaveBegin( 286 )"
print nogo
print "commandSaveEnd( 286 )"
#commandNoSaveBegin( 285 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###use
###r 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 285 )
# 
#commandSaveBegin( 286 )
#  0.00000    
#commandSaveEnd( 286 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 287 )"
go hspice
print
print "commandNoSaveEnd( 287 )"
print
print "commandSaveBegin( 288 )"
print nogo
print "commandSaveEnd( 288 )"
#commandNoSaveBegin( 287 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 287 )
# 
#commandSaveBegin( 288 )
#  0.00000    
#commandSaveEnd( 288 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 289 )"
go hspice
print
print "commandNoSaveEnd( 289 )"
print
print "commandSaveBegin( 290 )"
print nogo
print "commandSaveEnd( 290 )"
#commandNoSaveBegin( 289 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 289 )
# 
#commandSaveBegin( 290 )
#  0.00000    
#commandSaveEnd( 290 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 291 )"
go hspice
print
print "commandNoSaveEnd( 291 )"
print
print "commandSaveBegin( 292 )"
print nogo
print "commandSaveEnd( 292 )"
#commandNoSaveBegin( 291 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###use
###r 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 291 )
# 
#commandSaveBegin( 292 )
#  0.00000    
#commandSaveEnd( 292 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 293 )"
go hspice
print
print "commandNoSaveEnd( 293 )"
print
print "commandSaveBegin( 294 )"
print nogo
print "commandSaveEnd( 294 )"
#commandNoSaveBegin( 293 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###user 
###0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 293 )
# 
#commandSaveBegin( 294 )
#  0.00000    
#commandSaveEnd( 294 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=6.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 295 )"
go hspice
print
print "commandNoSaveEnd( 295 )"
print
print "commandSaveBegin( 296 )"
print nogo
print "commandSaveEnd( 296 )"
#commandNoSaveBegin( 295 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###user
### 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 295 )
# 
#commandSaveBegin( 296 )
#  0.00000    
#commandSaveEnd( 296 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=7.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 297 )"
go hspice
print
print "commandNoSaveEnd( 297 )"
print
print "commandSaveBegin( 298 )"
print nogo
print "commandSaveEnd( 298 )"
#commandNoSaveBegin( 297 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.20
###u
###ser 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 297 )
# 
#commandSaveBegin( 298 )
#  0.00000    
#commandSaveEnd( 298 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=8.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 299 )"
go hspice
print
print "commandNoSaveEnd( 299 )"
print
print "commandSaveBegin( 300 )"
print nogo
print "commandSaveEnd( 300 )"
#commandNoSaveBegin( 299 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 299 )
# 
#commandSaveBegin( 300 )
#  0.00000    
#commandSaveEnd( 300 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=9.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 301 )"
go hspice
print
print "commandNoSaveEnd( 301 )"
print
print "commandSaveBegin( 302 )"
print nogo
print "commandSaveEnd( 302 )"
#commandNoSaveBegin( 301 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 301 )
# 
#commandSaveBegin( 302 )
#  0.00000    
#commandSaveEnd( 302 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=10.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 303 )"
go hspice
print
print "commandNoSaveEnd( 303 )"
print
print "commandSaveBegin( 304 )"
print nogo
print "commandSaveEnd( 304 )"
#commandNoSaveBegin( 303 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.19
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 303 )
# 
#commandSaveBegin( 304 )
#  0.00000    
#commandSaveEnd( 304 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 305 )"
go hspice
print
print "commandNoSaveEnd( 305 )"
print
print "commandSaveBegin( 306 )"
print nogo
print "commandSaveEnd( 306 )"
# INTERRUPT ...
#commandNoSaveBegin( 305 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 305 )
# 
#commandSaveBegin( 306 )
#  0.00000    
#commandSaveEnd( 306 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 307 )"
go hspice
print
print "commandNoSaveEnd( 307 )"
print
print "commandSaveBegin( 308 )"
print nogo
print "commandSaveEnd( 308 )"
#commandNoSaveBegin( 307 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 307 )
# 
#commandSaveBegin( 308 )
#  0.00000    
#commandSaveEnd( 308 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 309 )"
go hspice
print
print "commandNoSaveEnd( 309 )"
print
print "commandSaveBegin( 310 )"
print nogo
print "commandSaveEnd( 310 )"
#commandNoSaveBegin( 309 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 309 )
# 
#commandSaveBegin( 310 )
#  0.00000    
#commandSaveEnd( 310 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 311 )"
go hspice
print
print "commandNoSaveEnd( 311 )"
print
print "commandSaveBegin( 312 )"
print nogo
print "commandSaveEnd( 312 )"
#commandNoSaveBegin( 311 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 311 )
# 
#commandSaveBegin( 312 )
#  0.00000    
#commandSaveEnd( 312 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 313 )"
go hspice
print
print "commandNoSaveEnd( 313 )"
print
print "commandSaveBegin( 314 )"
print nogo
print "commandSaveEnd( 314 )"
#commandNoSaveBegin( 313 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.23
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 313 )
# 
#commandSaveBegin( 314 )
#  0.00000    
#commandSaveEnd( 314 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=6.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 315 )"
go hspice
print
print "commandNoSaveEnd( 315 )"
print
print "commandSaveBegin( 316 )"
print nogo
print "commandSaveEnd( 316 )"
#commandNoSaveBegin( 315 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 315 )
# 
#commandSaveBegin( 316 )
#  0.00000    
#commandSaveEnd( 316 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=7.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 317 )"
go hspice
print
print "commandNoSaveEnd( 317 )"
print
print "commandSaveBegin( 318 )"
print nogo
print "commandSaveEnd( 318 )"
#commandNoSaveBegin( 317 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 317 )
# 
#commandSaveBegin( 318 )
#  0.00000    
#commandSaveEnd( 318 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=8.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 319 )"
go hspice
print
print "commandNoSaveEnd( 319 )"
print
print "commandSaveBegin( 320 )"
print nogo
print "commandSaveEnd( 320 )"
#commandNoSaveBegin( 319 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.21
###us
###er 0.03
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 319 )
# 
#commandSaveBegin( 320 )
#  0.00000    
#commandSaveEnd( 320 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=9.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 321 )"
go hspice
print
print "commandNoSaveEnd( 321 )"
print
print "commandSaveBegin( 322 )"
print nogo
print "commandSaveEnd( 322 )"
#commandNoSaveBegin( 321 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###use
###r 0.01
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 321 )
# 
#commandSaveBegin( 322 )
#  0.00000    
#commandSaveEnd( 322 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=10.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 323 )"
go hspice
print
print "commandNoSaveEnd( 323 )"
print
print "commandSaveBegin( 324 )"
print nogo
print "commandSaveEnd( 324 )"
#commandNoSaveBegin( 323 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 323 )
# 
#commandSaveBegin( 324 )
#  0.00000    
#commandSaveEnd( 324 )
set WIDTHP=270e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 325 )"
go hspice
print
print "commandNoSaveEnd( 325 )"
print
print "commandSaveBegin( 326 )"
print nogo
print "commandSaveEnd( 326 )"
# INTERRUPT ...
#commandNoSaveBegin( 325 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###u
###ser 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 325 )
# 
#commandSaveBegin( 326 )
#  0.00000    
#commandSaveEnd( 326 )
set WIDTHP=270e-9
set WIDTHN=450e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 327 )"
go hspice
print
print "commandNoSaveEnd( 327 )"
print
print "commandSaveBegin( 328 )"
print nogo
print "commandSaveEnd( 328 )"
#commandNoSaveBegin( 327 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 327 )
# 
#commandSaveBegin( 328 )
#  0.00000    
#commandSaveEnd( 328 )
set WIDTHP=270e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 329 )"
go hspice
print
print "commandNoSaveEnd( 329 )"
print
print "commandSaveBegin( 330 )"
print nogo
print "commandSaveEnd( 330 )"
#commandNoSaveBegin( 329 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 329 )
# 
#commandSaveBegin( 330 )
#  0.00000    
#commandSaveEnd( 330 )
set WIDTHP=360e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 331 )"
go hspice
print
print "commandNoSaveEnd( 331 )"
print
print "commandSaveBegin( 332 )"
print nogo
print "commandSaveEnd( 332 )"
#commandNoSaveBegin( 331 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 331 )
# 
#commandSaveBegin( 332 )
#  0.00000    
#commandSaveEnd( 332 )
set WIDTHP=450e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 333 )"
go hspice
print
print "commandNoSaveEnd( 333 )"
print
print "commandSaveBegin( 334 )"
print nogo
print "commandSaveEnd( 334 )"
#commandNoSaveBegin( 333 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 333 )
# 
#commandSaveBegin( 334 )
#  0.00000    
#commandSaveEnd( 334 )
set WIDTHP=360e-9
set WIDTHN=400e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 335 )"
go hspice
print
print "commandNoSaveEnd( 335 )"
print
print "commandSaveBegin( 336 )"
print nogo
print "commandSaveEnd( 336 )"
#commandNoSaveBegin( 335 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 335 )
# 
#commandSaveBegin( 336 )
#  0.00000    
#commandSaveEnd( 336 )
set WIDTHP=360e-9
set WIDTHN=360e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 337 )"
go hspice
print
print "commandNoSaveEnd( 337 )"
print
print "commandSaveBegin( 338 )"
print nogo
print "commandSaveEnd( 338 )"
#commandNoSaveBegin( 337 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###use
###r 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 337 )
# 
#commandSaveBegin( 338 )
#  0.00000    
#commandSaveEnd( 338 )
set WIDTHP=450e-9
set WIDTHN=540e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 339 )"
go hspice
print
print "commandNoSaveEnd( 339 )"
print
print "commandSaveBegin( 340 )"
print nogo
print "commandSaveEnd( 340 )"
#commandNoSaveBegin( 339 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###user 0.02
###sy
###s 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 339 )
# 
#commandSaveBegin( 340 )
#  0.00000    
#commandSaveEnd( 340 )
set WIDTHP=450e-9
set WIDTHN=630e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 341 )"
go hspice
print
print "commandNoSaveEnd( 341 )"
print
print "commandSaveBegin( 342 )"
print nogo
print "commandSaveEnd( 342 )"
#commandNoSaveBegin( 341 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 341 )
# 
#commandSaveBegin( 342 )
#  0.00000    
#commandSaveEnd( 342 )
set WIDTHP=540e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 343 )"
go hspice
print
print "commandNoSaveEnd( 343 )"
print
print "commandSaveBegin( 344 )"
print nogo
print "commandSaveEnd( 344 )"
#commandNoSaveBegin( 343 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###use
###r 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 343 )
# 
#commandSaveBegin( 344 )
#  0.00000    
#commandSaveEnd( 344 )
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 345 )"
go hspice
print
print "commandNoSaveEnd( 345 )"
print
print "commandSaveBegin( 346 )"
print nogo
print "commandSaveEnd( 346 )"
#commandNoSaveBegin( 345 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 345 )
# 
#commandSaveBegin( 346 )
#  0.00000    
#commandSaveEnd( 346 )
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 347 )"
go hspice
print
print "commandNoSaveEnd( 347 )"
print
print "commandSaveBegin( 348 )"
print nogo
print "commandSaveEnd( 348 )"
#commandNoSaveBegin( 347 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 347 )
# 
#commandSaveBegin( 348 )
#  0.00000    
#commandSaveEnd( 348 )
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 349 )"
go hspice
print
print "commandNoSaveEnd( 349 )"
print
print "commandSaveBegin( 350 )"
print nogo
print "commandSaveEnd( 350 )"
#commandNoSaveBegin( 349 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###u
###ser 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 349 )
# 
#commandSaveBegin( 350 )
#  0.00000    
#commandSaveEnd( 350 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 351 )"
go hspice
print
print "commandNoSaveEnd( 351 )"
print
print "commandSaveBegin( 352 )"
print nogo
print "commandSaveEnd( 352 )"
#commandNoSaveBegin( 351 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 
###0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 351 )
# 
#commandSaveBegin( 352 )
#  0.00000    
#commandSaveEnd( 352 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 353 )"
go hspice
print
print "commandNoSaveEnd( 353 )"
print
print "commandSaveBegin( 354 )"
print nogo
print "commandSaveEnd( 354 )"
#commandNoSaveBegin( 353 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.19
###user 
###0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 353 )
# 
#commandSaveBegin( 354 )
#  0.00000    
#commandSaveEnd( 354 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 355 )"
go hspice
print
print "commandNoSaveEnd( 355 )"
print
print "commandSaveBegin( 356 )"
print nogo
print "commandSaveEnd( 356 )"
#commandNoSaveBegin( 355 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.19
###us
###er 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 355 )
# 
#commandSaveBegin( 356 )
#  0.00000    
#commandSaveEnd( 356 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 357 )"
go hspice
print
print "commandNoSaveEnd( 357 )"
print
print "commandSaveBegin( 358 )"
print nogo
print "commandSaveEnd( 358 )"
#commandNoSaveBegin( 357 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.20
###use
###r 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 357 )
# 
#commandSaveBegin( 358 )
#  0.00000    
#commandSaveEnd( 358 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 359 )"
go hspice
print
print "commandNoSaveEnd( 359 )"
print
print "commandSaveBegin( 360 )"
print nogo
print "commandSaveEnd( 360 )"
#commandNoSaveBegin( 359 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.20
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 359 )
# 
#commandSaveBegin( 360 )
#  0.00000    
#commandSaveEnd( 360 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=6.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 361 )"
go hspice
print
print "commandNoSaveEnd( 361 )"
print
print "commandSaveBegin( 362 )"
print nogo
print "commandSaveEnd( 362 )"
#commandNoSaveBegin( 361 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###us
###er 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 361 )
# 
#commandSaveBegin( 362 )
#  0.00000    
#commandSaveEnd( 362 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=7.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 363 )"
go hspice
print
print "commandNoSaveEnd( 363 )"
print
print "commandSaveBegin( 364 )"
print nogo
print "commandSaveEnd( 364 )"
#commandNoSaveBegin( 363 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###user 0.02
###sys 0.02
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 363 )
# 
#commandSaveBegin( 364 )
#  0.00000    
#commandSaveEnd( 364 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=8.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 365 )"
go hspice
print
print "commandNoSaveEnd( 365 )"
print
print "commandSaveBegin( 366 )"
print nogo
print "commandSaveEnd( 366 )"
#commandNoSaveBegin( 365 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 365 )
# 
#commandSaveBegin( 366 )
#  0.00000    
#commandSaveEnd( 366 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=9.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 367 )"
go hspice
print
print "commandNoSaveEnd( 367 )"
print
print "commandSaveBegin( 368 )"
print nogo
print "commandSaveEnd( 368 )"
#commandNoSaveBegin( 367 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###u
###ser 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 367 )
# 
#commandSaveBegin( 368 )
#  0.00000    
#commandSaveEnd( 368 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=10.0
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 369 )"
go hspice
print
print "commandNoSaveEnd( 369 )"
print
print "commandSaveBegin( 370 )"
print nogo
print "commandSaveEnd( 370 )"
#commandNoSaveBegin( 369 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.18
###user 0.03
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 369 )
# 
#commandSaveBegin( 370 )
#  0.00000    
#commandSaveEnd( 370 )
set WIDTHP=270e-9
set WIDTHN=270e-9
set R=3.8
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 371 )"
go hspice
print
print "commandNoSaveEnd( 371 )"
print
print "commandSaveBegin( 372 )"
print nogo
print "commandSaveEnd( 372 )"
# INTERRUPT ...
#commandNoSaveBegin( 371 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.17
###user 0.01
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 371 )
# 
#commandSaveBegin( 372 )
#  0.00000    
#commandSaveEnd( 372 )
set WIDTHP=270e-9
set WIDTHN=270e-9
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
sweep time from 0.0 to 120e-9 by 1e-9
set delmax=0
deprop Hspice_Opt DELMAX 
deprop analog includeFile 
deprop analog createRunCmd
set @dummy=sdsfun(1205,"CDSPSF","psfdir",&
"../psf")
print "commandNoSaveBegin( 373 )"
go hspice
print
print "commandNoSaveEnd( 373 )"
print
print "commandSaveBegin( 374 )"
print nogo
print "commandSaveEnd( 374 )"
#commandNoSaveBegin( 373 )
# THE CIRCUIT TEMPERATURE IS:    25.0000    
#  HSPICE EXECUTION
###>info:         ***** hspice job concluded
###real 0.16
###u
###ser 0.02
###sys 0.01
#  HSPICE FINISHED
# 
#commandNoSaveEnd( 373 )
# 
#commandSaveBegin( 374 )
#  0.00000    
#commandSaveEnd( 374 )
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
