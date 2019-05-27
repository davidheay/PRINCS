USE [master]
GO
/****** Object:  Database [PRINCS_DB]    Script Date: 26/05/2019 07:07:09 p. m. ******/
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 26/05/2019 07:07:11 p. m. ******/
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 26/05/2019 07:07:12 p. m. ******/
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
/****** Object:  Table [dbo].[Estado]    Script Date: 26/05/2019 07:07:12 p. m. ******/
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
/****** Object:  Table [dbo].[Lote]    Script Date: 26/05/2019 07:07:12 p. m. ******/
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
/****** Object:  Table [dbo].[Mercancia]    Script Date: 26/05/2019 07:07:12 p. m. ******/
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
/****** Object:  Table [dbo].[Reserva]    Script Date: 26/05/2019 07:07:12 p. m. ******/
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
	[ID_Lote] [varchar](5) NOT NULL,
	[Estiba] [varchar](5) NOT NULL,
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
/****** Object:  Table [dbo].[Tipo]    Script Date: 26/05/2019 07:07:12 p. m. ******/
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
/****** Object:  Table [dbo].[Transportadora]    Script Date: 26/05/2019 07:07:12 p. m. ******/
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
INSERT [dbo].[Estado] ([ID_Estado], [estado]) VALUES (N'ES1', N'POR LLEGAR')
INSERT [dbo].[Estado] ([ID_Estado], [estado]) VALUES (N'ES2', N'EN BODEGA')
INSERT [dbo].[Estado] ([ID_Estado], [estado]) VALUES (N'ES3', N'ENVIADO')
INSERT [dbo].[Estado] ([ID_Estado], [estado]) VALUES (N'ES4', N'NO APLICA')
INSERT [dbo].[Lote] ([ID_Lote], [nombre], [capacidad], [lugar]) VALUES (N'L1', N'BODEGA 1', N'100', N'PUERTA DEL SOL')
INSERT [dbo].[Lote] ([ID_Lote], [nombre], [capacidad], [lugar]) VALUES (N'L2', N'BODEGA 2', N'100', N'INTEXONA')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M002', N'C4', N'T1', N'ES1', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', 100, N'NULL', N'NULL', 5000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M003', N'C10', N'T3', N'ES2', N'LLEGADA EL DIA 05/06/2019 EN LA TARDE', 70, N'R1', N'NULL', 15000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M004', N'C3', N'T1', N'ES3', N'SALIDA EL DIA 20/05/2019 EN LA MAÑANA', 20, N'R2', N'R3', 7000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M005', N'C2', N'T1', N'ES2', N'SALIDA EL DIA 01/06/2019 EN LA MAÑANA', 60, N'R4', N'NULL', 17000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M006', N'C5', N'T5', N'ES1', N'LLEGADA EL DIA 31/05/2019 EN LA TARDE', 25, N'NULL', N'NULL', 70000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M007', N'C6', N'T1', N'ES3', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', 150, N'R5', N'R6', 10000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M008', N'C7', N'T2', N'ES2', N'SALIDA EL DIA 04/06/2019 EN LA MAÑANA', 200, N'R7', N'NULL', 11000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M009', N'C8', N'T2', N'ES2', N'SALIDA EL DIA 29/05/2019 EN LA TARDE', 80, N'R8', N'R9', 3000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M010', N'C9', N'T1', N'ES2', N'SALIDA EL DIA 02/06/2019 EN LA TARDE', 40, N'R10', N'NULL', 8000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M011', N'C11', N'T2', N'ES2', N'SALIDA EL DIA 09/06/2019 EN LA MAÑANA', 37, N'NULL', N'NULL', 2000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M012', N'C1', N'T1', N'ES2', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', 15, N'R12', N'NULL', 1500000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M013', N'C4', N'T1', N'ES3', N'SALIDA EL DIA 19/05/2019 EN LA TARDE', 25, N'R13', N'NULL', 4500000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M014', N'C7', N'T2', N'ES3', N'LLEGADA EL DIA 29/06/2019 EN LA TARDE', 24, N'R14', N'R15', 7000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M015', N'C5', N'T5', N'ES2', N'SALIDA EL DIA 30/05/2019 EN LA TARDE', 41, N'R16', N'NULL', 140000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M016', N'C7', N'T3', N'ES3', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', 55, N'R17', N'R18', 50000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M017', N'C6', N'T3', N'ES2', N'SALIDA EL DIA 17/05/2019 EN LA MAÑANA', 70, N'R19', N'NULL', 2500000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M018', N'C10', N'T4', N'ES2', N'SALIDA EL DIA 01/06/2019 EN LA TARDE', 33, N'R20', N'NULL', 4000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M019', N'C11', N'T2', N'ES1', N'LLEGADA EL DIA 08/06/2019 EN LA MAÑANA', 56, N'NULL', N'NULL', 56000000, N'COP')
INSERT [dbo].[Mercancia] ([ID_Mercancia], [ID_CLIENTE], [ID_Tipo], [estado], [observaciones], [N_Piezas], [RESERVA_IN], [RESERVA_OUT], [valor], [moneda]) VALUES (N'M020', N'C8', N'T2', N'ES3', N'SALIDA EL DIA 19/05/2019 EN LA TARDE', 35, N'R21', N'R22', 7500000, N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R1', N'M003', N'INGRESO', N'C10', N'E5', CAST(N'2019-04-17' AS Date), N'BKU897', N'T1', 70, N'L2', N'1', N'PEPITO PEREZ', N'419846784', N'Guia de Transporte', 20, 15000000, 1, N'INTERNACIONAL', N'img\CaribbeanExotics.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA MAÑANA', N'NC1', N'NICOLE CERINZA', N'5679832', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R10', N'M010', N'INGRESO', N'C9', N'E4', CAST(N'2019-04-29' AS Date), N'OAL836', N'T2', 40, N'L2', N'5', N'CAMILO CIFUENTES', N'70984782', N'Facturas', 190, 8000000, 1, N'INTERNACIONAL', N'img\VIVECAFE.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA NOCHE', N'NGP1', N'NESTOR FERNANDO PORRAS', N'52416096', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R12', N'M012', N'INGRESO', N'C1', N'E5', CAST(N'2019-05-15' AS Date), N'AME936', N'T5', 15, N'L2', N'6', N'NICOLAS FORERO', N'1019876456', N'Facturas', 76, 1500000, 2, N'INTERNACIONAL', N'img\OMA.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA NOCHE', N'NC1', N'NICOLE CERINZA', N'5679832', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R13', N'M013', N'INGRESO', N'C4', N'E5', CAST(N'2019-04-25' AS Date), N'OKS897', N'T2', 25, N'L1', N'4', N'DANIEL QUINTERO', N'876522093', N'N/A', 100, 4500000, 2, N'NACIONAL', N'img\FLOWERS.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA NOCHE', N'NC1', N'NICOLE CERINZA', N'5679832', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R14', N'M014', N'INGRESO', N'C7', N'E3', CAST(N'2019-05-12' AS Date), N'FHY084', N'T5', 24, N'L1', N'5', N'FRANCISCO ALVARADO', N'56930875', N'Facturas', 61, 7000000, 2, N'INTERNACIONAL', N'img\AGRIFRESH.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA NOCHE', N'AV1', N'ANDRES VILLARREAL', N'41587458', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R15', N'M014', N'SALIDA', N'C7', N'E3', CAST(N'2019-05-23' AS Date), N'FHY084', N'T5', 24, N'L1', N'5', N'FRANCISCO ALVARADO', N'56930875', N'Facturas', 61, 7000000, 2, N'INTERNACIONAL', N'img\AGRIFRESH.jpg', N'ES4', N'SALE EN LAS HORAS DE LA NOCHE', N'AV1', N'ANDRES VILLARREAL', N'41587458', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R16', N'M015', N'INGRESO', N'C5', N'E5', CAST(N'2019-04-06' AS Date), N'SMNE084', N'T4', 41, N'L2', N'7', N'JAIRO LOPEZ', N'55730875', N'N/A', 260, 140000000, 3, N'INTERNACIONAL', N'img\IMAPAR.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA TARDE', N'NC1', N'NICOLE CERINZA', N'5679832', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R17', N'M016', N'INGRESO', N'C7', N'E4', CAST(N'2019-04-09' AS Date), N'SEO983', N'T1', 55, N'L2', N'8', N'HERNAN AGUDELO', N'80470875', N'N/A', 390, 50000000, 1, N'INTERNACIONAL', N'img\AGRIFRESH.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA MAÑANA', N'NGP1', N'NESTOR FERNANDO PORRAS', N'52416096', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R18', N'M016', N'SALIDA', N'C7', N'E4', CAST(N'2019-05-09' AS Date), N'SEO983', N'T1', 55, N'L2', N'8', N'HERNAN AGUDELO', N'80470875', N'N/A', 390, 50000000, 1, N'INTERNACIONAL', N'img\AGRIFRESH.jpg', N'ES4', N'SALE EN LAS HORAS DE LA TARDE', N'NGP1', N'NESTOR FERNANDO PORRAS', N'52416096', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R19', N'M017', N'INGRESO', N'C6', N'E4', CAST(N'2019-05-24' AS Date), N'UEL739', N'T3', 70, N'L2', N'9', N'ENRIQUE FLORES', N'86070875', N'Facturas', 9, 2500000, 1, N'INTERNACIONAL', N'img\FLORESCOLON.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA MAÑANA', N'NGP1', N'NESTOR FERNANDO PORRAS', N'52416096', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R2', N'M004', N'INGRESO', N'C3', N'E3', CAST(N'2019-04-01' AS Date), N'NDK028', N'T2', 20, N'L1', N'1', N'JUAN MARTINEZ', N'59804496', N'Lista de empaque', 75, 7000000, 2, N'NACIONAL', N'img\RESTCAFE.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA TARDE', N'AV1', N'ANDRES VILLARREAL', N'41587458', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R20', N'M018', N'INGRESO', N'C10', N'E3', CAST(N'2019-05-09' AS Date), N'TRL985', N'T2', 33, N'L2', N'10', N'DIOMEDES GARZON', N'87671235', N'N/A', 111, 4000000, 2, N'NACIONAL', N'img\CaribbeanExotics.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA MAÑANA', N'AV1', N'ANDRES VILLARREAL', N'41587458', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R21', N'M020', N'INGRESO', N'C8', N'E5', CAST(N'2019-04-23' AS Date), N'BTU817', N'T4', 35, N'L1', N'6', N'PEPITO PEREZ', N'419846784', N'Facturas', 20, 7500000, 1, N'INTERNACIONAL', N'img\THEFARMFRESH.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA NOCHE', N'NC1', N'NICOLE CERINZA', N'5679832', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R22', N'M020', N'SALIDA', N'C8', N'E5', CAST(N'2019-05-25' AS Date), N'BTU817', N'T4', 35, N'L1', N'6', N'PEPITO PEREZ', N'419846784', N'Facturas', 20, 7500000, 1, N'INTERNACIONAL', N'img\THEFARMFRESH.jpg', N'ES4', N'SALE EN LAS HORAS DE LA NOCHE', N'NC1', N'NICOLE CERINZA', N'5679832', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R23', N'M021', N'INGRESO', N'C2', N'E4', CAST(N'2019-03-01' AS Date), N'REG465', N'T3', 40, N'L2', N'11', N'IVAN LOPEZ', N'4679390276', N'Facturas', 67, 5500000, 2, N'INTERNACIONAL', N'img\JUANVALDEZ.jpg', N'ES4', N'ENTRA EN LA MAÑANA', N'NFP1', N'NESTOR FERNANDO PORRAS', N'52416096', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R24', N'M021', N'SALIDA', N'C2', N'E4', CAST(N'2019-03-29' AS Date), N'RGDS932', N'T2', 40, N'L2', N'11', N'SANTIAGO TOVAR', N'493772922', N'Facturas', 67, 5500000, 2, N'INTERNACIONAL', N'img\JUANVALDEZ.jpg', N'ES4', N'SALE EN LA NOCHE', N'NFP1', N'NESTOR FERNANDO PORRAS', N'52416096', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R25', N'M022', N'INGRESO', N'C3', N'E3', CAST(N'2019-03-04' AS Date), N'YDM673', N'T5', 50, N'L1', N'7', N'HUGO CORREA', N'76384443', N'Facturas', 105, 3800000, 1, N'NACIONAL', N'img\RESTCAFE.jpg', N'ES4', N'SALE EN LA MAÑANA', N'AV1', N'ANDRES VILLARREAL', N'41587458', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R26', N'M022', N'SALIDA', N'C3', N'E3', CAST(N'2019-04-04' AS Date), N'TRD937', N'T1', 50, N'L1', N'7', N'HUGO CORREA', N'76384443', N'Lista de empaque', 105, 3800000, 1, N'NACIONAL', N'img\RESTCAFE.jpg', N'ES4', N'SALE EN LA MAÑANA', N'AV1', N'ANDRES VILLARREAL', N'41587458', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R27', N'M023', N'INGRESO', N'C6', N'E5', CAST(N'2019-03-18' AS Date), N'FTJ865', N'T3', 69, N'L2', N'12', N'RAFAEL FAJARDO', N'34576543', N'N/A', 365, 260, 3, N'INTERNACIONAL', N'img\FLORESCOLON.jpg', N'ES4', N'ENTRA EN LA NOCHE', N'NC1', N'NICOLE CERNIZA', N'5679832', N'USD')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R28', N'M023', N'SALIDA', N'C6', N'E5', CAST(N'2019-04-14' AS Date), N'FTJ857', N'T3', 69, N'L2', N'12', N'RAFAEL SARMIENTO', N'235345677', N'N/A', 365, 260, 3, N'INTERNACIONAL', N'img\FLORESCOLON.jpg', N'ES4', N'SALE EN LA MAÑANA', N'NC1', N'NICOLE CERNIZA', N'5679832', N'USD')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R3', N'M004', N'SALIDA', N'C3', N'E4', CAST(N'2019-05-25' AS Date), N'NDK028', N'T2', 20, N'L1', N'1', N'JUAN MARTINEZ', N'59804496', N'Lista de empaque', 75, 7000000, 2, N'NACIONAL', N'img\RESTCAFE.jpg', N'ES4', N'SALE EN LAS HORAS DE LA TARDE', N'NFP1', N'NESTOR FERNANDO PORRAS', N'52416096', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R4', N'M005', N'INGRESO', N'C2', N'E3', CAST(N'2019-05-26' AS Date), N'KDSB493', N'T5', 60, N'L2', N'2', N'FERNANDO FERNANDEZ', N'19141876', N'Facturas', 150, 17000000, 1, N'NACIONAL', N'img\JUANVALDEZ.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA TARDE', N'AV1', N'ANDRES VILLARREAL', N'41587458', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R5', N'M007', N'INGRESO', N'C6', N'E5', CAST(N'2019-05-01' AS Date), N'SEMB972', N'T3', 150, N'L2', N'3', N'LUIS CARVAJAL', N'76523907', N'N/A', 450, 10000000, 3, N'INTERNACIONAL', N'img\FLORESCOLON.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA TARDE', N'NC1', N'NICOLE CERNIZA', N'5679832', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R6', N'M007', N'SALIDA', N'C6', N'E5', CAST(N'2019-05-01' AS Date), N'SEMB972', N'T3', 150, N'L2', N'3', N'LUIS CARVAJAL', N'76523907', N'N/A', 450, 10000000, 3, N'INTERNACIONAL', N'img\FLORESCOLON.jpg', N'ES4', N'SALE EN LAS HORAS DE LA TARDE', N'NC1', N'NICOLE CERNIZA', N'5679832', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R7', N'M008', N'INGRESO', N'C7', N'E4', CAST(N'2019-03-01' AS Date), N'OWN936', N'T5', 200, N'L1', N'2', N'MIGUEL PUENTES', N'2004286905', N'Facturas', 638, 11000000, 2, N'INTERNACIONAL', N'img\AGRIFRESH.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA NOCHE', N'NFP1', N'NESTOR FERNANDO PORRAS', N'52416096', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R8', N'M009', N'INGRESO', N'C8', N'E3', CAST(N'2019-05-11' AS Date), N'WNWB009', N'T4', 80, N'L2', N'4', N'PABLO MEJIA', N'45789632', N'Lista de empaque', 80, 3000000, 3, N'NACIONAL', N'img\THEFARMFRESH.jpg', N'ES4', N'ENTRA EN LAS HORAS DE LA MAÑANA', N'AV1', N'ANDRES VILLARREAL', N'41587458', N'COP')
INSERT [dbo].[Reserva] ([ID_Reserva], [ID_Mercancia], [tipo_Acta], [ID_Cliente], [ID_Empleado], [fecha], [placa], [ID_Transportadora], [N_Piezas], [ID_Lote], [Estiba], [Nombre_Conductor], [cedula_Conductor], [documentos], [peso], [valor], [ID_Embalaje], [etiquetas], [reg_Fotografico], [ID_Estado], [observaciones], [firma], [Entrega_NOM], [cc_entrega], [moneda]) VALUES (N'R9', N'M009', N'SALIDA', N'C8', N'E3', CAST(N'2019-05-29' AS Date), N'WNWB009', N'T4', 80, N'L2', N'4', N'PABLO MEJIA', N'45789632', N'Lista de empaque', 80, 3000000, 3, N'NACIONAL', N'img\THEFARMFRESH.jpg', N'ES4', N'SALE EN LAS HORAS DE LA NOCHE', N'AV1', N'ANDRES VILLARREAL', N'41587458', N'COP')
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
/****** Object:  StoredProcedure [dbo].[ActualizarEstadoMercancia]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[ActualizarEstadoMercancia]
 (@ID_Mercancia varchar(5),
  @ID_Estado varchar(5))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 IF EXISTS(select ID_Mercancia from Mercancia where ID_Mercancia = @ID_Mercancia) 
	begin 

		update Mercancia set estado = @ID_Estado where ID_Mercancia = @ID_Mercancia

		save transaction UpdateEstado
	end
ELSE
	BEGIN
	
		print 'No existe el ID especificado para actualizar el estado'
	END 

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'Ha ocurrido un error al actualizar el estado de la Mercancia'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ActualizarMercancia]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[ActualizarMercancia]
 (@ID_Mercancia varchar(5),
  
  @ID_Tipo varchar(5),
  @estado varchar(20) ,
  @observaciones varchar(50) ,
  @N_Piezas int ,
    @valor int ,
  @moneda varchar(50))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 IF EXISTS(select ID_Mercancia from Mercancia where ID_Mercancia = @ID_Mercancia) 
	begin 

		update Mercancia set ID_Tipo=@ID_Tipo,estado=@estado,observaciones=@observaciones,N_Piezas=@N_Piezas,valor=@valor,moneda=@moneda where ID_Mercancia = @ID_Mercancia

		save transaction UpdateEstado
	end
ELSE
	BEGIN
	
		print 'No existe el ID especificado para actualizar el estado'
	END 

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'Ha ocurrido un error al actualizar el estado de la Mercancia'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[DeleteCliente]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Delete Cliente
CREATE PROCEDURE [dbo].[DeleteCliente]
 (@ID_Cliente varchar(5))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 IF EXISTS (select ID_Cliente from Cliente where ID_Cliente = @ID_Cliente)
	begin 
		
		delete from Cliente where ID_Cliente = @ID_Cliente

		save transaction DeletionCompleted
	end

 ELSE

	begin 
	
		print 'El ID que ha tratado de eliminar en la tabla Clientes no existe'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al eliminar en la tabla Cliente'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmpleado]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[DeleteEmpleado]
 (@ID_Empleado varchar(5))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 IF EXISTS (select ID_Empleado from Empleado where ID_Empleado = @ID_Empleado)
	begin 
		delete from Empleado where @ID_Empleado = ID_Empleado

		save transaction DeletedComplited
	end
ELSE
	BEGIN
		
		print 'No se ha encontrado ningun registro con ese codigo en la tabla Empleado'
	END 

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al elimnar en la tabla Empleado'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[DeleteEstado]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[DeleteEstado]
 (@ID_Estado VARCHAR(5))

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 IF EXISTS(select  ID_Estado from Estado where ID_Estado = @ID_Estado)
	begin 

		delete from Estado where ID_Estado = @ID_Estado

	save transaction InsertComplited
	end
ELSE
	BEGIN

		print 'El ID en la tabla estado no existe'
	END 

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al Eliminar en la tabla ESTADO'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[DeleteLote]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[DeleteLote]
 (@ID_Lote varchar(5))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 IF EXISTS(select ID_Lote from Lote where ID_Lote = @ID_Lote) 
	begin 

		delete from Lote where ID_Lote = @ID_Lote

		save transaction DeletionComplited
	end
ELSE
	BEGIN
	
		print 'El ID no se ha encontrado en la tabla lote'
	END 

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al eliminar en la tabla lote'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[DeleteMercancia]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Delete Mercancia

CREATE PROCEDURE [dbo].[DeleteMercancia]
 (@ID_Mercancia varchar(5))

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 IF exists ( select  ID_Mercancia from Mercancia where ID_Mercancia = @ID_Mercancia)
	begin 
		
		delete from Mercancia where ID_Mercancia = @ID_Mercancia

		save transaction DeletionCompleted

	end
 ELSE

	begin 
		
		print 'El ID que ha intentado eliminar no se ha encontrado en la Tabla Mercancias'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al eliminar en la tabla Mercancia'

 END CATCH

GO
/****** Object:  StoredProcedure [dbo].[DeleteReserva]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--delete reserva

CREATE PROCEDURE [dbo].[DeleteReserva]
(@ID_Reserva varchar(5))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY
 
 IF EXISTS ( select ID_Reserva from Reserva where ID_Reserva = @ID_Reserva)
	begin 
		
		delete from Reserva where @ID_Reserva = ID_Reserva

		
		save transaction DeletionCompleted

	end
 ELSE

	begin 
		
		print 'El ID no se ha encontrado en la tabla reserva'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al Eliminar en la tabla RESERVA'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[DeleteTipo]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Delete Tipo

CREATE PROCEDURE [dbo].[DeleteTipo]
 (@ID_Tipo varchar(5))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 IF EXISTS (select ID_Tipo from Tipo where ID_Tipo = @ID_Tipo)
	begin 
		
		Delete from Tipo where ID_Tipo = @ID_Tipo

		save transaction DeleteCompleted

	end
 ELSE

	begin 
		
		print 'No se encontro el ID a eliminar'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al eliminar en la tabla Tipo'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[DeleteTransportadora]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Delete Transportadora
CREATE PROCEDURE [dbo].[DeleteTransportadora]
 (@ID_Transportadora varchar(5))
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 IF EXISTS ( select  ID_Transportadora from Transportadora where @ID_Transportadora = ID_Transportadora)
	begin 
		
		delete from Transportadora where @ID_Transportadora = ID_Transportadora

		save transaction DeleteCompleted

	end
 ELSE

	begin 
		
		print 'No se ha encontrado el codigo a eliminar en la tabla transportadora'
	end

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error al Eliminar en la tabla Trasnportadora'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetCliente]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCliente] 
 @ID_Cliente vARCHAR(5)
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select ID_Cliente, nombre,correo, telefono 
		from Cliente where @ID_Cliente = ID_Cliente

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetClientes]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetClientes]
as begin 
select * from Cliente
end
GO
/****** Object:  StoredProcedure [dbo].[GetEmpleado]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetEmpleado]
 @ID_Empleado varchar(5)
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select ID_Empleado, nombre, correo,  Tipo_Permiso, contraseña,  Usuario
		from Empleado where @ID_Empleado = ID_Empleado

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetEstado]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetEstado]
 @ID_Estado varchar(5) 
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select ID_Estado, Estado from Estado where @ID_Estado = ID_Estado

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetEstados]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[GetEstados] 
 as begin 
 select * from Estado
 end
GO
/****** Object:  StoredProcedure [dbo].[GetLote]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetLote]
 @ID_Lote varchar(5)

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select nombre, capacidad, lugar, ID_Lote from Lote where @ID_Lote = ID_Lote

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetLotes]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------
create proc [dbo].[GetLotes]
as begin
select * from Lote
end
GO
/****** Object:  StoredProcedure [dbo].[GetMercancia]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetMercancia]
 @ID_Mercancia varchar(5)
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select Mercancia.ID_Mercancia,Cliente.Nombre,Tipo.Nombre,Estado.estado,observaciones,N_Piezas,RESERVA_IN,RESERVA_OUT,valor,moneda from Mercancia,Cliente,Tipo,Estado where Mercancia.ID_CLIENTE=Cliente.ID_Cliente and Mercancia.ID_Tipo=Tipo.ID_Tipo and Mercancia.estado=Estado.ID_Estado and @ID_Mercancia = ID_Mercancia

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetMercancias]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetMercancias] 
as begin 
select Mercancia.ID_Mercancia,Cliente.Nombre,Tipo.Nombre,Estado.estado,observaciones,N_Piezas,RESERVA_IN,RESERVA_OUT,valor,moneda from Mercancia,Cliente,Tipo,Estado where Mercancia.ID_CLIENTE=Cliente.ID_Cliente and Mercancia.ID_Tipo=Tipo.ID_Tipo and Mercancia.estado=Estado.ID_Estado
end
GO
/****** Object:  StoredProcedure [dbo].[GetReserva]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetReserva]
 @ID_Reserva varchar(5) 
 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select  ID_Mercancia,	tipo_Acta,  ID_Cliente,	 ID_Empleado,fecha,	placa, ID_Transportadora, N_Piezas,ID_Lote,Estiba,
  Nombre_Conductor, cedula_Conductor, documentos, peso,valor, ID_Embalaje,etiquetas, reg_Fotografico,
	 ID_Estado,	 observaciones, firma,Entrega_NOM, cc_entrega, moneda
		from Reserva where @ID_Reserva = ID_Reserva

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetReservas]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetReservas]
as begin
select * from Reserva
end
GO
/****** Object:  StoredProcedure [dbo].[GetTipo]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetTipo]
 @ID_Tipo varchar(5) 

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select ID_Tipo, Nombre from Tipo where @ID_Tipo = ID_Tipo

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetTipos]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetTipos]
as begin 
select * from Tipo
end
GO
/****** Object:  StoredProcedure [dbo].[GetTransportadora]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetTransportadora]
 @ID_Transportadora varchar(5)

 AS 

 BEGIN TRANSACTION

 BEGIN TRY

 select ID_Transportadora, Nombre from Transportadora where @ID_Transportadora = ID_Transportadora

 COMMIT TRANSACTION

 END TRY

 BEGIN CATCH

 rollback transaction
 print 'ha ocurrido un error'

 END CATCH
GO
/****** Object:  StoredProcedure [dbo].[GetTransportadoras]    Script Date: 26/05/2019 07:07:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[GetTransportadoras] 
 as begin
 select  * from Transportadora
 end
GO
/****** Object:  StoredProcedure [dbo].[InsertCliente]    Script Date: 26/05/2019 07:07:13 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[InsertEmpleado]    Script Date: 26/05/2019 07:07:13 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[InsertEstado]    Script Date: 26/05/2019 07:07:13 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[InsertLote]    Script Date: 26/05/2019 07:07:13 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[InsertMercancia]    Script Date: 26/05/2019 07:07:13 p. m. ******/
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
							  N_Piezas, RESERVA_In, RESERVA_OUT, valor, moneda) 
				values(@ID_Mercancia, @ID_Tipo, @estado, @observaciones,
						@N_Piezas, @ID_In, @ID_Out, @valor, @moneda);

		
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
/****** Object:  StoredProcedure [dbo].[InsertReserva]    Script Date: 26/05/2019 07:07:13 p. m. ******/
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
 @ID_Lote varchar(5),
 @estiba varchar(5),
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
							N_Piezas,ID_Lote,Estiba, Nombre_Conductor, cedula_Conductor,
							documentos, peso, valor, ID_Embalaje, etiquetas,
							reg_Fotografico, ID_Estado, observaciones, firma,
							Entrega_NOM, cc_entrega, moneda) 
				values(@ID_Reserva, @ID_Mercancia, @tipo_Acta, @ID_Cliente,
							@ID_Empleado, @fecha, @placa, @ID_Transportadora, 
							@N_Piezas,@ID_Lote,@Estiba, @Nombre_Conductor, @Cedula_Conductor,
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
/****** Object:  StoredProcedure [dbo].[InsertTipo]    Script Date: 26/05/2019 07:07:13 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[InsertTransportadora]    Script Date: 26/05/2019 07:07:13 p. m. ******/
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

