Create  database Biblioteca2;
use biblioteca2;
create table alumnos(
	id int auto_increment,
	nombre varchar(30),
	Primary Key (id));
create  table libros(
	id int auto_increment,
	nombre varchar(30),
	Primary Key (id));
Create table prestamo(
	id_alumno int,
	id_libro int,
	Foreign key (id_alumno) References Alumnos(ID), /* Foreign Key representa clave primaria en otra tabla */
	Foreign key (id_libro) References libros(ID));
Insert into alumnos(nombre) 
	values ('Mariel'),('Simon'), ('Elisa');
select * 
from alumnos;
Insert into libros(nombre) 
	values ('Harry Potter'),('El arte de la guerra'), ('El señor de los anillos');
Insert into prestamo 
	values (1,2);
Insert into prestamo 
	values (2,3);
Insert into prestamo 
	values (3,9);
select * from prestamo;
delete from alumnos where id = 1;





/* Ejercicios*/
Create database Facultad;
use facultad;
create table Alumnos(
	alumnoID int auto_increment,
	nombre varchar(20),
	carrera int,
	Primary key (alumnoID));
create  table carreras(
	carreraId int auto_increment,
	descripcion varchar(20),
	primary key (carreraID));
insert into alumnos (nombre, carrera)
	values ('Mariano',  1),
		('Andres', 2),
		('Claudia', 3),
		( 'Cecilia', 1),
		('Sebastian',  1),
		('Florencia', 3),
		('Cristian', 2),
		('Mariano', 2);
Select * from alumnos;
insert into carreras (descripcion)
	values ('Medicina'),('Biologia'),('Sistemas');
select * from carreras;
select nombre
	from alumnos
    where carrera in (select carreraid from carreras where descripcion = 'medicina');




Create table articulos(
	Idarticulos int auto_increment,
	descripcion varchar(20),
	precio int,    --  Acá esta como int, deberia ser un float, pero bueno...
	Primary key(idarticulos));
insert into articulos (descripcion, precio)
	values ('Monitor', 3000), ('CPU', 5000), ('Teclado', 150), ('Mouse', 100);
select descripcion, precio, (select min(precio) from articulos)-precio
	from articulos;




create  table Alumnos2(
	alumnoID int auto_increment,
	nombre varchar(20),
	nota int,
	Primary key (alumnoID));
insert into alumnos2 (nombre, nota)
	values ('Mariano',  3),
			('Andres', 5),
			('Claudia', 9),
			( 'Cecilia', 1),
			('Sebastian',  5),
			('Florencia', 9),
			('Cristian', 4),
			('Mariano', 3);
Create table Promedios(
	descripcion varchar(10),
	promedio int);
insert into promedios
	values ('Primero', 9), ('Segundo',10), ('Tercero',8);
select nombre, nota, (select promedio from promedios where descripcion = 'Primero')
	from alumnos2;




Create database Biblioteca;
use biblioteca;
create table alumnos(
	id int auto_increment,
	nombre varchar(30),
	Primary Key (id));
create  table libros(
	id int auto_increment,
	nombre varchar(30),
	Primary Key (id));
Create table prestamo(
	id_alumno int,
	id_libro int);
Insert into alumnos(nombre) 
	values ('Mariel'),('Simon'), ('Elisa');
select * from alumnos;
Insert into libros(nombre) 
	values ('Harry Potter'),('El arte de la guerra'), ('El señor de los anillos');
Insert into prestamo 
	values (1,2);
Insert into prestamo 
	values (2,3);
Insert into prestamo 
	values (3,9);
select * from prestamo;
delete from alumnos where id = 1;




Create  database Biblioteca2;
use biblioteca2;
create table alumnos(
	id int auto_increment,
	nombre varchar(30),
	Primary Key (id));
create  table libros(
	id int auto_increment,
	nombre varchar(30),
	Primary Key (id));
Create table prestamo(
	id_alumno int,
	id_libro int,
	Foreign key (id_alumno) References Alumnos(ID),
	Foreign key (id_libro) References libros(ID));
Insert into alumnos(nombre) 
	values ('Mariel'),('Simon'), ('Elisa');
select * from alumnos;
Insert into libros(nombre) 
	values ('Harry Potter'),('El arte de la guerra'), ('El señor de los anillos');
Insert into prestamo 
	values (1,2);
Insert into prestamo 
	values (2,3);
select A.nombre, P.id_libro
	from alumnos A join prestamo P
    on A.ID = P.id_alumno;
select L.nombre, P.id_alumno
	from libros L join prestamo P
    on L.id = P.id_libro;
select A.nombre, L.nombre
	from alumnos A join prestamo P
    on A.id = P.id_alumno join libros L
		on P.id_libro = L.id;