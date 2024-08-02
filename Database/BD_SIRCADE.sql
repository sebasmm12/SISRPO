USE [master]
GO
/****** Object:  Database [BD_SIRCADE]    Script Date: 8/1/2024 10:39:32 PM ******/
CREATE DATABASE [BD_SIRCADE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_SIRCADE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BD_SIRCADE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_SIRCADE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BD_SIRCADE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BD_SIRCADE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_SIRCADE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_SIRCADE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BD_SIRCADE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_SIRCADE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_SIRCADE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BD_SIRCADE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_SIRCADE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD_SIRCADE] SET  MULTI_USER 
GO
ALTER DATABASE [BD_SIRCADE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_SIRCADE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_SIRCADE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_SIRCADE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_SIRCADE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_SIRCADE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BD_SIRCADE] SET QUERY_STORE = OFF
GO
USE [BD_SIRCADE]
GO
/****** Object:  Table [dbo].[CanchasDeportivas]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanchasDeportivas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_CanchasDeportivas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContrasenasUsuario]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContrasenasUsuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[Contrasena] [varchar](400) NULL,
 CONSTRAINT [PK_ContrasenasUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleUsuario]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleUsuario](
	[Id] [int] NOT NULL,
	[IdUsuario] [int] NULL,
	[Grado] [varchar](100) NULL,
	[ApellidoPaterno] [varchar](100) NULL,
	[ApellidoMaterno] [varchar](100) NULL,
	[Nombres] [varchar](500) NULL,
	[Unidad] [int] NULL,
	[FechaNacimiento] [date] NULL,
	[Direccion] [varchar](500) NULL,
	[Telefono] [varchar](100) NULL,
	[Celular] [varchar](100) NULL,
	[Correo] [varchar](100) NULL,
	[Afiliado] [bit] NULL,
	[Situacion] [int] NULL,
	[DNI] [varchar](8) NULL,
	[EstadoCivil] [int] NULL,
 CONSTRAINT [PK_Socios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorariosCancha]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorariosCancha](
	[Id] [int] NOT NULL,
	[IdCancha] [int] NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
	[Estado] [int] NULL,
	[IdUsuario] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuarioModificador] [int] NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_HorariosCancha] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notificaciones]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notificaciones](
	[Id] [int] NOT NULL,
	[Tipo] [int] NULL,
	[Plantilla] [varchar](max) NULL,
	[TipoEnvio] [int] NULL,
 CONSTRAINT [PK_Notificaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionesUsuario]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionesUsuario](
	[Id] [int] NOT NULL,
	[IdNotificacion] [int] NOT NULL,
	[IdUsuarioEmisor] [int] NOT NULL,
	[IdUsuarioReceptor] [int] NOT NULL,
	[Mensaje] [varchar](max) NULL,
	[FechaEnvio] [datetime] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_NotificacionesUsuario_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Descripcion] [varchar](100) NULL,
	[Tipo] [int] NULL,
	[Icono] [varchar](100) NULL,
 CONSTRAINT [PK_Permisos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermisosRol]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisosRol](
	[IdRol] [int] NOT NULL,
	[IdPermiso] [int] NOT NULL,
 CONSTRAINT [PK_PermisosRol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC,
	[IdPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[IdHorario] [int] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_Reservas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCanchaDeportiva]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCanchaDeportiva](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_TiposCanchaDeportiva] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unidades]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidades](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](500) NULL,
	[Ubicacion] [varchar](500) NULL,
	[SIGLAS] [varchar](100) NULL,
 CONSTRAINT [PK_Unidades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 8/1/2024 10:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [int] NOT NULL,
	[NSA] [varchar](400) NULL,
	[Contrasena] [varchar](400) NULL,
	[Salt] [varchar](400) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CanchasDeportivas]  WITH CHECK ADD  CONSTRAINT [FK_CanchasDeportivas_TiposCanchaDeportiva] FOREIGN KEY([Tipo])
REFERENCES [dbo].[TiposCanchaDeportiva] ([Id])
GO
ALTER TABLE [dbo].[CanchasDeportivas] CHECK CONSTRAINT [FK_CanchasDeportivas_TiposCanchaDeportiva]
GO
ALTER TABLE [dbo].[ContrasenasUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ContrasenasUsuario_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[ContrasenasUsuario] CHECK CONSTRAINT [FK_ContrasenasUsuario_Usuarios]
GO
ALTER TABLE [dbo].[DetalleUsuario]  WITH CHECK ADD  CONSTRAINT [FK_DetalleUsuario_Usuarios] FOREIGN KEY([Id])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[DetalleUsuario] CHECK CONSTRAINT [FK_DetalleUsuario_Usuarios]
GO
ALTER TABLE [dbo].[DetalleUsuario]  WITH CHECK ADD  CONSTRAINT [FK_Socios_Unidades] FOREIGN KEY([Unidad])
REFERENCES [dbo].[Unidades] ([Id])
GO
ALTER TABLE [dbo].[DetalleUsuario] CHECK CONSTRAINT [FK_Socios_Unidades]
GO
ALTER TABLE [dbo].[HorariosCancha]  WITH CHECK ADD  CONSTRAINT [FK_HorariosCancha_CanchasDeportivas] FOREIGN KEY([IdCancha])
REFERENCES [dbo].[CanchasDeportivas] ([Id])
GO
ALTER TABLE [dbo].[HorariosCancha] CHECK CONSTRAINT [FK_HorariosCancha_CanchasDeportivas]
GO
ALTER TABLE [dbo].[HorariosCancha]  WITH CHECK ADD  CONSTRAINT [FK_HorariosCancha_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[HorariosCancha] CHECK CONSTRAINT [FK_HorariosCancha_Usuarios]
GO
ALTER TABLE [dbo].[HorariosCancha]  WITH CHECK ADD  CONSTRAINT [FK_HorariosCancha_Usuarios1] FOREIGN KEY([IdUsuarioModificador])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[HorariosCancha] CHECK CONSTRAINT [FK_HorariosCancha_Usuarios1]
GO
ALTER TABLE [dbo].[NotificacionesUsuario]  WITH CHECK ADD  CONSTRAINT [FK_NotificacionesUsuario_Notificaciones] FOREIGN KEY([IdNotificacion])
REFERENCES [dbo].[Notificaciones] ([Id])
GO
ALTER TABLE [dbo].[NotificacionesUsuario] CHECK CONSTRAINT [FK_NotificacionesUsuario_Notificaciones]
GO
ALTER TABLE [dbo].[NotificacionesUsuario]  WITH CHECK ADD  CONSTRAINT [FK_NotificacionesUsuario_Usuarios] FOREIGN KEY([IdUsuarioEmisor])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[NotificacionesUsuario] CHECK CONSTRAINT [FK_NotificacionesUsuario_Usuarios]
GO
ALTER TABLE [dbo].[NotificacionesUsuario]  WITH CHECK ADD  CONSTRAINT [FK_NotificacionesUsuario_Usuarios1] FOREIGN KEY([IdUsuarioReceptor])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[NotificacionesUsuario] CHECK CONSTRAINT [FK_NotificacionesUsuario_Usuarios1]
GO
ALTER TABLE [dbo].[PermisosRol]  WITH CHECK ADD  CONSTRAINT [FK_PermisosRol_Permisos] FOREIGN KEY([IdPermiso])
REFERENCES [dbo].[Permisos] ([Id])
GO
ALTER TABLE [dbo].[PermisosRol] CHECK CONSTRAINT [FK_PermisosRol_Permisos]
GO
ALTER TABLE [dbo].[PermisosRol]  WITH CHECK ADD  CONSTRAINT [FK_PermisosRol_Roles] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[PermisosRol] CHECK CONSTRAINT [FK_PermisosRol_Roles]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_HorariosCancha] FOREIGN KEY([IdHorario])
REFERENCES [dbo].[HorariosCancha] ([Id])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_HorariosCancha]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Usuarios]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Roles] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Roles]
GO
USE [master]
GO
ALTER DATABASE [BD_SIRCADE] SET  READ_WRITE 
GO
