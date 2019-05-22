create database TP_WEB_SEMENZA_KUSTERS
go
use TP_WEB_SEMENZA_KUSTERS
go

create table PRODUCTOS(
	ID smallint not null primary key identity(1,1),
	Nombre varchar (30) not null,
	URL varchar (100) not null
)

insert into PRODUCTOS (Nombre,URL) values ('PS4','PS4.jpg')
insert into PRODUCTOS (Nombre,URL) values ('XBOX','Xbox.jpg')
insert into PRODUCTOS (Nombre,URL) values ('STADIA','Stadia.jpg')

create table CLIENTES(
	DNI int not null primary key,
	Nombre varchar (30) not null,
	Apellido varchar (30) not null,
	Email varchar(50) not null
)

create table VOUCHERS(
	ID varchar(50) not null primary key
)