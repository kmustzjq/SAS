data a;
input id x@@;
cards;
11 10 31 30 41 40
;
data b;
input id y@@;
cards;
11 100 21 200 41 400
;

data where a b;
merge a b;
where id>30;
proc print data=where a b;
run;
data ifab;
merge a b;
if id>30;
proc print data=ifab;
run;


