* # FILE NAME: /HOME/ECEGRID/A/559MG3/CADENCE/SIMULATION/INVERTERTEST/          
* HSPICES/EXTRACTED/NETLIST/INVERTERTEST.C.RAW
* NETLIST OUTPUT FOR HSPICES.
* GENERATED ON OCT 25 03:13:48 2014
   
* FILE NAME: HW1_INVERTERTEST_EXTRACTED.S.
* SUBCIRCUIT FOR CELL: INVERTERTEST.
* GENERATED FOR: HSPICES.
* GENERATED ON OCT 25 03:13:48 2014.
   
M4 OUT_1 3 VDD! VDD!  TSMC18DP  L=180.000000682412E-9 W=899.999974990351E-9 
+AD=647.999991339188E-15 AS=647.999991339188E-15 PD=2.34000003729307E-6 
+PS=2.34000003729307E-6 M=1 
M5 3 2 VDD! VDD!  TSMC18DP  L=180.000000682412E-9 W=899.999974990351E-9 
+AD=647.999991339188E-15 AS=647.999991339188E-15 PD=2.34000003729307E-6 
+PS=2.34000003729307E-6 M=1 
M6 2 IN_1 VDD! VDD!  TSMC18DP  L=180.000000682412E-9 W=899.999974990351E-9 
+AD=647.999991339188E-15 AS=647.999991339188E-15 PD=2.34000003729307E-6 
+PS=2.34000003729307E-6 M=1 
M7 OUT_0 1 VDD! VDD!  TSMC18DP  L=180.000000682412E-9 W=899.999974990351E-9 
+AD=647.999991339188E-15 AS=647.999991339188E-15 PD=2.34000003729307E-6 
+PS=2.34000003729307E-6 M=1 
M8 1 IN_0 VDD! VDD!  TSMC18DP  L=180.000000682412E-9 W=899.999974990351E-9 
+AD=647.999991339188E-15 AS=647.999991339188E-15 PD=2.34000003729307E-6 
+PS=2.34000003729307E-6 M=1 
M9 OUT_1 3 0 0  TSMC18DN  L=180.000000682412E-9 W=360.000001364824E-9 
+AD=356.399995236553E-15 AS=356.399995236553E-15 PD=2.15999989450211E-6 
+PS=2.15999989450211E-6 M=1 
M10 3 2 0 0  TSMC18DN  L=180.000000682412E-9 W=360.000001364824E-9 
+AD=356.399995236553E-15 AS=356.399995236553E-15 PD=2.15999989450211E-6 
+PS=2.15999989450211E-6 M=1 
M11 2 IN_1 0 0  TSMC18DN  L=180.000000682412E-9 W=360.000001364824E-9 
+AD=356.399995236553E-15 AS=356.399995236553E-15 PD=2.15999989450211E-6 
+PS=2.15999989450211E-6 M=1 
M12 OUT_0 1 0 0  TSMC18DN  L=180.000000682412E-9 W=360.000001364824E-9 
+AD=356.399995236553E-15 AS=356.399995236553E-15 PD=2.15999989450211E-6 
+PS=2.15999989450211E-6 M=1 
M13 1 IN_0 0 0  TSMC18DN  L=180.000000682412E-9 W=360.000001364824E-9 
+AD=356.399995236553E-15 AS=356.399995236553E-15 PD=2.15999989450211E-6 
+PS=2.15999989450211E-6 M=1 
   
   
   
   
   
.lib "$CDK_DIR/models/hspice/public/publicModel/tsmc18dP" PMOS 
.lib "$CDK_DIR/models/hspice/public/publicModel/tsmc18dN" NMOS 
   
   
* INCLUDE FILES
   
   
   
   
   
   
* END OF NETLIST
.TEMP    25.0000    
*.OP
*.save
*.OPTION  INGOLD=2 ARTIST=2 PSF=2
*+        PROBE=0
vvdd! vdd! 0 DC=2.5v
.END