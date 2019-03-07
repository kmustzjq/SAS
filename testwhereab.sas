data master;
input id name $ sex age weight;
cards;
11 jones 1 46 117.2
14 milier 2 59 132.2
30 parker 1 29 111.3
49 smith 1 34 209.1
87 wilson 2 30 98.3
;
run;
data trans;
input id age weight name $@@;
cards;
11 47 . .
30 . 108.4 .
49 35 215.1 .
87 . . cameron
87 . 104.1 .
;
run;
data new ;
updata master trans;
by id;
run;
proc print;
run;

