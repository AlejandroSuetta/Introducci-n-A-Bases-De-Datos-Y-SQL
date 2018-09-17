create table autos (
	codigo integer,
    marca varchar (255),
    modelo varchar (255),
    color varchar (255),
    anio integer,
    precio double,
    Primary Key (codigo));
insert into autos
	values (1, 'citroen', 'zara', 'gris', 2006, 50000),
			(2, 'renault', 'sander', 'negro', 2015, 100000),
            (3, 'ferrari', 'testarosa', 'rojo', 2002, 150000),
            (4, 'bugatti', 'baron', 'naranja', 2005, 135000),
            (5, 'peugeot', 'sia', 'plateado', 2013, 75000),
            (6, 'ford', 'mustan', 'negro', 2010, 160000),
            (7, 'ford', 'clio', 'azul', 2018, 95000),
            (8, 'volkswagen', 'amarok', 'blanco', 2017, 110000),
            (9, 'toyota', 'hilux', 'plateado', 2012, 105000),
            (10, 'renault', 'kwik', 'amarillo', 2017, 95000),
            (11, 'mazda', 'rx8', 'azul', 2013, 185000),
            (12, 'lamborguini', 'murcielado', 'rojo', 2010, 210000),
            (13, 'volkswagen', 'gol', 'rojo', 2007, 40000),
            (14, 'nissan', 'tiida', 'blanco', 2010, 65000),
            (15, 'honda', 'civic', 'gris', 2011, 55000);
select max(precio)
	from autos;
select min(precio)
	from autos;
select min(precio)
	from autos;
select anio
	from autos
    where precio = 40000;
select avg(precio)
	from autos;
select avg(precio)
	from autos
    where anio = 2006;
select count(*)
	from autos;
select count(*)
	from autos
    where precio between 35000 and 40000;
select anio, count(*)
	from autos
    group by anio;
select anio, count(*), avg(precio)
	from autos
    group by anio;
select marca, sum(precio), avg(precio)
	from autos
	group by marca;
    
    
    

set sql_safe_updates = 0;    
create table cursos(

        codigo int,

        nombre varchar(20),

        dias varchar(10),

        inscriptos int,

        primary key(codigo));

insert into cursos values

        (1,'PHP','lunes',10),

        (2,'Java','lunes',5),

        (3,'Corel Draw','martes',2),

        (4,'Java','martes',5),

        (5,'MySQL','martes',5),

        (6,'Oracle','miercoles',6),

        (7,'C#.net','jueves',5),

        (8,'C#.net','viernes',4),

        (9,'PHP','lunes',10),

        (10,'C#.net','lunes',5),

        (11,'Corel Draw','martes',2),

        (12,'Oracle','martes',5),

        (13,'PHP','martes',5),

        (14,'Oracle','miercoles',6),

        (15,'C#.net','jueves',5),

        (16,'Java','viernes',4);
update cursos
	set inscriptos = inscriptos + 1
    where nombre = 'java'
		and dias = 'lunes';
update cursos
	set inscriptos = 0
    where dias = 'martes';
delete from cursos
	where nombre = 'java'
		and dias = 'martes';
update cursos
	set inscriptos = inscriptos + 5
    where inscriptos < 5;
update cursos
	set nombre = 'Java 2 SR'
    where nombre = 'java';




create table empleados(

        codigo int auto_increment,

        nombre varchar(20) not null,

        apellido varchar(20) not null,

        seccion varchar(20),

        sueldo float,

        primary key (codigo));

insert into empleados (nombre,apellido,seccion,sueldo) values

        ('juan','perez','administracion',7200),

        ('diego','torres','ventas',3520),

        ('laura','gomez','ventas',4600),

        ('mario','lopez','produccion',4500),

        ('dario','sanchez','administracion',8600),

        ('juan','boneli','administracion',7200),

        ('diego','martinez','ventas',3520),

        ('laura','moretti','ventas',4600),

        ('sandra','lazante','produccion',4500),

        ('susana','mendez','administracion',8600);
update empleados
	set seccion = 'prodiccion'
    where nombre = 'mariano'
		and apellido = 'lopez';
update empleados
	set sueldo = sueldo * 1.15
    where seccion = 'ventas';
update empleados
	set sueldo = sueldo * 1.08
    where seccion = 'produccion'
		and sueldo < 6000;
delete from empleados
	where nombre = 'susana'
		and apellido = 'mendez';
update empleados
	set sueldo = sueldo * 1.04
    where sueldo >= 5000;
update empleados
	set sueldo = sueldo * 1.08
	where sueldo < 5000;

            
            

drop database db;