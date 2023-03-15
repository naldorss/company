-- Funções e cláusulas de agrupamento
select * from employee;
select	count(*) from employee;

select count(*)
from employee, departament
where Dno = Dnumber and Dname = 'Research';

-- Contagem de média salarial de cada departamento
select Dno, count(*), round(avg(Salary),2) as Salary_avg 
from employee
group by Dno
;

select Pnumber, Pname, count(*)
from project, works_on
where Pnumber = Pno
group by Pnumber, Pname
;

select count(distinct Salary) from employee;

select 
	sum(Salary) as Total_Salario, 
    avg(Salary) as Média_Salario,
	max(Salary) as Maior_Salario,
	min(Salary) as Menor_Salario
from employee
;

-- Recupera o numero de empregados agrupados por projeto, trazendo o numero e o nome de cada projeto
select 
	Pnumber, 
    Pname, 
    count(*) Number_of_register,
    round(avg(Salary),2) Média_Salary
from project, works_on, employee
where Pnumber = Pno and Ssn = Essn
group by Pname
order by avg(Salary) desc
;

show tables;