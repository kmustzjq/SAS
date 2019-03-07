data score;
input math@@;
cards;
71 81 91
;
run;
%let exa=score;
data temp;
set &exa;
if math>80;
run;
proc print data=temp;
title"display of student &exa";
run;
