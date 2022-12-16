/*
Nesta seção será criado o schema Company, o qual será trabalhado.
As seguintes tabelas irão compor o banco de dados Company. 
	departament
	dependent
	dept_locations
	employee
	project
	works_on

COMANDOS APRENDIDOS

CONSTRAINT EM SQL
	NOT NULL- impede a iserção de valores nulos dentro do banco de dados
    UNIQUE - garante que todos os valores em uma coluna sejam diferentes.
	DEFAULT - cria um campo com valor padrão.
	CHECK - É usada para limitar o intervalo de valores que pode ser colocado em uma coluna.
	CREATE SCHEMA, 
    USE,
    CREATE TABLE,
    PRIMARY KEY, (para criação de uma chave primaria)
		Geralmente, uma tabela tem uma coluna ou uma combinação de colunas que contém valores que identificam exclusivamente cada linha na tabela. 
        Essa coluna, ou colunas, é chamada de chave primária (PK) da tabela e impõe a integridade da entidade da mesma. 
        Como as restrições PRIMARY KEY garantem dados exclusivos, elas são frequentemente definidas em uma coluna de identidade.
    FOREIGN KEY, (para criação de uma chave estrangeira)
		Uma chave estrangeira (FK) é uma coluna ou combinação de colunas usada para estabelecer e impor um link entre os dados de duas tabelas, 
        a fim de controlar os dados que podem ser armazenados na tabela de chave estrangeira. 
        Em uma referência de chave estrangeira, cria-se um link entre duas tabelas quando a coluna ou as colunas que contêm 
        o valor de chave primária para uma tabela são referenciadas pela coluna ou colunas de outra tabela. 
        Essa coluna torna-se uma chave estrangeira na segunda tabela.
		Chave estrangeira = necessária para que seja possivel criar relacionamento entre duas tabelas.alter
	
    referencia: 
    https://learn.microsoft.com/pt-br/sql/relational-databases/tables/primary-and-foreign-key-constraints?view=sql-server-ver16
    


*/


CREATE SCHEMA IF NOT EXISTS Company;

use Company;

Create table Employee( -- essaa tabela foi criada especificando o schema a qual ela vai pertencer, assim não se faz necessário estar dentro do schema em questão.
	Fname varchar(15) not null,
    Minit char, -- nome do meio, essa informação pode ser nula
    Lname varchar(15) not null,
    Ssn char(9) not null,  -- pode tipo de registro utilizado no exterior, é como nosso RG.
    Bdate date, -- data do aniversário
    Address varchar(30), -- Neste caso o endereço foi criado como um unico campo.
    Sex char, 
    Salary decimal(10,2),
    Super_Ssn char(9),
    Dno int not null,
    primary key (Ssn)
);



create table Departament (
	Dname varchar(15)not null,
	Dnumber int not null,
    Mgr_Ssn char(9),
    Mgr_start_date date,
    primary key (Dnumber),
    unique (Dname),
    foreign key (Mgr_Ssn) references Employee(Ssn)
);

create table Dept_locations(
	Dnumber int not null,
    Dlocation varchar(15) not null,
    primary key (Dnumber, Dlocation), -- chave primaria composta
    foreign key (Dnumber) references Departament(Dnumber)
);

create table Project (
	Pname varchar(15) not null,
    Pnumber int not null,
    Plocation varchar(15),
    Dnum int not null,
    primary key (Pnumber),
    unique (Pname), -- um projeto estara associado apenas a um nome
    foreign key (Dnum) references Departament(Dnumber)
);
-- esta é uma tabela que depende da existencia de outras duas tabelas, ou seja, é uma entidade fraca.
create table Works_on(
	Essn char(9), -- deve ser not null
    Pno int not null,
    Hours decimal(3,1) not null,
	primary key (Essn, Pno),
    foreign key (Essn) references Employee(Ssn),
    foreign key (Pno) references project(Pnumber)
);

create table Dependent(
	Essn char(9) not null,
    Dependent_name varchar(15) not null,
    Sex char,
    Bdate date,
    Relationship varchar(8),
    primary key(Essn, Dependent_name),
    foreign key (Essn) references Employee(Ssn)
);


show tables;
desc dependent; -- apresenta a descrição de uma tabela 

-- Consultando os tipos de dados 
show character set
-- where charset = "big5"
;



/* 

*/











