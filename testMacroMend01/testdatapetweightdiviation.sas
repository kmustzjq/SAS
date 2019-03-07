proc sql;
title 'datapet"s weight didivation';
select * ,avg(height) as average ,(height-avg(height))/avg(height) as diviation from studentbody;

