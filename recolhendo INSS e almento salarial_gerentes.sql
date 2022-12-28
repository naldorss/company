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
