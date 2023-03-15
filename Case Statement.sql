 -- Case Statement
 show databases;
 use company_constraints;
show tables;
desc departament;


-- Recuperando Salarios antes do update
select Fname, Salary, Dno
from employee;
/*
Desabilitar o Safe Mode


Ramesh	38000.00	5
Joyce	25000.00	5
John	30000.00	5
Jennifer	43000.00	4
James	55000.00	1
Franklin	40000.00	5
Alicia	25000.00	4
Ahmad	25000.00	4
*/
update employee set salary = 
	case 
		when dno = 5 then salary + 2000
        when dno = 4 then salary + 1500
        when dno = 1 then salary + 3000
        else + 0
	end