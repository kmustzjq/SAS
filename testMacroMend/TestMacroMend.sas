data sashelp.class;
input a b;
cards;
31 76
76 92
62 37
;
run;

%macro printclass(class);
	proc print data=&class;
	run;
%mend printclass;
%printclass(sashelp.class)
