data temp;
input x group @@;
cards;
12.3 1 13.2 1 13.7 1 15.2 1 15.4 1 15.8 1 16.9 1
10.8 2 11.6 2 12.3 2 12.7 2 13.5 2 13.5 2 14.8 2 
;
proc ttest data=temp;
class group;
var x;
run;
