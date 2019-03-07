%let print=%str(
proc print;
run;
);


data score;
input math@@;
71 81 91
;
run;
data temp;
set score;
if math>80;
run;
&print
