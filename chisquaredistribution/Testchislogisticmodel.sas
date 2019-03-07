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

data temp;
set ex13_7;
if a=1 then do ;
x1=1 ;x2=0;end;
else if a=2 then do;
x1=0 ;x2=1; end;
else if a=3 then do;
x1=0; x2=0; end;
proc logistic data=temp descending;
model b=x1 x2;
weight w;
title'Âß¼­»Ø¹é';
run;
