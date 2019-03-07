data ex11_2;
do y=1,0;
do x=1 to 3;
input wt@@;
output;
end;
end;
cards;
40 10 50
20 40 40
;
run;
data ex11_2;
set ex11_2;
if x=1 then do;
han=1; yi=0;hani=0;
end;
else if x=2 then do;
han=0;yi=1;hani=0;
end;
else if x=3 then do;
han=0;yi=0;hani=1;
end;
run;

proc logistic data=ex11_2 descending;
model y=han yi ;
weight wt;
run;
proc logistic data=ex11_2 descending;
model y=han hani;
weight wt;
run;
 
