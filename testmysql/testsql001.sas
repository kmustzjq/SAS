proc sql;
select * from student;
proc sql;
title "body index";
select sex,weight,height from student;
proc sql;
title "body index";
select weight,height 
from student 
where sex='f'
order by weight;


proc sql;
title 'average diviation';
select * ,(weight-average(weight))/average(weight) as diviation
from datapet;


