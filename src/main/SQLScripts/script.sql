USE [master]
GO
/****** Object:  Database [PRINCS_DB]    Script Date: 25/05/2019 09:25:54 a. m. ******/
CREATE DATABASE [PRINCS_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRINCS_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PRINCS_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRINCS_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PRINCS_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PRINCS_DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRINCS_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRINCS_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRINCS_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRINCS_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRINCS_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRINCS_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRINCS_DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRINCS_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRINCS_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRINCS_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRINCS_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRINCS_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRINCS_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRINCS_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRINCS_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRINCS_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRINCS_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRINCS_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRINCS_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRINCS_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRINCS_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRINCS_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRINCS_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRINCS_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRINCS_DB] SET  MULTI_USER 
GO
ALTER DATABASE [PRINCS_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRINCS_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRINCS_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRINCS_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRINCS_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRINCS_DB] SET QUERY_STORE = OFF
GO
USE [PRINCS_DB]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 25/05/2019 09:25:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID_Cliente] [varchar](5) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Telefono] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 25/05/2019 09:25:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID_Empleado] [varchar](5) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[Tipo_Permiso] [varchar](20) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[contraseña] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 25/05/2019 09:25:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[ID_Estado] [varchar](5) NOT NULL,
	[estado] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lote]    Script Date: 25/05/2019 09:25:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lote](
	[ID_Lote] [varchar](5) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[capacidad] [varchar](50) NOT NULL,
	[lugar] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Lote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mercancia]    Script Date: 25/05/2019 09:25:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mercancia](
	[ID_Mercancia] [varchar](5) NOT NULL,
	[ID_CLIENTE] [varchar](5) NULL,
	[ID_Tipo] [varchar](5) NOT NULL,
	[estado] [varchar](20) NOT NULL,
	[observaciones] [varchar](50) NOT NULL,
	[N_Piezas] [int] NOT NULL,
	[ID_Lote] [varchar](5) NOT NULL,
	[RESERVA_IN] [varchar](5) NOT NULL,
	[RESERVA_OUT] [varchar](5) NOT NULL,
	[valor] [int] NOT NULL,
	[moneda] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Mercancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 25/05/2019 09:25:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[ID_Reserva] [varchar](5) NOT NULL,
	[ID_Mercancia] [varchar](5) NOT NULL,
	[tipo_Acta] [varchar](20) NOT NULL,
	[ID_Cliente] [varchar](5) NOT NULL,
	[ID_Empleado] [varchar](5) NOT NULL,
	[fecha] [date] NOT NULL,
	[placa] [varchar](20) NOT NULL,
	[ID_Transportadora] [varchar](5) NOT NULL,
	[N_Piezas] [int] NOT NULL,
	[Nombre_Conductor] [varchar](50) NOT NULL,
	[cedula_Conductor] [varchar](50) NOT NULL,
	[documentos] [varchar](50) NULL,
	[peso] [float] NOT NULL,
	[valor] [int] NOT NULL,
	[ID_Embalaje] [int] NOT NULL,
	[etiquetas] [varchar](40) NOT NULL,
	[reg_Fotografico] [varchar](50) NOT NULL,
	[ID_Estado] [varchar](5) NOT NULL,
	[observaciones] [varchar](255) NULL,
	[firma] [varchar](30) NOT NULL,
	[Entrega_NOM] [varchar](50) NOT NULL,
	[cc_entrega] [varchar](50) NOT NULL,
	[moneda] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 25/05/2019 09:25:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[ID_Tipo] [varchar](5) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transportadora]    Script Date: 25/05/2019 09:25:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transportadora](
	[ID_Transportadora] [varchar](5) NOT NULL,
	[Nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Transportadora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C1', N'OMA', N'OMA@GMAIL.COM', N'7354452')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C10', N'CARIBBEAN EXOTICS', N'CARIBBEAN_EXOTICS@GMAIL.COM', N'7317456')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C11', N'SETAS COLOMBIA NAS', N'SETAS_COLOMBIA_NAS@GMAIL.COM', N'7462222')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C2', N'JUAN VALDEZ', N'JUAN_VALDEZ@GMAIL.COM', N'7425678')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C3', N'RESCAFE', N'RESCAFE@GMAIL.COM', N'4385722')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C4', N'FLOWERS & FLOWERS', N'FLOWERS&FLOWERS@GMAIL.COM', N'7476827')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C5', N'IMAPAR', N'IMAPAR@GMAIL.COM', N'5789016')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C6', N'FLORES COLON', N'FLORESCOLON@GMAIL.COM', N'2413278')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C7', N'AGRIFRESH', N'AGRIFRESH@GMAIL.COM', N'5578903')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C8', N'THE FARM FRESH', N'THE_FARM_FRESH@GMAIL.COM', N'6780923')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Correo], [Telefono]) VALUES (N'C9', N'VIVE CAFE', N'VIVE_CAFE@GMAIL.COM', N'4467091')
