data ex13_12;
do hos =1 to 5;
do drug=1 to 2;
do case =1 to 2;
input count@@;
output;
end;
end;
end;
cards;
4 62 2 224
9 33 12 390
4 26 33 330
6 9 65 362
6 5 93 301
;
run;

proc freq data=ex13_12;
weight count;
tables hos*drug*case /chisq cmh;
title"hos drug and case";
run;
