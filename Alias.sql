use company_constraints;

show tables;
-- Descrição das tabelas
desc departament;
desc dependent;
desc dept_locations;
desc employee;
desc project;
desc works_on;

/*
Este erro se refere a existencia de uma ambiguidade na consulta, onde as duas tabelas contém campos com nomes iguais.
 "Error Code: 1052. Column 'Dnumber' in where clause is ambiguous"
*/
select *
from departament, dept_locations
where Dnumber = Dnumber
;
-- Elimina-se a ambiguidade utilizando-se ALIAS ou AS STATEMENT
select
	Dname,
    l.Dlocation as Department_name
from 
	departament as d,
    dept_locations as l
where d.Dnumber = l.Dnumber
;