-- como utilizar like e between nas queries
use company_constraints;

-- recolhendo o INSS, usando função ROUND() para formatar o numero retornado
SELECT Fname, Lname, ROUND(Salary * 0.011, 2 )as INSS
FROM  employee;
-- ------------------------------------------------------
-- definir aumento de salario par os gerentes no projeto associado ao ProdutX

select 
	concat(Fname, '',Lname) as Nome_Completo,
    Salary,
    round(salary*1.1,2) as Increased_salary
from 
	employee as e, 
	works_on as w, 
    project as p
where (e.Ssn = w.Essn and w.Pno = p.Pnumber and p.Pname = 'ProductX')
;
-- -----------------------------------------------------------------------------------
select *
from 
	employee as e, 
	works_on as w, 
    project as p
where (e.Ssn = w.Essn and w.Pno = p.Pnumber and p.Pname = 'ProductX')
;

select * from employee;

select Fname, Lname from employee where Address like '%Houston-TX%';

select Fname, Lname from employee where Bdate like '19________';
select Fname, Lname from employee where Bdate like '19__-__-__';
select Fname, Lname from employee where Bdate like '__7_-__-__';

select Fname, Lname, Bdate from employee where Bdate like '__6%';
select Fname, Lname, Bdate from employee where Bdate like '196%';

select Dno, Salary from employee;
select * from employee where (Salary between 30000 and 40000);
select * from employee where (Salary between 30000 and 40000) and Dno=5;

