data idht;
input id1 x11$ x21 x3;
cards;
1001 f 164 58
1002 m 170 70
1003 m 174 72
1005 m 176 74
1006 f 165 60
1007 f 178 55 
;
data biday;
input id2 x1 x2;
cards;
1001 750603 971201
1002 691002 971205
1003 490820 971205
1004 790601 971215
1005 291025 971025
1006 840710 970905
;


proc sql;
select id1,id2,x21,x3,(x2-x1)/365.25  as age format=6.3
from idht , biday
where idht.id1=biday.id2;
