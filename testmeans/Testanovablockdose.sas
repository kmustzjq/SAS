data temp05;
do block=1 to 4;
do dose =1 to 3;
input x@@;
output;
end;
end;
cards;
106 116 145
42 68 115
70 111 133
42 63 87
;
proc anova;
class dose block;
model x=block dose;
title "the anove of temp05";
run;
