data score;
input math phy eng;
cards;
87 67 87
78 96 84
95 69 65
;
run;
data temp;
set score;
run;
proc plot data=temp;
  plot math*phy;
run;