INSERT [dbo].[Empleado] ([ID_Empleado], [nombre], [correo], [Tipo_Permiso], [Usuario], [contraseña]) VALUES (N'E1', N'MARIANA VALENTINA HERRERA', N'MAVAHE@GMAIL.COM', N'ADMIN', N'MAVAHE', N'12345')
INSERT [dbo].[Empleado] ([ID_Empleado], [nombre], [correo], [Tipo_Permiso], [Usuario], [contraseña]) VALUES (N'E2', N'DAVID ESTEBAN SAAVEDRA BARRERA', N'DASABA@GMAIL.COM', N'ADMIN', N'DASABA', N'ABCDE')
INSERT [dbo].[Empleado] ([ID_Empleado], [nombre], [correo], [Tipo_Permiso], [Usuario], [contraseña]) VALUES (N'E3', N'ANDRES VILLARREAL', N'ANDRESVI@GMAIL.COM', N'OPERARIO', N'ANDRESVI', N'ANDRES1999')
INSERT [dbo].[Empleado] ([ID_Empleado], [nombre], [correo], [Tipo_Permiso], [Usuario], [contraseña]) VALUES (N'E4', N'NESTOR FERNANDO PORRAS', N'NESTORPO@GMAIL.COM', N'OPERARIO', N'NESTORPO', N'NESTOR2000')
INSERT [dbo].[Empleado] ([ID_Empleado], [nombre], [correo], [Tipo_Permiso], [Usuario], [contraseña]) VALUES (N'E5', N'NICOLE CERINZA', N'NICOLECE@GMAIL.COM', N'OPERARIO', N'NICOLECE', N'NICOLE1999')
INSERT [dbo].[Estado] ([ID_Estado], [estado]) VALUES (N'ES1', N'ON HOLD')
INSERT [dbo].[Estado] ([ID_Estado], [estado]) VALUES (N'ES2', N'IN STOCK')
INSERT [dbo].[Estado] ([ID_Estado], [estado]) VALUES (N'ES3', N'CLOSED')
INSERT [dbo].[Lote] ([ID_Lote], [nombre], [capacidad], [lugar]) VALUES (N'L1', N'BODEGA 1', N'100', N'PUERTA DEL SOL')
INSERT [dbo].[Lote] ([ID_Lote], [nombre], [capacidad], [lugar]) VALUES (N'L2', N'BODEGA 2', N'100', N'INTEXONA')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M001', N'C1', N'T1', N'ES1', N'LLEGA EL DIA 31/05/2019 EN LAS HORAS DE LA MAÑANA', 50, N'L1', N'NULL', N'NULL', 12000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M002', N'C4', N'T1', N'ES2', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', 100, N'L2', N'R2', N'NULL', 5000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M003', N'C10', N'T3', N'ES1', N'LLEGADA EL DIA 05/06/2019 EN LA TARDE', 70, N'L1', N'NULL', N'NULL', 15000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M004', N'C3', N'T1', N'ES3', N'SALIDA EL DIA 20/05/2019 EN LA MAÑANA', 20, N'L1', N'R4', N'R15', 7000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M005', N'C2', N'T1', N'ES2', N'SALIDA EL DIA 01/06/2019 EN LA MAÑANA', 60, N'L1', N'R5', N'NULL', 17000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M006', N'C5', N'T5', N'ES1', N'LLEGADA EL DIA 31/05/2019 EN LA TARDE', 25, N'L2', N'NULL', N'NULL', 70000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M007', N'C6', N'T1', N'ES3', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', 150, N'L1', N'R7', N'R16', 10000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M008', N'C7', N'T2', N'ES2', N'SALIDA EL DIA 04/06/2019 EN LA MAÑANA', 200, N'L2', N'R8', N'NULL', 11000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M009', N'C8', N'T2', N'ES2', N'SALIDA EL DIA 29/05/2019 EN LA TARDE', 80, N'L2', N'R9', N'NULL', 3000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M010', N'C9', N'T1', N'ES2', N'SALIDA EL DIA 02/06/2019 EN LA TARDE', 40, N'L1', N'R10', N'NULL', 8000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M011', N'C11', N'T2', N'ES2', N'SALIDA EL DIA 09/06/2019 EN LA MAÑANA', 37, N'L2', N'R11', N'NULL', 2000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M012', N'C1', N'T1', N'ES2', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', 15, N'L1', N'R12', N'NULL', 1500000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M013', N'C4', N'T1', N'ES3', N'SALIDA EL DIA 19/05/2019 EN LA TARDE', 25, N'L1', N'R12', N'NULL', 4500000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M014', N'C7', N'T2', N'ES1', N'LLEGADA EL DIA 29/06/2019 EN LA TARDE', 24, N'L2', N'R14', N'NULL', 7000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M015', N'C5', N'T5', N'ES2', N'SALIDA EL DIA 30/05/2019 EN LA TARDE', 41, N'L2', N'R17', N'NULL', 140000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M016', N'C7', N'T3', N'ES3', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', 55, N'L2', N'R18', N'R23', 50000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M017', N'C6', N'T3', N'ES2', N'SALIDA EL DIA 17/05/2019 EN LA MAÑANA', 70, N'L1', N'R19', N'NULL', 2500000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M018', N'C10', N'T4', N'ES2', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', 33, N'L2', N'R20', N'NULL', 4000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M019', N'C11', N'T2', N'ES1', N'LLEGADA EL DIA 08/06/2019 EN LA MAÑANA', 56, N'L2', N'R21', N'NULL', 56000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [ID_Lote], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M020', N'C8', N'T2', N'ES3', N'SALIDA EL DIA 19/05/2019 EN LA TARDE', 35, N'L1', N'R22', N'R24', 7500000, N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R2', N'M002', N'ACTA IN', N'C4', N'E5', CAST(N'2019-06-18' AS Date), N'PQR-554', N'T1', 100, N'PEPITO PEREZ', N'419846784', N'DOCUMENTOS', 100, 50000000, 4, N'ETIQUETAS', N'FOTO.JPEG', N'ES2', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', N'PEPITO PEREZ', N'NICOLE CERINZA', N'5679832', N'COP')
INSERT [dbo].[Tipo] ([ID_Tipo], [Nombre]) VALUES (N'T1', N'CARGA_SECA')
INSERT [dbo].[Tipo] ([ID_Tipo], [Nombre]) VALUES (N'T2', N'PERECEDEROS')
INSERT [dbo].[Tipo] ([ID_Tipo], [Nombre]) VALUES (N'T3', N'CARGA FRAGIL')
INSERT [dbo].[Tipo] ([ID_Tipo], [Nombre]) VALUES (N'T4', N'CARGA AGRANEL')
INSERT [dbo].[Tipo] ([ID_Tipo], [Nombre]) VALUES (N'T5', N'NO PERECEDEROS')
INSERT [dbo].[Transportadora] ([ID_Transportadora], [Nombre]) VALUES (N'TR1', N'ENVIA')
INSERT [dbo].[Transportadora] ([ID_Transportadora], [Nombre]) VALUES (N'TR2', N'DEPRISA')
INSERT [dbo].[Transportadora] ([ID_Transportadora], [Nombre]) VALUES (N'TR3', N'INTER RAPIDISIMO')
INSERT [dbo].[Transportadora] ([ID_Transportadora], [Nombre]) VALUES (N'TR4', N'DHL')
INSERT [dbo].[Transportadora] ([ID_Transportadora], [Nombre]) VALUES (N'TR5', N'SERVIENTREGA')
/****** Object:  StoredProcedure [dbo].[GetCliente]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCliente] 
 @ID_Cliente int,
 @nombre varchar(50) out,
 @direccion varchar(50) out,
 @telefono varchar(50) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @nombre = nombre, @direccion = direccion, @telefono = telefono 
		from Cliente where @ID_Cliente = ID_Cliente

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetEmpleado]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetEmpleado]
 @ID_Empleado int,
 @Usuario varchar(20) out,
 @nombre varchar(50) out,
 @correo varchar(50) out,
 @tipo_permisos varchar(20) out,
 @contraseña varchar(20) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @nombre = nombre, @correo = correo, @tipo_permisos = Tipo_Permiso,
		@contraseña = contraseña, @Usuario = Usuario
		from Empleado where @ID_Empleado = ID_Empleado

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetEstado]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetEstado]
 @ID_Estado int,
 @Estado varchar(20) out 
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @Estado = Estado from Estado where @ID_Estado = ID_Estado

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetLote]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetLote]
 @ID_Lote int,
 @nombre varchar(50) out,
 @capacidad varchar(50) out,
 @lugar varchar(20) out

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @nombre = nombre, @capacidad = capacidad, @lugar = lugar
		from Lote where @ID_Lote = ID_Lote

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetMercancia]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetMercancia]
 @ID_Mercancia int,
 @ID_Tipo int,
 @estado varchar(20),
 @observaciones varchar(50),
 @N_piezas int,
 @ID_Lote int,
 @ID_In int,
 @ID_Out int,
 @valor int,
 @moneda varchar(50)
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @ID_Tipo = ID_Tipo,				@estado = estado,
		@observaciones = observaciones, @N_piezas = N_Piezas,
		@ID_Lote = ID_Lote,				@ID_In = ID_In, 
		@ID_Out = ID_Out,				@valor = valor,
		@moneda = moneda
		from Mercancia where @ID_Mercancia = ID_Mercancia

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetReserva]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetReserva]
 @ID_Reserva int,
 @ID_Mercancia int out,
 @Tipo_Acta varchar(20) out,
 @ID_Cliente int out,
 @ID_Empleado int out,
 @Fecha datetime out,
 @Placa varchar(20) out,
 @ID_Transportadora int out,
 @N_piezas int out,
 @Nombre_Conductor varchar(50) out,
 @Cedula_Conductor varchar(50) out,
 @Documentos varchar(50) out,
 @Peso float out,
 @valor int out,
 @ID_Embalaje int out,
 @Etiquetas varchar(40) out,
 @Reg_Fotografico varchar(40) out,
 @ID_Estado int out,
 @Observaciones varchar(255) out,
 @firma varchar(30) out,
 @Entrega_NOM varchar(50) out,
 @CC_Entrega varchar(50) out,
 @moneda varchar(50) out
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @ID_Mercancia = ID_Mercancia,			@Tipo_Acta = tipo_Acta, 
		@ID_Cliente = ID_Cliente,				@ID_Empleado = ID_Empleado,
		@Fecha = fecha,							@Placa = placa,
		@ID_Transportadora = ID_Transportadora, @N_piezas = N_Piezas,
		@Nombre_Conductor = Nombre_Conductor,   @Cedula_Conductor = cedula_Conductor,
		@Documentos = documentos,				@Peso = peso,
		@valor = valor,							@ID_Embalaje = ID_Embalaje,
		@Etiquetas = etiquetas,					@Reg_Fotografico = reg_Fotografico,
		@ID_Estado = ID_Estado,					@Observaciones = observaciones,
		@firma = firma,							@Entrega_NOM = Entrega_NOM,
		@CC_Entrega = cc_entrega,				@moneda = moneda
		from Reserva where @ID_Reserva = ID_Reserva

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetTipo]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetTipo]
 @ID_Tipo int,
 @Nombre varchar(50) out

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @Nombre = Nombre from Tipo where @ID_Tipo = ID_Tipo

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetTransportadora]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetTransportadora]
 @ID_Transportadora int,
 @Nombre varchar(50) out

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @Nombre = Nombre from Transportadora where @ID_Transportadora = ID_Transportadora

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertCliente]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertCliente]
 (@ID_Cliente varchar(5),
 @nombre varchar(50),
 @correo varchar(50),
 @telefono varchar(50))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select @ID_Cliente = ID_Cliente from Cliente where ID_Cliente = @ID_Cliente

 IF NOT EXISTS (select ID_Cliente from Cliente where ID_Cliente = @ID_Cliente )
	begin 
		
		insert into Cliente(ID_Cliente, nombre, correo, telefono) 
				values(@ID_Cliente, @nombre, @correo, @telefono);

	
		save transaction InsertComplited

	end
 ELSE

	begin 
	
		print 'El ID ya existe'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al insertar en la tabla Cliente'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertEmpleado]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[InsertEmpleado]
 (@ID_Empleado varchar(5),
 @Usuario varchar(50),
 @nombre varchar(50),
 @correo varchar(50),
 @tipo_permisos varchar(20),
 @contraseña varchar(20))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

  select ID_Empleado = ID_Empleado from Empleado where ID_Empleado = @ID_Empleado

 IF NOT EXISTS (select ID_Empleado from Empleado where ID_Empleado = @ID_Empleado)
	begin 
		insert into Empleado (ID_Empleado, nombre, correo, Tipo_Permiso, Usuario, contraseña)
				values (@ID_Empleado, @nombre, @correo, @tipo_permisos, @Usuario, @contraseña)

		
		save transaction InsertComplited
	end
ELSE
	BEGIN
		
		print 'El ID ya existe'
	END 

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error Al insertar en la tabla Empleado'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertEstado]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[InsertEstado]
 (@ID_Estado VARCHAR(5),
 @estado varchar(50))

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

  select @ID_Estado = ID_Estado from Estado where ID_Estado = @ID_Estado

 IF NOT EXISTS(select  ID_Estado from Estado where ID_Estado = @ID_Estado )
	begin 
		insert into Estado(ID_Estado, estado)
				values (@ID_Estado, @estado)


	save transaction InsertComplited
	end
ELSE
	BEGIN

		print 'El ID ya existe'
	END 

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error Al insertar en la tabla ESTADO'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertLote]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[InsertLote]
 (@ID_Lote varchar(5),
 @nombre varchar(50),
 @capacidad varchar(50),
 @lugar varchar(50))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

  

 IF NOT EXISTS(select ID_Lote from Lote where ID_Lote = @ID_Lote) 
	begin 
		insert into Lote (ID_Lote, nombre, capacidad, lugar)
				values (@ID_Lote, @nombre, @capacidad, @lugar)

	
		save transaction InsertComplited
	end
ELSE
	BEGIN
	
		print 'El ID ya existe'
	END 

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error Al insertar en la tabla Empleado'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertMercancia]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertMercancia]
 (@ID_Mercancia varchar(5),
 @ID_Tipo int,
 @estado varchar(20),
 @observaciones varchar(50),
 @N_Piezas int,
 @ID_Lote int,
 @ID_In int,
 @ID_Out int,
 @valor int,
 @moneda varchar(50))

 AS 

 BEGIN TRANSACTION

 BEGIN TRY
 


 IF not exists ( select  ID_Mercancia from Mercancia where ID_Mercancia = @ID_Mercancia)
	begin 
		
		insert into Mercancia(ID_Mercancia, ID_Tipo, estado, observaciones,
							  N_Piezas, ID_Lote, RESERVA_In, RESERVA_OUT, valor, moneda) 
				values(@ID_Mercancia, @ID_Tipo, @estado, @observaciones,
						@N_Piezas, @ID_Lote, @ID_In, @ID_Out, @valor, @moneda);

		
		save transaction InsertComplited

	end
 ELSE

	begin 
		
		print 'El ID ya existe'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al insertar en la tabla Mercancia'

 END CATCH

GO
/****** Object:  StoredProcedure [dbo].[InsertReserva]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertReserva]
( @ID_Reserva varchar(5),
 @ID_Mercancia varchar(5),
 @tipo_Acta varchar(20),
 @ID_Cliente varchAR(5),
 @ID_Empleado varchar(5),
 @fecha date,
 @placa varchar(20),
 @ID_Transportadora varchar(5),
 @N_Piezas int,
 @Nombre_Conductor varchar(50),
 @Cedula_Conductor varchar(50),
 @documentos varchar(50),
 @peso float,
 @valor int, 
 @ID_Embalaje int,
 @etiquetas varchar(40),
 @reg_Fotografico varchar(50),
 @ID_Estado varchar(5),
 @observaciones varchar(255),
 @firma varchar(30),
 @Entrega_NOM varchar(50),
 @cc_Entrega varchar(50),
 @moneda varchar(50))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY
 


 IF NOT EXISTS ( select ID_Reserva from Reserva where ID_Reserva = @ID_Reserva)
	begin 
		
		insert into Reserva(ID_Reserva,ID_Mercancia, tipo_Acta, ID_Cliente,
							ID_Empleado, fecha, placa, ID_Transportadora, 
							N_Piezas, Nombre_Conductor, cedula_Conductor,
							documentos, peso, valor, ID_Embalaje, etiquetas,
							reg_Fotografico, ID_Estado, observaciones, firma,
							Entrega_NOM, cc_entrega, moneda) 
				values(@ID_Reserva, @ID_Mercancia, @tipo_Acta, @ID_Cliente,
							@ID_Empleado, @fecha, @placa, @ID_Transportadora, 
							@N_Piezas, @Nombre_Conductor, @Cedula_Conductor,
							@documentos, @peso, @valor, @ID_Embalaje, @etiquetas,
							@reg_Fotografico, @ID_Estado, @observaciones, @firma,
							@Entrega_NOM, @cc_Entrega, @moneda);

		
		save transaction InsertComplited

	end
 ELSE

	begin 
		
		print 'El ID ya existe'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al insertar en la tabla RESERVA'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertTipo]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTipo]
 (@ID_Tipo varchar(5),
 @Nombre varchar(50))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY
 
 select @ID_Tipo = ID_Tipo from Tipo where ID_Tipo = @ID_Tipo

 IF NOT EXISTS (select ID_Tipo from Tipo where ID_Tipo = @ID_Tipo)
	begin 
		
		insert into Tipo(ID_Tipo, Nombre) 
					values(@ID_Tipo, @Nombre);

	
		save transaction InsertComplited

	end
 ELSE

	begin 
		
		print 'El ID ya existe'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al insertar en la tabla Mercancia'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertTransportadora]    Script Date: 25/05/2019 09:25:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTransportadora]
 (@ID_Transportadora varchar(5),
 @Nombre varchar(50))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY
 


 IF NOT EXISTS ( select  ID_Transportadora from Transportadora where @ID_Transportadora = ID_Transportadora)
	begin 
		
		insert into Transportadora(ID_Transportadora, Nombre) 
					values(@ID_Transportadora, @Nombre);


		save transaction InsertComplited

	end
 ELSE

	begin 
		
		print 'El ID ya existe'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al insertar en la tabla Trasnportadora'

 END CATCH
GO
USE [master]
GO
ALTER DATABASE [PRINCS_DB] SET  READ_WRITE 
GO
