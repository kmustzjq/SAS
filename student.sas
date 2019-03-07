
data male;
input id sex $math english;
cards;
12 m 80 90
13 m 76 86
14 m 96 73
;
data female;
input id sex $math english chinese;
cards;
15 F 93 76 92
16 F 89 78 83
17 F 86 63 89
;
data score;
set male female;
proc print;
run;
