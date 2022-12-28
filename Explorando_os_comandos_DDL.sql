-- explorando os comandos de DDL

select now() as Timestamp;
create database if not exists manipulation;

use manipulation;

CREATE TABLE bankAccounts (
	Id_account INT auto_increment PRIMARY KEY,
	Ag_num INT NOT NULL,
	Ac_num INT NOT NULL,
	Saldo FLOAT,
	CONSTRAINT identification_account_constraint UNIQUE (Ag_num, Ac_num)
);
-- Inserindo um novo registro em bankAccounts
insert into bankAccounts(Ag_num, Ac_num, Saldo)
values(156, 264358, 0 );
select * from bankAccounts;
-- inserindo um atributo na tabela bankAccounts
alter table bankAccounts add LimiteCredito float not null default 500.00;
desc bankAccounts;
-- adicionando e dropando um atributo
alter table bankAccounts add email varchar(60);
alter table bankAccounts drop email;


CREATE TABLE bankClient(
	Id_client INT auto_increment,
	ClientAccount INT,
	CPF CHAR(11) NOT NULL,
	RG CHAR(9) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Endereço VARCHAR(100) NOT NULL,
	Renda_mensal FLOAT,
    primary key (Id_client, ClientAccount),
	CONSTRAINT fk_acconut_client foreign key (ClientAccount) REFERENCES bankAccounts(Id_account) 
	ON UPDATE CASCADE
);
-- Adicionando um registro em um campo
insert into bankClient( ClientAccount, CPF, RG, Nome, Endereço, Renda_Mensal)
values(1, 12345678913, 123465789,'Fulano', 'rua de la', 6500.60);
 select * from bankClient;
alter table bankClient add UFF char(2) not null default 'SP';

-- em modo protegido, o que impediu a utilização de update neste momento
update bankClient set UFF = 'MG' where Nome = 'Fulano';
DESC bankClient;
CREATE TABLE bankTransactions(
	Id_transcation INT auto_increment PRIMARY KEY,
	Ocorrencia datetime,
	Status_transaction VARCHAR(20),
	Valor_transferido FLOAT,
	Source_account INT,
	Destination_account INT,
	CONSTRAINT fk_source_transaction foreign key (Source_account) REFERENCES
	bankAccounts(id_Account),
	CONSTRAINT fk_destionation_transaction foreign key (destination_account) REFERENCES
	bankAccounts(id_Account)
);

UPDATE Customers SET UF ='RJ' WHERE City='Rio de Janeiro';

-- drop versus delete statement

drop table bankTransactions;
drop database manipulation;

DELETE FROM bankClient WHERE name='Teste';

ALTER TABLE bankClient ADD Email varchar(255);
ALTER TABLE Customers DROP COLUMN Email;
-- ALTER TABLE table_name MODIFY COLUMN column_name datatype;
-- ALTER TABLE Custumers ADD CONSTRAINT;
show tables;

SELECT account_id, product_cd, open_date, avail_balance
FROM account
ORDER BY avail_balance DESC;