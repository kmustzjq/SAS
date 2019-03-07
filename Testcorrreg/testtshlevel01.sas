data tshlevel;
do i=1 to 10;
do j=1 to 2;
	input x @@;
	output x1 x2;
end;
end;
drop i j;
cards;
	1.21 3.90 1.30 4.50 1.39 4.20 1.42 4.83 1.47 4.16
	1.56 4.93 1.68 4.32 1.72 4.99 1.98 4.70 2.10 5.20
	;
run;

proc corr data=tshlevel;
run;

