data ex11_3;
input y x1 x2 f @@;
if x1=1 and x2=1 then x11=1;else x11=0;
if x1=1 and x2=0 then x10=1;else x10=0;
if x1=0 and x2=1 then x01=1;else x01=0;
if x1=0 and x2=0 then x00=1;else x00=0;
cards;
1 0 0 63
1 0 1 63
1 1 0 44
1 1 1 265
0 0 0 136
0 0 1 107
0 1 0 57
0 1 1 151
;
proc logistic descending;
weight f;
model y=x11 x10 x01;
run;
