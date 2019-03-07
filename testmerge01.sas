data me;
input id sex $ math;
cards;
12 m 80
13 m 76
14 m 96
;
data mad ;
input id sex $english chinese;
cards;
12 F 93 76
13 F 89 78
;
data score1;
merge me mad;
run;
proc print data=score1;
run;
