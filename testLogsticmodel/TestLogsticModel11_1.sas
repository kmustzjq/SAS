data ex11_1;
do weight = 750, 1150, 1550;
do bpd =1, 0 ;
input wt @@;
output;
end;
end;
cards;
49 19 18 62 9 66
;


proc logistic descending;
model bpd=weight;
weight wt;
run;

