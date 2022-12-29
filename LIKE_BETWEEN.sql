-- LIKE E BETWEEN
-- ---------------------------/////////////////////////////-----------------------------------------------
-- Recuperando o nome Completo e o endereço do departamento que contenha Houston no meio do nome
select 
	concat(Fname, ' ', Lname) Complete_Name,
	Address as Addres_Department
from 
	employee,
    departament
where (Dno = Dnumber and Address like '%Houston%')
;
/*
Complete_Name	Addres_Department
______________ _______________________
John Smith		731-Fondren-Houston-TX
Franklin Wong	638-Voss-Houston-TX
Joyce English	5631-Rice-Houston-TX
James Borg		450-Stone-Houston-TX
Ahmad Jabbar	980-Dallas-Houston-TX
*/
-- ---------------------------/////////////////////////////-----------------------------------------------
select 
	concat(Fname,' ', Lname) as Nome_Completo
from 
	employee
where (Address like '%Houston%')
;
/*
Nome_Completo
______________
Joyce English
John Smith
James Borg
Franklin Wong
Ahmad Jabbar
*/
-- ---------------------------/////////////////////////////-----------------------------------------------
select 
	concat(Fname, ' ',Lname) Nome_Completo
from employee
where Salary > 30000 and Salary < 40000;

-- BETWEEN
select 
	concat(Fname, ' ',Lname) Nome_Completo,
    Salary
from employee
where Salary between 20000 and 40000;