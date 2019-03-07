data dogsurvive;
do i = 1 to 7;
do j = 1 to 2;
input goal survivetime @@;
output ;
end;
end;
drop i j;
cards;
79 45 80 30 91 16 90 24 70 28 87 25 92 14   
;
proc corr spearman data=dogsurvive;
run; 
