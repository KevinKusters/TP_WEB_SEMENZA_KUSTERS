
create database KUSTERS_SEMENZA_TP3

go

use KUSTERS_SEMENZA_TP3

go

create table PRODUCTOS(
	ID smallint not null primary key identity(1,1),
	Nombre varchar (30) not null
)

go

create table CLIENTES(
	DNI int not null primary key,
	Nombre varchar (30) not null,
	Apellido varchar (30) not null,
	Email varchar(50) not null
)

go

create table VOUCHERS(
	ID varchar(50) not null primary key
)

go

create table VouchersXClientes(
	dnicliente int not null foreign key references clientes (DNI),
	IDvoucher varchar(50) not null foreign key references vouchers (ID),
	IDProducto smallint not null foreign key references PRODUCTOS (ID),
	primary key(IDvoucher)
)

insert into VOUCHERS (ID) values('fr773ii3')
insert into VOUCHERS (ID) values('go009uu8')
insert into VOUCHERS (ID) values('ty999oo8')
insert into VOUCHERS (ID) values('aa929kk2')
insert into VOUCHERS (ID) values('fr393ee2')
insert into VOUCHERS (ID) values('ll000ll0')
insert into VOUCHERS (ID) values('ll000ll5')
insert into VOUCHERS (ID) values('ll010ll5')
insert into VOUCHERS (ID) values('22020225')
insert into VOUCHERS (ID) values('PP0P0PP6')
insert into VOUCHERS (ID) values('SS000SS6')
insert into VOUCHERS (ID) values('jj111jj6')
insert into VOUCHERS (ID) values('xx111xx6')
insert into VOUCHERS (ID) values('xx111xx5')
insert into VOUCHERS (ID) values('xx211xx6')


insert into PRODUCTOS (Nombre) values ('PS4')
insert into PRODUCTOS (Nombre) values ('XBOX')
insert into PRODUCTOS (Nombre) values ('STADIA')

insert into CLIENTES (DNI,Nombre,Apellido,Email) values (37552665,'Sebastian','Semenza','Sebastiansemenza@gmail.com')
insert into CLIENTES (DNI,Nombre,Apellido,Email) values (11223344,'Jose','Sanchez','Josesanchez@gmail.com')
insert into CLIENTES (DNI,Nombre,Apellido,Email) values (55433344,'Marta','Olivera','MartaOlivera@gmail.com')
