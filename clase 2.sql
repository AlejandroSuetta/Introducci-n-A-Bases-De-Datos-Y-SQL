/*Clase 2*/
create database DB;
use DB;
create table Articulos (
	ID int,
    Articulo varchar (10),
    Stock int);
alter table Articulos add (Descripcion varchar (12)); /*Para agregar campos*/
select *
	from Articulos;
alter table Articulos drop Stock; /*Para eliminar campos*/
alter table Articulos change Articulo Productos varchar (30); /*Paramodificar campos (nombre o tipo de dato)*/
select 2 + 2; /*Devuelve el resultado*/
create table alumnos (
	ID int auto_increment,
    nombre varchar (20),
    edad tinyint, 
    promedio int,
    Primary Key (id));
insert into alumnos (id, nombre, edad, promedio)
	values (1, 'German', 15, 7);
select nombre, edad /*Ver los campos especificados*/
	from alumnos;
select nombre, edad +2 /*Cambia en la visualizacion, pero no en la tabla*/
	from alumnos;
select *
	from alumnos
    where nombre = 'German' /*buscar datos en espesifico (=, <, >, >=, <=, <>)*/
    and edad < 20 /*Para buscar mas de un dato. Tiene que cumplir con todas las condiciones. Se pueden poder todos los and que quiera*/
    or nombre =  'Marcos'; /*Con que se cumpla una de las condiciones, se va a visualizar*/
select *
	from alumnos
    where edad > 25 and nombre = 'German' /*Para visualizar se tienen que cumplirse con ambas condiciones*/
    or edad <25 and nombre = 'elisa'; /*Para visualizarse se tienen que cumplir una de las dos lineas*/
select *
	from alumnos
    where edad between 18 and 30; /*Para visulizar rangos. Incluye los extremos*/
select *
	from alumnos
    where edad in (18, 21, 25, 31); /*Paravisualizar de una lista ingresada (lo que esta entre ())*/
select *
	from alumnos
    where nombre like '_a%'; /*Para buscar patrones. _ simboliza un solo lugar, % sumboliza 0, 1 o muchos lugares*/
select nombre, edad
	from alumnos
	where edad is null; /*Para buscar datos null*/
select nombre, ifnull(edad, 20) /*Para ver y remplazar el null con un valor cualquiera*/
	from alumnos;
select nombre, edad + 1 as edadaumentada /*Se llama allias. Espara cambiar el nombre del campo en la visualizacion solamente. El "as" es opcional*/
	from alumnos;
select nombre
	from alumnos
    order by nombre; /*Para ordenar los resultados*/



    
    

/*Ejersicio 1*/
create database instituto2;
use instituto2;
create table alumnos (
	id int auto_increment,
    nombre varchar (20) not null,
    apellid varchar (20) not null,
    edad int,
    nota tinyint,
    direccion varchar (30),
    Primary Key (id));
rename table alumnos to estudiantes;
alter table estudiantes add (dni varchar (10));
alter table estudiantes change apellid Apellido varchar (30) not null;
alter table estudiantes drop direccion;
drop table estudiantes;
drop database instituto2;



/*Ejersicio 2*/
create database instituto2;
use instituto2;
create table alumnos (
	id int auto_increment,
	dni int,
    nombre varchar (20) not null,
    apellido varchar (20) not null, 
    edad int,
    nota float,
    Primary key (id));
insert into alumnos (dni, nombre, apellido, edad, nota)
	values (31523458, 'Mariano', 'Ferraro', 18, 6),
			(32524559, 'Andres', 'Dupuy', 20, 8),
			(31624159, 'Claudia', 'Villar', 23, 7),
			(33151235, 'Cecilia', 'Zuleta', 21, 4),
			(32321561, 'Sebastian', 'Garcia', 20, 9),
			(31324156, 'Florencia', 'Bello', 19, 3),
			(31023987, 'Cristian', 'Balbo', 24, 5);
Insert into Alumnos(DNI, Nombre, Apellido, nota)
	values (33515624, 'Mariano', 'Cruz',  7);
select id, dni, nombre, apellido, edad, nota
	from alumnos;
select *
	from alumnos
	where edad > 21;
select nombre, apellido
	from alumnos
	where nota < 5;
select nombre, apellido, nota + 1
	from alumnos;
select *
	from alumnos
    where edad = 20 /*Se pudo hacer tambien con el "where edad in (20, 23)"*/
    or edad = 23;
select *
	from alumnos
    where edad >=18
    and edad <= 21;
select nombre, apellido
	from alumnos
    where edad between 18 and 21;