SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EstatusVenta](
	[Id] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_EstatusVenta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Empleados](
	[ID_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[NumeroEmpleado] [int] NULL,
	[Nombre] [varchar](10) NULL,
	[Apellido_Paterno] [nvarchar](20) NULL,
	[Apellido_Materno] [varchar](20) NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Edad] [varchar](10) NULL,
	[Fecha_Ingreso] [date] NULL,
	[Dias_Antiguedad] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Productos](
	[Id] [int] NOT NULL,
	[CodigoBarras] [nvarchar](50) NULL,
	[Nombre] [nvarchar](50) NULL,
	[PrecioBase] [money] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Almacenes](
	[Id] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Almacenes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ventas](
	[Id] [int] NOT NULL,
	[IdEmpeladoVenta] [int] NULL,
	[IdEstatus] [int] NULL,
	[Folio] [int] NULL,
	[Subtotal] [money] NULL,
	[IVA] [money] NULL,
	[Total] [money] NULL,
	[FechaHora] [timestamp] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [InventarioAlmacenProductos](
	[Id] [int] NOT NULL,
	[IdAlmacen] [int] NULL,
	[IdProducto] [int] NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_InventarioAlmacenProductos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DetalleVentaIAP](
	[Id] [int] NOT NULL,
	[IdVenta] [int] NULL,
	[IdIAP] [int] NULL,
	[Cantidad] [int] NULL,
	[PrecioUnitario] [money] NULL,
	[Subtotal] [money] NULL,
 CONSTRAINT [PK_DetalleVentaIAP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [DetalleVentaIAP]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentaIAP_InventarioAlmacenProductos] FOREIGN KEY([IdVenta])
REFERENCES [InventarioAlmacenProductos] ([Id])
GO
ALTER TABLE [DetalleVentaIAP] CHECK CONSTRAINT [FK_DetalleVentaIAP_InventarioAlmacenProductos]
GO
ALTER TABLE [DetalleVentaIAP]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentaIAP_Ventas] FOREIGN KEY([IdVenta])
REFERENCES [Ventas] ([Id])
GO
ALTER TABLE [DetalleVentaIAP] CHECK CONSTRAINT [FK_DetalleVentaIAP_Ventas]
GO
ALTER TABLE [InventarioAlmacenProductos]  WITH CHECK ADD  CONSTRAINT [FK_InventarioAlmacenProductos_Almacenes] FOREIGN KEY([IdAlmacen])
REFERENCES [Almacenes] ([Id])
GO
ALTER TABLE [InventarioAlmacenProductos] CHECK CONSTRAINT [FK_InventarioAlmacenProductos_Almacenes]
GO
ALTER TABLE [InventarioAlmacenProductos]  WITH CHECK ADD  CONSTRAINT [FK_InventarioAlmacenProductos_Productos] FOREIGN KEY([IdProducto])
REFERENCES [Productos] ([Id])
GO
ALTER TABLE [InventarioAlmacenProductos] CHECK CONSTRAINT [FK_InventarioAlmacenProductos_Productos]
GO
ALTER TABLE [Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleados] FOREIGN KEY([IdEmpeladoVenta])
REFERENCES [Empleados] ([ID_Empleado])
GO
ALTER TABLE [Ventas] CHECK CONSTRAINT [FK_Ventas_Empleados]
GO
ALTER TABLE [Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_EstatusVenta] FOREIGN KEY([IdEstatus])
REFERENCES [EstatusVenta] ([Id])
GO
ALTER TABLE [Ventas] CHECK CONSTRAINT [FK_Ventas_EstatusVenta]
GO
