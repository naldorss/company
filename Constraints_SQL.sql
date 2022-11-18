/* 
def	company	Dname	company	departament	UNIQUE	YES
def	company	PRIMARY	company	departament	PRIMARY KEY	YES
def	company	departament_ibfk_1	company	departament	FOREIGN KEY	YES
def	company	PRIMARY	company	dependent	PRIMARY KEY	YES
def	company	dependent_ibfk_1	company	dependent	FOREIGN KEY	YES
def	company	PRIMARY	company	dept_locations	PRIMARY KEY	YES
def	company	dept_locations_ibfk_1	company	dept_locations	FOREIGN KEY	YES
def	company	PRIMARY	company	employee	PRIMARY KEY	YES
def	company	Pname	company	project	UNIQUE	YES
def	company	PRIMARY	company	project	PRIMARY KEY	YES
def	company	project_ibfk_1	company	project	FOREIGN KEY	YES
def	company	PRIMARY	company	works_on	PRIMARY KEY	YES
def	company	works_on_ibfk_1	company	works_on	FOREIGN KEY	YES
def	company	works_on_ibfk_2	company	works_on	FOREIGN KEY	YES
*/


-- Consultando as contraints

select * from information_schema.table_constraints
where constraint_schema = 'company';

select * from information_schema.referential_constraints
where constraint_schema = 'company';