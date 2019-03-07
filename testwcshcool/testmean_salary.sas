data temp;
input ID$ name $ salary department$;
comm=salary*0.25;
label ID = 'employee ID' comm='commision';
datalines;
1 rick 623.3 IT
2 dan 515.2 operations
3 michelle 611 IT 
4 ryan 729 HR
5 gary 843.25 finance
6 nina 578 IT
7 simon 632.8 operations
8 guru 722.5 finance
;
run;
proc means data=temp;
run;

proc print data=temp;
where salary>700;
run;
