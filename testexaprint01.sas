%let exa=score;
%let xvar=math;
%let yvar=phys;
%let print=%str(
proc plot;
plot &xvar*&yvar;
run;
);
data score;
input math phys@@;
cards;
80 90
67 80
77 89
81 85
82 88
76 99
;
run;
data temp;
set &exa;
if math>75;
run;
&print
