-- Cláusulas de ordenaçãoptimize
use company_constraints;
/*
select * 
from employee
order by Fname, Lname
;

*/
-- nome do departamento, nome do gerente
select distinct d.Dname, concat(e.Fname, ' ', e.Lname) as Manager, Address
from departament as d, employee as e, works_on as w, project as p
where (d.Dnumber = e.Dno and e.Ssn = d.Mgr_ssn and w.Pno = p.Pnumber)
order by d.Dname, e.Fname, e.Lname
;

-- Recuperando todos os empregados e seus projetos em andamento
select d.Dname as Department, concat(e.Fname,' ',e.Lname) as Empregado, p.Pname as Nome_projeto, Address
from departament as d, employee as e, works_on as w, project as p
order by d.Dname, e.Fname, e.Lname
;