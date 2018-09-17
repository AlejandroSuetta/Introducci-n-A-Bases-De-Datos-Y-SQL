-- Clase --
create database Instituto;	
drop database Instituto;
show databases;
use Instituto; -- comentario --
create table Alumnos (
	Nombre varchar (10),
    Apellido varchar (10),
    Edad tinyint,
    Fecha date,
    Promedio float);
use Instituto;
drop table Alumnos;
create table Alumnos (
	ID int auto_increment,
    Nombre varchar (10) not null,
    Apellido varchar (10) not null,
    Edad tinyint unsigned,
    Fecah date,
    Promedio float null,
    Primary Key (ID));
insert into Alumnos (Nombre, Apellido, Edad, Fecah, Promedio)
values ('Pablo','Garcia' ,32 ,'1984-10-6 ', 7);
select *
from Alumnos;

-- Ejercisio 1 --
create database Fábrica;
create database Colegio;
show databases;
use Fábrica;
drop database Colegio;
use Colegio; -- No se puede usas Colegio, porque fue eliminada --
show databases; -- No se ve la base de datos Colego --