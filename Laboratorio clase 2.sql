create database labo2;
use labo2;
create table articulos (
	nombre varchar (20),
    precio int);
insert into articulos (nombre, precio)
	values ('mesa', 10),
			('banco,', 5),
            ('silla', 3),
            ('armario', 200),
            ('comoda', 100),
            ('cama', 150),
            ('cama 2', 175),
            ('mesa plegable', 35),
            ('mesa de luz', 75),
            ('estufa', 60);
alter table articulos add (stock int);
insert into articulos (stock)
	values (15),
			(20),
            (2),
			(51),
            (80),
            (16),
            (5),
            (10),
            (31),
            (16);
            
create table clientes (
	nombre varchar (15),
    apellido varchar (15));
insert into clientes (nombre, apellido)
	values ('jose', 'martin'),
			('ale', 'ruben'),
            ('adre', 'patricio'),
            ('alan', 'konnig'),
			('jan', 'gebert'),
            ('juan', 'lacasa'),
            ('nicolas', 'bethke'),
            ('nicolas', 'unger'),
            ('lucas', 'kirchner'),
            ('felix', 'secchi');
create table factura (
	id int auto_increment,
    letra char (1),
    numero int,
    Primary Key (id));
insert into factura (letra, numero)
	values ('A', 012854),
			('B', 125346),
            ('B', 685412),
            ('A', 012321),
            ('A', 951235),
            ('A', 145214),
            ('B', 888564),
            ('A', 000023),
            ('B', 555215),
            ('A', 666666);
select *
	from articulos
    where precio > 100;
select *
	from articulos
    where precio > 20 and precio < 40;
select *
	from articulos
	where precio between 40 and 60;
select *
	from articulos
    where precio = 20
    and stock > 30;
select *
	from articulos
    where precio = 12 or precio = 20 or precio = 30;
select *
	from articulos
    where precio in (12, 20, 30);
select *
	from articulos
    where precio not in (12, 20, 30);
select *
	from articulos
    order by precio, nombre asc;
select precio*1.21 as Precio_con_IVA
	from articulos;
select '3' as cantidad_de_cuoras, (precio/3)*1.05 as valor_de_l_cuota
	from articulos;




create table articulos2 (
	codigo integer,
    nombre varchar (20),
    descripcion varchar (30),
    precio float,
    cantidad integer);
insert into articulos2 (codigo, nombre, descripcion, precio, cantidad)
	values (012523, 'monitor', 'pantalla_de_pc', 252.32, 10),
			(523652, 'parlantes', 'para_escuchar_musica', 110.20, 30),
            (523620, 'mouse', 'raton', 30.64, 50),
            (951214, 'teclado', 'para_escribir', 60.69, 25),
            (999958, 'cpu', 'computadora_en_si', 1528.65, 5);
select *
	from articulos2;
select *
	from articulos2
	where nombre = 'monitor';
select *
	from articulos2
    where precio >= 500;
select *
	from articulos2
	where cantidad < 30;
select nombre, descripcion
	from articulos2
    where precio <> 100;
select *
	from articulos2
    where descripcion like '%de%';
select *
	from articulos2
	where precio between 100 and 200;
select *
	from articulos2
    where precio*1.21 < 100;
select *
	from articulos2
	where cantidad < 10
    and precio*1.21 > 200;
select *
	from articulos2
    where precio/3 < 50;
    
drop database labo2;