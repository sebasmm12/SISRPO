USE [master]
GO
/****** Object:  Database [BD_SIRCADE]    Script Date: 10/19/2024 8:41:37 PM ******/
CREATE DATABASE [BD_SIRCADE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_SIRCADE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BD_SIRCADE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_SIRCADE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BD_SIRCADE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BD_SIRCADE] SET COMPATIBILITY_LEVEL = 160
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
ALTER DATABASE [BD_SIRCADE] SET QUERY_STORE = ON
GO
ALTER DATABASE [BD_SIRCADE] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BD_SIRCADE]
GO
/****** Object:  Table [dbo].[CanchasDeportivas]    Script Date: 10/19/2024 8:41:38 PM ******/
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
/****** Object:  Table [dbo].[ContrasenasUsuario]    Script Date: 10/19/2024 8:41:38 PM ******/
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
/****** Object:  Table [dbo].[DetalleUsuario]    Script Date: 10/19/2024 8:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleUsuario](
	[Id] [int] NOT NULL,
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
	[Observacion] [varchar](500) NULL,
 CONSTRAINT [PK_Socios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notificaciones]    Script Date: 10/19/2024 8:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notificaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](100) NULL,
	[Plantilla] [varchar](max) NULL,
	[TipoEnvio] [int] NULL,
	[Asunto] [varchar](max) NULL,
 CONSTRAINT [PK_Notificaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionesUsuario]    Script Date: 10/19/2024 8:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionesUsuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNotificacion] [int] NOT NULL,
	[IdUsuarioEmisor] [int] NULL,
	[IdUsuarioReceptor] [int] NOT NULL,
	[Mensaje] [varchar](max) NULL,
	[FechaEnvio] [datetime] NULL,
	[Estado] [int] NULL,
	[Asunto] [varchar](max) NULL,
 CONSTRAINT [PK_NotificacionesUsuario_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 10/19/2024 8:41:38 PM ******/
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
	[Url] [varchar](100) NULL,
 CONSTRAINT [PK_Permisos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermisosRol]    Script Date: 10/19/2024 8:41:38 PM ******/
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
/****** Object:  Table [dbo].[ProgramacionesHorarios]    Script Date: 10/19/2024 8:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramacionesHorarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCancha] [int] NOT NULL,
	[IdCliente] [int] NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
	[Estado] [int] NULL,
	[Comentario] [varchar](500) NULL,
	[Tipo] [int] NOT NULL,
	[IdUsuarioRegistrador] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuarioModificador] [int] NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_HorariosCancha] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/19/2024 8:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCanchaDeportiva]    Script Date: 10/19/2024 8:41:38 PM ******/
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
/****** Object:  Table [dbo].[TiposProgramacion]    Script Date: 10/19/2024 8:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposProgramacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[ColorTemaBlanco] [varchar](100) NULL,
	[ColorTemaOscuro] [varchar](100) NULL,
 CONSTRAINT [PK_TipoProgramacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unidades]    Script Date: 10/19/2024 8:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](500) NULL,
	[Ubicacion] [varchar](500) NULL,
	[Siglas] [varchar](100) NULL,
 CONSTRAINT [PK_Unidades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 10/19/2024 8:41:38 PM ******/
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
SET IDENTITY_INSERT [dbo].[CanchasDeportivas] ON 

INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (1, 1, N'Cancha de futbol 1')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (2, 1, N'Cancha de futbol 2')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (3, 2, N'Cancha de tenis 1')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (4, 2, N'Cancha de tenis 2')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (5, 2, N'Cancha de tenis 3')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (6, 3, N'Cancha de basket 1')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (7, 3, N'Cancha de basket 2')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (8, 4, N'Cancha de voley 1')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (9, 4, N'Cancha de voley 2')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (10, 4, N'Cancha de voley 3')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (11, 5, N'Cancha de fulbito 1')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (12, 5, N'Cancha de fulbito 2')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (13, 5, N'Cancha de fulbito 3')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (14, 5, N'Cancha de fulbito 4')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (15, 2, N'Cancha de tenis 3')
INSERT [dbo].[CanchasDeportivas] ([Id], [Tipo], [Nombre]) VALUES (16, 4, N'Cancha de voley 5')
SET IDENTITY_INSERT [dbo].[CanchasDeportivas] OFF
GO
INSERT [dbo].[DetalleUsuario] ([Id], [Grado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [Unidad], [FechaNacimiento], [Direccion], [Telefono], [Celular], [Correo], [Afiliado], [Situacion], [DNI], [EstadoCivil], [Observacion]) VALUES (1, N'Teniente General', N'Acuña', N'Reynoso', N'Fernando', 1, CAST(N'1976-11-19' AS Date), N'Esquina Jirón Rodríguez de Mendoza N° 299 c', N'2679143', N'988479159', N'smirandamanrique@gmail.com', 1, 0, N'09763421', 0, N'Actualización por segunda vez')
INSERT [dbo].[DetalleUsuario] ([Id], [Grado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [Unidad], [FechaNacimiento], [Direccion], [Telefono], [Celular], [Correo], [Afiliado], [Situacion], [DNI], [EstadoCivil], [Observacion]) VALUES (2, N'Mayor', N'Ramirez', N'De los Almos', N'Richard', 1, CAST(N'1980-08-31' AS Date), N'Esquina Jirón Rodríguez de Mendoza N° 299 c', N'2679143', N'988479159', N'smirandamanrique@gmail.com', 1, 0, N'78563456', 1, N'Usuario administrador')
INSERT [dbo].[DetalleUsuario] ([Id], [Grado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [Unidad], [FechaNacimiento], [Direccion], [Telefono], [Celular], [Correo], [Afiliado], [Situacion], [DNI], [EstadoCivil], [Observacion]) VALUES (3, N'Alferez', N'Perez', N'De los Almos', N'Mendez', 1, CAST(N'1980-08-30' AS Date), N'Esquina Jirón Rodríguez de Mendoza N° 299 c', N'2679143', N'988479159', N'smirandamanrique@gmail.com', 1, 0, N'78563456', 1, N'Usuario recepcionista')
INSERT [dbo].[DetalleUsuario] ([Id], [Grado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [Unidad], [FechaNacimiento], [Direccion], [Telefono], [Celular], [Correo], [Afiliado], [Situacion], [DNI], [EstadoCivil], [Observacion]) VALUES (6, N'Comandante', N'Bellido', N'Vargas', N'Enrique', 31, CAST(N'1980-05-14' AS Date), N'Esquina Jirones San Martín N° 1001 con Eleazar Guzman s/n', N'2685739', N'988542024', N'smirandamanrique@gmail.com', 1, 0, N'08615228', 0, N'Test')
INSERT [dbo].[DetalleUsuario] ([Id], [Grado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [Unidad], [FechaNacimiento], [Direccion], [Telefono], [Celular], [Correo], [Afiliado], [Situacion], [DNI], [EstadoCivil], [Observacion]) VALUES (7, N'Capitán', N'Gibaja', N'Guevara', N'William', 11, CAST(N'1978-04-07' AS Date), N'96913', N'96913', N'988702679', N'smirandamanrique@gmail.com', 0, 0, N'96913', 0, N'Test')
INSERT [dbo].[DetalleUsuario] ([Id], [Grado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [Unidad], [FechaNacimiento], [Direccion], [Telefono], [Celular], [Correo], [Afiliado], [Situacion], [DNI], [EstadoCivil], [Observacion]) VALUES (8, N'STE', N'Ramirez', N'Cruz', N'Richard', 3, CAST(N'1972-12-13' AS Date), N'Villa el Salvador', N'5678945', N'345678123', N'smirandamanrique@gmail.com', 1, 0, N'56783467', 0, N'Test 2')
INSERT [dbo].[DetalleUsuario] ([Id], [Grado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [Unidad], [FechaNacimiento], [Direccion], [Telefono], [Celular], [Correo], [Afiliado], [Situacion], [DNI], [EstadoCivil], [Observacion]) VALUES (9, N'Alferez', N'Perez', N'Quispe', N'Sebastian ', 14, CAST(N'1970-02-25' AS Date), N'Villa María del Triunfo', N'2528776', N'987654321', N'sebastian.perez@hotmail.com', 1, 0, N'08944123', 0, N'')
INSERT [dbo].[DetalleUsuario] ([Id], [Grado], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [Unidad], [FechaNacimiento], [Direccion], [Telefono], [Celular], [Correo], [Afiliado], [Situacion], [DNI], [EstadoCivil], [Observacion]) VALUES (10, N'Comandante', N'Palacios', N'Pereda', N'Miguel', 7, CAST(N'1969-02-05' AS Date), N'San Miguel', N'2528974', N'998563210', N'miguel.palacios@hotmail.com', 1, 0, N'09834521', 1, N'')
GO
SET IDENTITY_INSERT [dbo].[Notificaciones] ON 

INSERT [dbo].[Notificaciones] ([Id], [Tipo], [Plantilla], [TipoEnvio], [Asunto]) VALUES (1, N'RecordatorioDeReservacion', N'No se olvide su reservación de la {{CanchaDeportiva}} el día de {{FechaInicio}}', 0, N'Recordatorio de Reservación!')
SET IDENTITY_INSERT [dbo].[Notificaciones] OFF
GO
SET IDENTITY_INSERT [dbo].[NotificacionesUsuario] ON 

INSERT [dbo].[NotificacionesUsuario] ([Id], [IdNotificacion], [IdUsuarioEmisor], [IdUsuarioReceptor], [Mensaje], [FechaEnvio], [Estado], [Asunto]) VALUES (4, 1, NULL, 1, N'No se olvide su reservación de la Cancha de futbol 1 el día de 13/10/2024 1:00:00 PM', CAST(N'2024-10-12T19:09:04.867' AS DateTime), 0, N'Recordatorio de Reservación!')
SET IDENTITY_INSERT [dbo].[NotificacionesUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Permisos] ON 

INSERT [dbo].[Permisos] ([Id], [Nombre], [Descripcion], [Tipo], [Icono], [Url]) VALUES (1, N'Socios', N'Permiso para entrar a la vista de socios', 0, N'users', N'socios')
INSERT [dbo].[Permisos] ([Id], [Nombre], [Descripcion], [Tipo], [Icono], [Url]) VALUES (2, N'Personal', N'Permiso para entrar a la vista del personal', 0, N'user-pin', N'personal')
INSERT [dbo].[Permisos] ([Id], [Nombre], [Descripcion], [Tipo], [Icono], [Url]) VALUES (3, N'Roles', N'Permiso para entrar a la vista de gestión de los roles', 0, N'badge', N'roles')
INSERT [dbo].[Permisos] ([Id], [Nombre], [Descripcion], [Tipo], [Icono], [Url]) VALUES (4, N'Reservas', N'Permiso para reservas', 0, N'calendar', N'reservas')
INSERT [dbo].[Permisos] ([Id], [Nombre], [Descripcion], [Tipo], [Icono], [Url]) VALUES (5, N'Canchas deportivas', N'Permiso para entrar a la vista de las canchas deportivas', 0, N'soccer-field', N'canchas-deportivas')
INSERT [dbo].[Permisos] ([Id], [Nombre], [Descripcion], [Tipo], [Icono], [Url]) VALUES (6, N'Programación de horarios', N'Permiso para entrar a la vista de programación horarios', 0, N'calendar', N'programacion-horarios')
INSERT [dbo].[Permisos] ([Id], [Nombre], [Descripcion], [Tipo], [Icono], [Url]) VALUES (7, N'Reportes', N'Permiso para reportes', 0, N'printer', N'reportes')
SET IDENTITY_INSERT [dbo].[Permisos] OFF
GO
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (1, 1)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (1, 2)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (1, 3)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (1, 5)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (1, 6)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (1, 7)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (2, 4)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (3, 6)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (5, 1)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (5, 2)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (6, 1)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (7, 1)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (8, 1)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (9, 2)
INSERT [dbo].[PermisosRol] ([IdRol], [IdPermiso]) VALUES (9, 4)
GO
SET IDENTITY_INSERT [dbo].[ProgramacionesHorarios] ON 

INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (1, 1, NULL, CAST(N'2024-08-30T13:00:00.000' AS DateTime), CAST(N'2024-08-30T14:00:00.000' AS DateTime), 0, N'Se necesita realizar mantenimiento a la cancha de fútbol', 1, 1, CAST(N'2024-08-30T13:45:12.990' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (2, 2, NULL, CAST(N'2024-09-01T14:00:00.000' AS DateTime), CAST(N'2024-09-01T15:00:00.000' AS DateTime), 0, N'Mantenimiento a la cancha de fultbol 2', 1, 1, CAST(N'2024-08-30T17:46:21.807' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (3, 3, NULL, CAST(N'2024-08-30T13:00:00.000' AS DateTime), CAST(N'2024-08-30T14:00:00.000' AS DateTime), 0, N'Mantenimiento a la cancha de tenis 1', 1, 1, CAST(N'2024-08-30T17:46:59.723' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (4, 1, 1, CAST(N'2024-08-31T13:00:00.000' AS DateTime), CAST(N'2024-08-31T14:00:00.000' AS DateTime), 2, N'Reserva de cliente', 2, 1, CAST(N'2024-08-31T11:28:47.823' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (5, 4, 1, CAST(N'2024-09-01T12:00:00.000' AS DateTime), CAST(N'2024-09-01T13:00:00.000' AS DateTime), 0, N'Reserva de cancha de tenis 2', 2, 1, CAST(N'2024-08-31T11:41:00.977' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (6, 13, NULL, CAST(N'2024-09-02T13:00:00.000' AS DateTime), CAST(N'2024-09-02T14:00:00.000' AS DateTime), 2, N'Mantenimiento de la cancha', 1, 1, CAST(N'2024-08-31T11:46:03.440' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (7, 8, 1, CAST(N'2024-09-01T12:00:00.000' AS DateTime), CAST(N'2024-09-01T13:00:00.000' AS DateTime), 1, N'Reserva de cancha de voley 1', 2, 1, CAST(N'2024-08-31T12:22:35.783' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (8, 7, NULL, CAST(N'2024-10-02T08:00:00.000' AS DateTime), CAST(N'2024-10-02T09:00:00.000' AS DateTime), 0, N'Cancha de basket en  mantenimiento ', 1, 1, CAST(N'2024-08-31T12:30:38.627' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (9, 14, NULL, CAST(N'2024-08-31T16:00:00.000' AS DateTime), CAST(N'2024-08-31T17:00:00.000' AS DateTime), 2, N'Mantenimiento de la cancha', 1, 2, CAST(N'2024-08-31T16:17:22.867' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (10, 1, NULL, CAST(N'2024-08-31T13:00:00.000' AS DateTime), CAST(N'2024-08-31T14:00:00.000' AS DateTime), 0, N'Mantenimiento con urgencia', 1, 2, CAST(N'2024-08-31T22:20:06.427' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (11, 1, NULL, CAST(N'2024-09-10T17:00:00.000' AS DateTime), CAST(N'2024-09-10T18:00:00.000' AS DateTime), 1, N'Mantenimiento por fumigación', 1, 2, CAST(N'2024-09-01T00:13:12.023' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (12, 1, NULL, CAST(N'2024-09-01T12:00:00.000' AS DateTime), CAST(N'2024-09-01T14:00:00.000' AS DateTime), 0, N'Test', 1, 2, CAST(N'2024-09-01T00:14:02.717' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (14, 1, NULL, CAST(N'2024-09-10T11:00:00.000' AS DateTime), CAST(N'2024-09-10T13:00:00.000' AS DateTime), 0, N'Test', 1, 2, CAST(N'2024-09-01T00:21:11.090' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (15, 1, 1, CAST(N'2024-09-11T13:00:00.000' AS DateTime), CAST(N'2024-09-11T14:00:00.000' AS DateTime), 2, N'Tesis', 2, 1, CAST(N'2024-09-01T00:30:57.853' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (16, 1, 1, CAST(N'2024-09-11T14:00:00.000' AS DateTime), CAST(N'2024-09-11T15:00:00.000' AS DateTime), 2, N'Test', 2, 1, CAST(N'2024-09-01T00:33:06.510' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (17, 1, NULL, CAST(N'2024-09-11T14:00:00.000' AS DateTime), CAST(N'2024-09-11T15:00:00.000' AS DateTime), 2, N'Test', 1, 2, CAST(N'2024-09-01T00:34:49.660' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (18, 14, 1, CAST(N'2024-09-01T14:00:00.000' AS DateTime), CAST(N'2024-09-01T15:00:00.000' AS DateTime), 0, N'Reserva ', 2, 1, CAST(N'2024-09-01T11:19:23.487' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (19, 1, 1, CAST(N'2024-09-11T11:00:00.000' AS DateTime), CAST(N'2024-09-11T12:00:00.000' AS DateTime), 2, N'Reservar para divertime con  mis amigos', 2, 1, CAST(N'2024-09-01T12:20:37.133' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (20, 2, 1, CAST(N'2024-09-11T13:00:00.000' AS DateTime), CAST(N'2024-09-11T14:00:00.000' AS DateTime), 2, N'Test', 2, 1, CAST(N'2024-09-01T12:20:56.630' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (21, 3, 1, CAST(N'2024-09-20T15:00:00.000' AS DateTime), CAST(N'2024-09-20T16:00:00.000' AS DateTime), 0, N'Reserva', 2, 1, CAST(N'2024-09-01T13:07:05.610' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (22, 7, 1, CAST(N'2024-09-07T13:00:00.000' AS DateTime), CAST(N'2024-09-07T14:00:00.000' AS DateTime), 0, N'Reserva de cancha de basket', 2, 1, CAST(N'2024-09-07T08:46:02.447' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (23, 6, NULL, CAST(N'2024-09-10T09:00:00.000' AS DateTime), CAST(N'2024-09-10T13:00:00.000' AS DateTime), 0, N'Mantenimiento cancha de basket 1 ', 1, 2, CAST(N'2024-09-07T09:06:25.457' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (24, 6, 1, CAST(N'2024-09-10T15:00:00.000' AS DateTime), CAST(N'2024-09-10T16:00:00.000' AS DateTime), 1, N'Reserva de cancha de basket 1', 2, 1, CAST(N'2024-09-07T12:41:26.413' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (25, 9, NULL, CAST(N'2024-09-12T13:00:00.000' AS DateTime), CAST(N'2024-09-12T15:00:00.000' AS DateTime), 0, N'Mantenimiento de la cancha de voley 2', 1, 3, CAST(N'2024-09-07T12:45:34.427' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (26, 3, 9, CAST(N'2024-09-18T13:00:00.000' AS DateTime), CAST(N'2024-09-18T14:00:00.000' AS DateTime), 0, N'Quiere juegar con mi equipo', 2, 9, CAST(N'2024-09-07T13:20:55.310' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (27, 5, 9, CAST(N'2024-09-20T15:00:00.000' AS DateTime), CAST(N'2024-09-20T16:00:00.000' AS DateTime), 0, N'Quiero jugar con mi equipo', 2, 9, CAST(N'2024-09-07T13:21:09.840' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (28, 9, 9, CAST(N'2024-09-28T17:00:00.000' AS DateTime), CAST(N'2024-09-28T18:00:00.000' AS DateTime), 2, N'Quiero jugar con mi equipo', 2, 9, CAST(N'2024-09-07T13:21:27.047' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (29, 1, 1, CAST(N'2024-10-13T13:00:00.000' AS DateTime), CAST(N'2024-10-13T14:00:00.000' AS DateTime), 0, N'Diversión con mis compañeros en un día de fútbol', 2, 1, CAST(N'2024-10-12T17:28:12.113' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (30, 2, NULL, CAST(N'2024-10-22T08:00:00.000' AS DateTime), CAST(N'2024-10-22T15:00:00.000' AS DateTime), 0, N'Mantenimiento', 1, 2, CAST(N'2024-10-19T14:49:03.060' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (31, 2, 1, CAST(N'2024-10-22T06:00:00.000' AS DateTime), CAST(N'2024-10-22T07:00:00.000' AS DateTime), 2, N'Test', 2, 1, CAST(N'2024-10-19T16:45:22.183' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (32, 2, 1, CAST(N'2024-10-22T07:00:00.000' AS DateTime), CAST(N'2024-10-22T08:00:00.000' AS DateTime), 2, N'Test', 2, 1, CAST(N'2024-10-19T16:48:40.927' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (33, 2, 1, CAST(N'2024-10-22T15:00:00.000' AS DateTime), CAST(N'2024-10-22T16:00:00.000' AS DateTime), 2, N'Test', 2, 1, CAST(N'2024-10-19T16:49:31.417' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (34, 1, NULL, CAST(N'2024-10-19T13:00:00.000' AS DateTime), CAST(N'2024-10-19T14:00:00.000' AS DateTime), 1, N'Mantenimiento a la cancha de futbol 1', 1, 2, CAST(N'2024-10-19T16:59:58.500' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (35, 2, 1, CAST(N'2024-10-22T07:00:00.000' AS DateTime), CAST(N'2024-10-22T08:00:00.000' AS DateTime), 1, N'Test', 2, 1, CAST(N'2024-10-19T17:14:44.743' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (36, 2, 1, CAST(N'2024-10-22T07:00:00.000' AS DateTime), CAST(N'2024-10-22T08:00:00.000' AS DateTime), 2, N'Test', 2, 1, CAST(N'2024-10-19T17:44:45.303' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (37, 2, 1, CAST(N'2024-10-23T10:00:00.000' AS DateTime), CAST(N'2024-10-23T11:00:00.000' AS DateTime), 1, N'Test', 2, 1, CAST(N'2024-10-19T17:52:22.457' AS DateTime), NULL, NULL)
INSERT [dbo].[ProgramacionesHorarios] ([Id], [IdCancha], [IdCliente], [FechaInicio], [FechaFin], [Estado], [Comentario], [Tipo], [IdUsuarioRegistrador], [FechaRegistro], [IdUsuarioModificador], [FechaActualizacion]) VALUES (38, 3, 1, CAST(N'2024-10-24T23:00:00.000' AS DateTime), CAST(N'2024-10-24T00:00:00.000' AS DateTime), 0, N'Test', 2, 1, CAST(N'2024-10-19T18:32:42.327' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProgramacionesHorarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (1, N'Administrador', 1)
INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (2, N'Socio', 1)
INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (3, N'Recepcionista', 1)
INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (5, N'Test', 0)
INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (6, N'test', 0)
INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (7, N'test2', 0)
INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (8, N'Recepcionista de noche', 0)
INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (9, N'Recepcionista diurno', 0)
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposCanchaDeportiva] ON 

INSERT [dbo].[TiposCanchaDeportiva] ([Id], [Nombre]) VALUES (1, N'Futbol')
INSERT [dbo].[TiposCanchaDeportiva] ([Id], [Nombre]) VALUES (2, N'Tenis')
INSERT [dbo].[TiposCanchaDeportiva] ([Id], [Nombre]) VALUES (3, N'Basket')
INSERT [dbo].[TiposCanchaDeportiva] ([Id], [Nombre]) VALUES (4, N'Voley')
INSERT [dbo].[TiposCanchaDeportiva] ([Id], [Nombre]) VALUES (5, N'Fulbito')
SET IDENTITY_INSERT [dbo].[TiposCanchaDeportiva] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposProgramacion] ON 

INSERT [dbo].[TiposProgramacion] ([Id], [Nombre], [ColorTemaBlanco], [ColorTemaOscuro]) VALUES (1, N'Mantenimiento', N'#fa896b', N'#fa896b')
INSERT [dbo].[TiposProgramacion] ([Id], [Nombre], [ColorTemaBlanco], [ColorTemaOscuro]) VALUES (2, N'Reserva', N'#d1e8ff', N'#d1e8ff')
SET IDENTITY_INSERT [dbo].[TiposProgramacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Unidades] ON 

INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (1, N'DIGLO', NULL, N'DIGLO')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (2, N'FOSEP', NULL, N'FOSEP')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (3, N'AGARG', NULL, N'AGARG')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (4, N'AGCOR', NULL, N'AGCOR')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (5, N'AGECU', NULL, N'AGECU')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (6, N'AGESP', NULL, N'AGESP')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (7, N'AGITA', NULL, N'AGITA')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (8, N'AGSRA', NULL, N'AGSRA')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (9, N'ALAR2', NULL, N'ALAR2')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (10, N'ALAR4', NULL, N'ALAR4')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (11, N'ALAR6', NULL, N'ALAR6')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (12, N'CAM', NULL, N'CAM')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (13, N'CAMEP', NULL, N'CAMEP')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (14, N'CASED', NULL, N'CASED')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (15, N'CAVRAE', NULL, N'CAVRAE')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (16, N'CCFA', NULL, N'CCFA')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (17, N'CEVRAE', NULL, N'CEVRAE')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (18, N'COMOP', NULL, N'COMOP')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (19, N'CONIDA', NULL, N'CONIDA')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (20, N'COPCE', NULL, N'COPCE')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (21, N'DEFOR', NULL, N'DEFOR')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (22, N'DIGED', NULL, N'DIGED')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (23, N'DIDEP', NULL, N'DIDEP')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (24, N'DIAPE', NULL, N'DIAPE')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (25, N'DIGPE', NULL, N'DIGPE')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (26, N'DIPAC', NULL, N'DIPAC')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (27, N'DIREC', NULL, N'DIREC')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (28, N'DISAN', NULL, N'DISAN')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (29, N'DITEL', NULL, N'DITEL')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (30, N'DIVAN', NULL, N'DIVAN')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (31, N'EMGRA', NULL, N'EMGRA')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (32, N'ESFAP', NULL, N'ESFAP')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (33, N'EAFAP', NULL, N'EAFAP')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (34, N'EOFAP', NULL, N'EOFAP')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (35, N'ESOFA', NULL, N'ESOFA')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (36, N'ESMAR', NULL, N'ESMAR')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (37, N'ESMON', NULL, N'ESMON')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (38, N'FOVIM', NULL, N'FOVIM')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (39, N'HOSPI', NULL, N'HOSPI')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (40, N'GRU31', NULL, N'GRU31')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (41, N'GRU42', NULL, N'GRU42')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (42, N'GRUP3', NULL, N'GRUP3')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (43, N'GRU51', NULL, N'GRU51')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (44, N'HORES', NULL, N'HORES')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (45, N'HOREO', NULL, N'HOREO')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (46, N'INSPE', NULL, N'INSPE')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (47, N'MIDEF', NULL, N'MIDEF')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (48, N'SEDIN', NULL, N'SEDIN')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (49, N'ODEMI', NULL, N'ODEMI')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (50, N'PEREXT', NULL, N'PEREXT')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (51, N'SECIN', NULL, N'SECIN')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (52, N'SECRE', NULL, N'SECRE')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (53, N'TSMP', NULL, N'TSMP')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (54, N'SEMFAP', NULL, N'SEMFAP')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (55, N'SEMSAC', NULL, N'SEMSAC')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (56, N'SESAN', NULL, N'SESAN')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (57, N'SINFA', NULL, N'SINFA')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (58, N'SEMAG', NULL, N'SEMAG')
INSERT [dbo].[Unidades] ([Id], [Nombre], [Ubicacion], [Siglas]) VALUES (59, N'SEINT', NULL, N'SEINT')
SET IDENTITY_INSERT [dbo].[Unidades] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id], [IdRol], [NSA], [Contrasena], [Salt]) VALUES (1, 2, N'96529', N'b+86fZTsT5gWduW3fvrvXztqI2/NRoQ0uqMY0fdNwQM=', N'evRxu2TWOJk+jWl8RODZDg==')
INSERT [dbo].[Usuarios] ([Id], [IdRol], [NSA], [Contrasena], [Salt]) VALUES (2, 1, N'96565', N'n41oIgJzEMULzM8yycdNBBppJKo0QXu5FR48tonXviw=', N'GMmStXem7CMptLv2YJ1T5A==')
INSERT [dbo].[Usuarios] ([Id], [IdRol], [NSA], [Contrasena], [Salt]) VALUES (3, 3, N'96566', N'LjEYnIQDLL1/02La+tNO/zV46XXqtYCCOv9C6AGsoVM=', N'/7s70QbWyPkxnnrEcqw+kA==')
INSERT [dbo].[Usuarios] ([Id], [IdRol], [NSA], [Contrasena], [Salt]) VALUES (6, 2, N'96637', N'x7USDivAeIoX7L5eFeYsO5McGWjiMiQxDGPpbVrc8lI=', N'dmHy2KTMh+3X76MIx9BP9g==')
INSERT [dbo].[Usuarios] ([Id], [IdRol], [NSA], [Contrasena], [Salt]) VALUES (7, 2, N'96913', N'a0plcBlSIRDqAzkt04zvlFZP5H1Bh1cNEPHIfdqBWb0=', N'mN7mUS1LRcfZ6xEg6IBmLQ==')
INSERT [dbo].[Usuarios] ([Id], [IdRol], [NSA], [Contrasena], [Salt]) VALUES (8, 3, N'671234', N'Ajx2aAExrICaj/CVRmje5kWjtIMrG0tS4KP1ZeTFWcE=', N'nm8TAxIrvLxwVVNKmYZxuA==')
INSERT [dbo].[Usuarios] ([Id], [IdRol], [NSA], [Contrasena], [Salt]) VALUES (9, 2, N'806554', N'4/NNKKSAb2sPop/3lvRcEfPcBf/BYkbFRwUerycKWl4=', N'18v+l3Zr3pxZWm7gggImuQ==')
INSERT [dbo].[Usuarios] ([Id], [IdRol], [NSA], [Contrasena], [Salt]) VALUES (10, 2, N'608043', N'vB5uXAClmAeHDF3FOHEuZ6ISWTKzTq5cCA/Upl85nk8=', N'RjNgB3AAxBedKIjZQpxEpw==')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
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
ALTER TABLE [dbo].[ProgramacionesHorarios]  WITH CHECK ADD  CONSTRAINT [FK_HorariosCancha_CanchasDeportivas] FOREIGN KEY([IdCancha])
REFERENCES [dbo].[CanchasDeportivas] ([Id])
GO
ALTER TABLE [dbo].[ProgramacionesHorarios] CHECK CONSTRAINT [FK_HorariosCancha_CanchasDeportivas]
GO
ALTER TABLE [dbo].[ProgramacionesHorarios]  WITH CHECK ADD  CONSTRAINT [FK_HorariosCancha_Usuarios] FOREIGN KEY([IdUsuarioRegistrador])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[ProgramacionesHorarios] CHECK CONSTRAINT [FK_HorariosCancha_Usuarios]
GO
ALTER TABLE [dbo].[ProgramacionesHorarios]  WITH CHECK ADD  CONSTRAINT [FK_HorariosCancha_Usuarios1] FOREIGN KEY([IdUsuarioModificador])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[ProgramacionesHorarios] CHECK CONSTRAINT [FK_HorariosCancha_Usuarios1]
GO
ALTER TABLE [dbo].[ProgramacionesHorarios]  WITH CHECK ADD  CONSTRAINT [FK_ProgramacionesHorarios_TipoProgramacion] FOREIGN KEY([Tipo])
REFERENCES [dbo].[TiposProgramacion] ([Id])
GO
ALTER TABLE [dbo].[ProgramacionesHorarios] CHECK CONSTRAINT [FK_ProgramacionesHorarios_TipoProgramacion]
GO
ALTER TABLE [dbo].[ProgramacionesHorarios]  WITH CHECK ADD  CONSTRAINT [FK_ProgramacionesHorarios_Usuarios] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[ProgramacionesHorarios] CHECK CONSTRAINT [FK_ProgramacionesHorarios_Usuarios]
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
