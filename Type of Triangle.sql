select if(a+b>c and b+c>a and a+c>b,if(a=b and b=c,'Equilateral',if(a=b or b=c or a=c,'Isosceles','Scalene')),'Not A Triangle') from triangles;
