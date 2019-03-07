proc sql;
select * from studentbody;


proc sql;
title "body's index";
select weight,height from studentbody
where age>16 and sex='f'
order by weight;

proc sql;
title "student body's diviation";
select *,(height-avg(height))/avg(height) as diviation
from studentbody;


proc sql;
create table work as
select weight, height ,(height-avg(height))/avg(height) as diviation 
from studentbody
where age>16 and sex='f'
order by weight; 

proc print data=work;
title "work";
run;
