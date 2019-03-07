data zhili;
input name $ x1 x2 x3;
cards;
zhang 14 13 28
li 10 14 15
wang 11 12 19
zhao 7 7 7
wu 13 12 24
liu 19 14 22
zhong 20 16 26
yang 9 10 14
zeng 9 8 25
he 9 9 12
;
run;

proc sort ;
by name;
proc print data=zhili;
title "zhili";
proc means maxdec=1;
run;
