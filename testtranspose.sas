data ex ;
input a b c;
cards;
50 147 183
49 85 136
77 195 244
;
proc transpose prefix = y;
proc print ;
run;
data maths;
input id $ math1-math3;
math=(math1+math2+math3)/3;output;
cards;
123 60 65 70
132 87 93 89
114 70 74 81
;
proc print;
run;
data maths;
input id $ math1-math3;
math=(math1+math2+math3)/3;output;
cards;
123 60 65 70
132 87 93 89
114 70 74 81
;
proc print;
run;
