-- Recuperando informações dos departamentos presentes em Stafford
select
	Dname as Department_Name,
    concat(Fname, ' ', Lname) as Manager
from
	departament d,
    dept_locations l,
    employee e
where
	d.Dnumber = l.Dnumber and Dlocation= 'Stafford' and Mgr_ssn = e.Ssn
;

-- Recuperando todos os gerentes, departamentos e seus nomes
select
	Dname as Department_Name,
    concat(Fname, ' ', Lname) as Manager
from
	departament d,
    dept_locations l,
    employee e
where
	d.Dnumber = l.Dnumber and Mgr_ssn = e.Ssn
;


select
	Pnumber, 
    Dnum,
    Lname,
    Address,
    Bdate,
    p.Plocation
from 
	departament d,
    project p,
    employee e
where d.Dnumber = p.Dnum and p.Plocation= 'Stafford' and Mgr_ssn = e.Ssn;