data TSHlevel;
input TSH1 TSH2 @@;
cards;
1.21 3.90 1.30 4.50 1.39 4.20 1.42 4.83 1.47 4.16
1.56 4.93 1.68 4.32 1.72 4.99 1.98 4.70 2.10 5.20
;
run;
proc corr data=TSHlevel;
var TSH1 TSH2;
run;
proc gplot data=TSHlevel;
plot TSH2*TSH1='*';
run;
