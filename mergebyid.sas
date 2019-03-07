data identity;
input id sex $ age;
cards;
1001 f 20
1003 m 22
1002 m 20
1001 f 21
;
proc sort data=identity;
by id;
run;
data score02;
input id language $ score;
cards;
1001 english 90
1002 chinese 93
10001 france 83
;
proc sort data=score02;
by id;
run;
data result;
merge identity score02;
by id;
run;
proc print data=result;
run;
