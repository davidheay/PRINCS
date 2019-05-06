create table Tipo (
	ID_Tipo int primary key NOT NULL,
	Nombre varchar(50)NOT NULL);

create table Lote(
	ID_Lote int primary key NOT NULL,
	nombre varchar(50) NOT NULL,
	capacidad varchar(50) NOT NULL,
	lugar varchar(50)NOT NULL);

create table Mercancia(
	ID_Mercancia int primary key NOT NULL,
	ID_Tipo int NOT NULL,
	estado varchar(20) NOT NULL,
	observaciones varchar(50) NOT NULL,
	N_Piezas int NOT NULL,
	ID_Lote int NOT NULL,
	ID_In int NOT NULL,
	ID_Out int NOT NULL,
	valor int NOT NULL,
	moneda int NOT NULL);

create table Reserva(
	ID_Reserva int primary key NOT NULL,
	ID_Mercancia int NOT NULL,
	tipo_Acta varchar(20) NOT NULL,
	ID_Cliente int NOT NULL,
	ID_Empleado int NOT NULL,
	fecha datetime NOT NULL,
	placa varchar(20) NOT NULL,
	ID_Transportadora int NOT NULL,
	N_Piezas int NOT NULL,
	/*NOM_COM ???*/
	/*cc_con ???*/
	documentos varchar(50),
	peso float NOT NULL,
	valor int NOT NULL,
	ID_Embalaje int NOT NULL,
	etiquetas varchar(40) NOT NULL,
	reg_Fotografico varchar(50) NOT NULL,
	ID_Estado int NOT NULL,
	observaciones varchar(255),
	firma varchar(30) NOT NULL,
	Entrega_NOM varchar(50) NOT NULL,
	cc_entrega varchar(50) NOT NULL,
	moneda varchar(50) NOT NULL
	);

create table Cliente(
	ID_Cliente int primary key NOT NULL,
	nombre varchar(50) NOT NULL,
	direccion varchar(50) NOT NULL,
	telefono varchar(15) NOT NULL);

create table Empleado(
	ID_Empleado int primary key NOT NULL,
	nombre varchar(50) NOT NULL,
	correo varchar(50) NOT NULL,
	Tipo_Permiso varchar(20) NOT NULL,
	contraseña varchar(20));

create table Transportadora(
	ID_Transportadora int primary key NOT NULL,
	Nombre varchar(50));

create table Estado(
	ID_Estado int primary key NOT NULL,
	estado varchar(50));