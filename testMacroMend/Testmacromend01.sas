data score;
input math phy eng;
cards;
87 67 87
78 96 84
95 69 65
;
run;
%macro data;
data temp;
set score;
run;
%mend data;
%macro plot;
	proc plot;
	plot &math * &phy;
run;
%mend plot;
%macro link(math,phy);
  %data
  %plot
%mend link;

