data temp1;
 do i=1 to 10;
 	do g=1 to 3 ;
 	input x@@;
 		output;
 		end;
 end;
drop i;
cards;
7.76 11.14 10.85
7.71 11.60 8.58
8.43 11.42 7.19
8.47 13.85 9.36
10.30 13.53 9.59
6.67 14.16 8.81
11.73 6.94 8.22
5.78 13.01 9.95
6.61 14.18 11.26
6.97 17.72 8.68
;
proc anova data=temp1;
class g;
model x=g;
means g/duncan;
title'anova of temp1';
run;
