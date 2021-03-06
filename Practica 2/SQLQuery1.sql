USE [LaboratorioBD]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 09/11/2017 16:27:35 ******/
DROP TABLE [dbo].[CLIENTE]
GO
/****** Object:  Table [dbo].[DIRECCION]    Script Date: 09/11/2017 16:27:35 ******/
DROP TABLE [dbo].[DIRECCION]
GO
/****** Object:  Table [dbo].[GENERO]    Script Date: 09/11/2017 16:27:35 ******/
DROP TABLE [dbo].[GENERO]
GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 09/11/2017 16:27:35 ******/
DROP TABLE [dbo].[INVENTARIO]
GO
/****** Object:  Table [dbo].[PELICULA]    Script Date: 09/11/2017 16:27:36 ******/
DROP TABLE [dbo].[PELICULA]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 09/11/2017 16:27:36 ******/
DROP TABLE [dbo].[PRODUCTO]
GO
/****** Object:  Table [dbo].[RENTA]    Script Date: 09/11/2017 16:27:36 ******/
DROP TABLE [dbo].[RENTA]
GO
/****** Object:  Table [dbo].[RENTA]    Script Date: 09/11/2017 16:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RENTA](
	[Id_Renta] [uniqueidentifier] NULL,
	[Fecha_Renta] [timestamp] NULL,
	[Fecha_Entrega] [date] NULL,
	[Cliente] [int] NULL,
	[Inventario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 09/11/2017 16:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[Id_Producto] [int] NULL,
	[Palomitas] [float] NULL,
	[Precio] [money] NULL,
	[Dulces] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PELICULA]    Script Date: 09/11/2017 16:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULA](
	[Id_Pelicula] [uniqueidentifier] NULL,
	[Nombre] [nvarchar](50) NULL,
	[Duracion] [int] NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Año] [date] NULL,
	[Genero] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 09/11/2017 16:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTARIO](
	[Id_Inventaro] [int] NULL,
	[Disponible] [tinyint] NULL,
	[Pelicula] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GENERO]    Script Date: 09/11/2017 16:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENERO](
	[Id_Genero] [int] NULL,
	[Nombre_genero] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIRECCION]    Script Date: 09/11/2017 16:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIRECCION](
	[Id_Direccion] [uniqueidentifier] NULL,
	[Direccion] [nvarchar](50) NULL,
	[Ciudad] [nchar](10) NULL,
	[Pais] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 09/11/2017 16:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[Id_Cliente] [uniqueidentifier] NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[FechaDeNacimiento] [date] NULL,
	[Direccion] [int] NULL
) ON [PRIMARY]
GO
