data score;
input name$  sex$ score;
cards;
zs nan 90
ls nan 88
ww nan 86
lm nv 88
xf nv 90
ds nv 86
run;
proc sort data=score;
by sex;
run;
proc means data=score;
var score;
by sex;
run;

