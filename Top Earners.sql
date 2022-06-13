select (months*salary) as max_salary,count(months*salary) as frequency from employee where months*salary=(select max(months*salary) as max_salary from employee) group by max_salary;
