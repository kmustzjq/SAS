data ex11_6;
input id y x wt@@;
y=1-y;
cards;
1 1 1 3 1 0 1 3
2 1 0 5 2 0 1 5
3 1 1 14 3 0 0 14
4 1 0 62 4 0 0 62
;
proc phreg;
model y=x;
freq wt;
strata id;
run;
