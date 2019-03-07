data student001;
input protein @@;
cards;
74.3 78.8 68.8 78.0 70.4 80.5 80.5 69.7 79.5
75.6 75.0 78.8 72.0 72.0 72.0 74.3 75.0 73.5
78.8 74.3 75.8 65.0 74.3 71.2 73.5 75.0 72.0
64.3 75.8 80.3 69.7 74.3 75.8 75.8 68.8 76.5
70.4 71.2 81.2 75.0 74.0 72.0 76.5 74.3 76.5
77.6 67.3 72.0 73.5 79.5 73.5 74.7 65.0 76.5
81.6 75.4 75.8 73.5 75.0 72.7 70.4 77.2 68.8
67.3 75.8 73.5 75.0 72.7 73.5 72.7 81.6 73.5
75.0 72.7 70.4 76.5 72.7 77.2 84.3 75.0 71.2
71.2 69.7 73.5 70.4 76.5 72.7 77.2 84.3 75.0
73.5 78.0 68.0 73.5 68.0 73.5 68.0 74.3 72.7
73.7
;
run;

proc means data=student001;
var protein;
title "the means of student";
run;

proc univariate data=student001;
var protein;
title "univariate of student";
run;
