%let m=2;
%let value=%eval(&m+8);
%let put=%str(
proc print;
title "simple test";
run;
);
data value;
input value@@;
cards;
&value
2
3
5
;
run;
&put
