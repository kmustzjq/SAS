data ex13_7;
do a=1to 3;
do b=4,3,2,1;
input w@@;
output ;
end;
end;
cards;
15 49 31 5
4 9 50 22
1 15 45 24
;

proc freq data=ex13_7;
tables a*b / cmh;
weight w;
title "ø®∑ΩºÏ—È";
run;
