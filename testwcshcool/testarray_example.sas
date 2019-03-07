data array_example;
input a1 $ a2 $ a3 $ a4 $ a5;
array colours(5) $ a1-a5;
mix = a1||'+'||a2;
datalines;
yello pink orange green blue
;
run;
proc print data=array_example;
run;
