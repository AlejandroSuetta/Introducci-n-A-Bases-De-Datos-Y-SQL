set sql_safe_updates = 0; /* Saca o pone el seguro conmtra delete y updates */
/* Clase */
Create database autoincrement;
Use  autoincrement;
Create table Alumnos(
	id int auto_increment,
	nombre varchar (30),
	edad tinyint,
	promedio float,
	curso varchar (30),
	primary key (id));
Insert into alumnos (nombre, edad, promedio, curso)
	values ('Mariela', 20, 3, 'Primero'),
		('Mariel', 20, 7, 'Primero'),
		('Mauro', 25, 4, 'Primero'),
		('Hernan', 30, 8, 'Segundo'),
		('Claudio', 23, 6, 'Segundo'),
		('Mariana', 26, 5, 'Primero'),
		('Julia', 28, 6, 'Tercero'),
		('Francisco', 30, 6, 'Tercero'),
		('Andres', 31, 8, 'Primero'),
		('Eliana', 25, 7, 'Segundo'),
		('Luz', 26, 8, 'Primero');
delete from alumnos;
truncate table alumnos; /* Reinicializa la tabla */
select avg (promedio)
	from alumnos;




/* Ejercicios */
Create database Clase3; /* 3.txt y 3.1.txt */
Use  Clase3;
Create table Alumnos(
	nombre varchar (30),
	edad tinyint,
	promedio float,
	curso varchar (30));
Insert into alumnos
	values ('Mariela', 20, 3, 'Primero'),
		('Mariel', 20, 7, 'Primero'),
		('Mauro', 25, 4, 'Primero'),
		('Hernan', 30, 8, 'Segundo'),
		('Claudio', 23, 6, 'Segundo'),
		('Mariana', 26, 5, 'Primero'),
		('Julia', 28, 6, 'Tercero'),
		('Francisco', 30, 6, 'Tercero'),
		('Andres', 31, 8, 'Primero'),
		('Eliana', 25, 7, 'Segundo'),
		('Luz', 26, 8, 'Primero');
insert into alumnos /* Ingresar un alumno nuevo con los siguientes datos: Nombre: Damian, edad:18, promedio 6, curso primero */
	values ('Damian', 18, 6, 'Primero');
update alumnos /* Modificar el alumno que tenga de nombre Franciso a Mariano */
	set nombre = 'Mariano'
    where nombre = 'Francisco';
delete from alumnos /* Eliminar al alumno de nombre Andres */
	where nombre = 'Andres';
select max(promedio) /* Nombre del alumno con mayor promedio */
	from alumnos;
select nombre
	from alumnos
	where promedio = 8;
select min(promedio) /* Alumno con menor promedio */
	from alumnos;
select nombre
	from alumnos
    where promedio = 3;
select count(*) /* Cantidad de alumnos */
	from alumnos;
select curso, count(*) /* la cantidad de alumnos por curso */
	from alumnos
    group by curso;
select curso, avg(edad) /* la edad promedio por curso */
	from alumnos
	group by curso;
select curso, avg(promedio) /* el promedio de los alumnos por curso, ordenado por curso de manera desc */
	from alumnos
    group by curso 
    order by curso desc;
select curso, avg(promedio) /* El promedio de los alumnos por curso, mostrar solo si el promedio es mayor a 6 */
	from alumnos
    group by curso
    having avg(promedio) > 6;
select max(edad), min(edad), avg(edad) /* Seleccionar Maximo de edad, Minimo de edad y promedio de edad de los alumnos */
	from alumnos;