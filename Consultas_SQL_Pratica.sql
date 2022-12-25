-- Consultas SQL
;
select * 
from employee;

-- Consultando os gerentes de cada departamento

select 	Ssn as Id, 
		Fname as Nome, 
        Dname as Departamento
from employee e, departament d 
where e.Ssn = d.Mgr_ssn;


-- Recuperando o grau de parentesco dos funcionários

select 
	Fname as Nome_Do_Funcionário,
    Dependent_name as Nome_do_dependente,
    Relationship as Grau_Parentesco
from employee, dependent
where Essn = Ssn
;

-- --------------------------------
select 
	Bdate, 
	Address 
from employee
where Fname = 'John' and Minit = 'B' and Lname = 'Smith'
;

-- Recuperando departamento especifico
select * 
from departament
where Dname = 'Research'
;

select 
	Fname,
    Lname,
    Address
from employee, departament
where Dname = 'Research' and Dnumber = Dno
;
desc works_on;
desc project;

--
select 
	Pname,
    Essn,
    fname,
    Hours
from 
	project, 
	works_on, 
    employee
where Pnumber = Pno and Essn = Ssn
;

-- 