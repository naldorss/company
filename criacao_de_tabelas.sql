show databases;
create database first_example;
use first_example;
show tables;
CREATE TABLE Person(
	Person_id smallint unsigned,
    Fname varchar(20),
    Lname varchar(20),
    gender enum('M','F'),
    birth_date date,
    Street varchar(30),
    City varchar(20),
    State varchar(20),
	Country varchar(20),
    Postal_code varchar(10),
    constraint pk_person primary key (Person_id)
    );

CREATE TABLE favorite_food(
	Person_id smallint unsigned,
    food varchar (20),
    constraint pk_favorite_food primary key (Person_id, food),
    constraint pf_favorite_food_Person_id foreign key(Person_id)
    references Person(Person_id)
);
desc favorite_food