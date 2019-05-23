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

insert into CLIENTES (DNI,Nombre,Apellido,Email) values (37552665,'Sebastian','Semenza','Sebastiansemenza@gmail.com')
insert into CLIENTES (DNI,Nombre,Apellido,Email) values (11223344,'Jose','Sanchez','Josesanchez@gmail.com')
insert into CLIENTES (DNI,Nombre,Apellido,Email) values (55433344,'Marta','Olivera','MartaOlivera@gmail.com')


create table VOUCHERS(
	ID varchar(50) not null primary key
)
go
create table VouchersXClientes(
	dnicliente int not null foreign key references clientes (DNI),
	IDvoucher varchar(50) not null foreign key references vouchers (ID),
	primary key(IDvoucher)
)


SELECT DNI FROM CLIENTES WHERE DNI LIKE 37552665
select * from CLIENTES
select * from VouchersXClientes




insert into VOUCHERS (ID) values('fr773ii3')
insert into VOUCHERS (ID) values('go009uu8')
insert into VOUCHERS (ID) values('ty999oo8')
insert into VOUCHERS (ID) values('aa929kk2')
insert into VOUCHERS (ID) values('fr393ee2')
insert into VOUCHERS (ID) values('ll000ll0')