%let exa=score;
%let xvar=math;
%let yvar=phy;
%let print=%str(
proc plot;
plot &xvar * &yvar;
run;
);

data score;
input math phy@@;
cards;
91 81
98 65 
70 92
;
run;
data temp;
set &exa;
run;
&print

