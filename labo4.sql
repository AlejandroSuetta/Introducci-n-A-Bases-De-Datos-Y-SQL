create database labo4;
use labo4;
create table clientes (
	ID integer , Nombre varchar (20), Apellido varchar (20), Primary Key (ID));
insert into clientes
	value (1, 'Alejandro', 'Suetta'),
			(2,'Adrain', 'Suetta'),
            (3, 'Alicia', 'Lanfranco'),
            (4, 'Oscar', 'Cardoso'),
            (5, 'Alan', 'König');
create table factura (Letra char (1), Numero integer, Monto int, Fecha date, Cliente integer, Primary Key (Letra, Numero), Foreign Key (Cliente) references Clientes (ID));
insert into factura
	value ('A', 1, 1585, '2018-05-10', 1),
			('B', 1, 1565, '2018-05-10', 2),
            ('B', 2, 1414, '2018-05-09', 1),
            ('B', 3, 1235, '2018-05-10', 3),
            ('A', 2, 2565, '2018-05-09', 4);
select C.nombre, c.apellido
	from clientes C join factura F
    on C.ID = F.Cliente
    where F.fecha = '2018-05-10';
select C.nombre, sum(f.monto)
	from clientes C join factura F
    on C.ID = F.Cliente
    group by C.nombre;
select c.nombre, max(f.monto)
	from clientes C join factura F
    on c.id = f.cliente
    group by c.nombre desc
	limit 1;
select c.nombre, count(f.letra)
	from clientes C join factura f
	on c.id = f.cliente
    group by nombre;
select c.nombre, c.apellido
	from clientes C join factura F
    on c.id = f.cliente
    where fecha = '2018-05-09';
select f.letra
	from clientes C join factura F
    on c.id = f.cliente
    where c.nombre = 'alejandro';