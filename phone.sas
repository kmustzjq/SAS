data Test1.phones;
input name$ phone room height;
cards;
rebeccah 424 112 1.5648;
carol 450 112 5.6235;
louise 409 110 1.2568;
gina 474 110 1.3652;
mimi 410 106 1.6542;
brenda 414 105 1.8975;
alice 411 106 1.6985;
brenda 414 106 1.3698;
david 438 141 1.6547;
betty 464 141 1.5647;
holly 466 140 1.5624
;
proc print data=phones;
run;