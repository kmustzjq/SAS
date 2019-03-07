ods listing ;
data score001;
set score;
run;
proc print data=score001;
title "score001";
run;
