data temp03;
do group = 1 to 3;
input n@;
do i =1 to n; 
input x@@;
output;
end;
end; 
drop n i;
 cards;
 12
 58 61 62 61 63 70 70 68 74 78 80 76
 10
 54 57 58 57 60 61 63 64 66 62
 8
 42 56 57 54 60 57 53 51
 ;
 run;
 proc glm data=temp03;
 class group;
 model x = group;
 title 'the glm of temp03';
 run;
