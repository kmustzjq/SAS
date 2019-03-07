data temp04;
do group =1 to 7;
do block =1 to 3;
input x @@;
output;
end;
end;
cards;
45.48 44.73 44.25
43.33 42.94 43.10
43.72 42.26 43.25
44.26 44.65 44.10
43.73 43.25 41.22
43.15 43.78 44.00
41.14 43.43 42.21
;
proc anova;
class group block;
model x=group block;
title 'the anova of group and block';
run;
