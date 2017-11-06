CREATE DATABASE [Ferreteria2.2]

USE [Ferreteria2.2]
GO
/****** Object:  Table [dbo].[CLIENTES]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[id_cliente] [tinyint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidoP] [varchar](50) NOT NULL,
	[apellidoM] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[celular] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[RFC] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[id_producto] [tinyint] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [money] NOT NULL,
	[total] [money] NOT NULL,
	[cambio] [money] NOT NULL,
	[id_folio] [tinyint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLEADO]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[id_empleado] [tinyint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidoP] [varchar](50) NOT NULL,
	[apellidoM] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[celular] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EMPLEADO] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ENTRADAS]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTRADAS](
	[id_entrada] [tinyint] NOT NULL,
	[id_producto] [tinyint] NOT NULL,
	[id_provedor] [tinyint] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_ENTRADAS] PRIMARY KEY CLUSTERED 
(
	[id_entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FACTURAS]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURAS](
	[id_factura] [tinyint] NOT NULL,
	[folio] [int] NOT NULL,
	[fecha_factura] [date] NOT NULL,
	[id_cliente] [tinyint] NOT NULL,
 CONSTRAINT [PK_FACTURAS] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PAGO]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO](
	[id_pago] [tinyint] NOT NULL,
	[folio] [int] NOT NULL,
	[monto_pago] [money] NOT NULL,
	[fecha_hora] [datetime] NOT NULL,
	[tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PAGO] PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCTOS]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[id_producto] [tinyint] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[precio] [money] NOT NULL,
	[id_provedor] [tinyint] NOT NULL,
	[cant_disp] [int] NOT NULL,
 CONSTRAINT [PK_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROVEEDOR]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[id_provedor] [tinyint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[celular] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PROVEEDOR] PRIMARY KEY CLUSTERED 
(
	[id_provedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SALIDAS]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALIDAS](
	[id_producto] [tinyint] NOT NULL,
	[cantidad] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VENTAS]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[id_folio] [tinyint] NOT NULL,
	[monto] [money] NOT NULL,
	[Fecha_Hora] [datetime] NOT NULL,
	[id_empleado] [tinyint] NOT NULL,
	[id_pago] [tinyint] NOT NULL,
	[id_factura] [tinyint] NOT NULL,
 CONSTRAINT [PK_VENTAS] PRIMARY KEY CLUSTERED 
(
	[id_folio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [apellidoP], [apellidoM], [direccion], [telefono], [celular], [email], [RFC]) VALUES (1, N'Melanie', N'Solis', N'Reyna', N'Cerradas deAnahuac', N'84010941', N'8112695351', N'nomelose@hotmail.com', N'tampocomelosexd')
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [apellidoP], [apellidoM], [direccion], [telefono], [celular], [email], [RFC]) VALUES (2, N'Andrea', N'Lozada', N'Rodriguez', N'Juan de Ayolas', N'84010942', N'8112695352', N'nomelose@hotmail.com', N'tampocomelose')
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [apellidoP], [apellidoM], [direccion], [telefono], [celular], [email], [RFC]) VALUES (3, N'Gilberto Alejandro', N'Contreras', N'Silva', N'Cerro de las Cumbres', N'8401040', N'8112695350', N'azblexx@hotmail.com', N'nomelose3')
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [apellidoP], [apellidoM], [direccion], [telefono], [celular], [email], [RFC]) VALUES (4, N'Isaac' , N'Alvarado',N'Bermudez' , N'Cerro de la Silla' , N'83456700' , N'8135676856', N'isaac_alvarado@hotmail.com', N'nomelose4' ) 
INSERT [dbo].[DETALLE_VENTA] ([id_producto], [cantidad], [precio], [total], [cambio], [id_folio]) VALUES (1, 5, 400.0000, 2000.0000, 50.0000, 1)
INSERT [dbo].[DETALLE_VENTA] ([id_producto], [cantidad], [precio], [total], [cambio], [id_folio]) VALUES (1, 2, 400.0000, 800.0000, 50.0000, 2)
INSERT [dbo].[DETALLE_VENTA] ([id_producto], [cantidad], [precio], [total], [cambio], [id_folio]) VALUES (1, 1, 400.0000, 400.0000, 50.0000, 3)
INSERT [dbo].[DETALLE_VENTA] ([id_producto], [cantidad], [precio], [total], [cambio], [id_folio]) VALUES (1, 6, 400.0000, 800.0000, 50.0000, 4)
INSERT [dbo].[EMPLEADO] ([id_empleado], [nombre], [apellidoP], [apellidoM], [telefono], [celular]) VALUES (1, N'Juan', N'Gonzales', N'Cantu', N'83391207', N'8117945510')
INSERT [dbo].[EMPLEADO] ([id_empleado], [nombre], [apellidoP], [apellidoM], [telefono], [celular]) VALUES (2, N'Diego', N'Narvaez', N'Serralvo', N'81256480', N'8113647251')
INSERT [dbo].[EMPLEADO] ([id_empleado], [nombre], [apellidoP], [apellidoM], [telefono], [celular]) VALUES (3, N'Monica', N'Torres', N'Rodriguez', N'81568941', N'8112569470')
INSERT [dbo].[EMPLEADO] ([id_empleado], [nombre], [apellidoP], [apellidoM], [telefono], [celular]) VALUES (4, N'Maria', N'Gonzales', N'Rodriguez', N'81562300', N'8114758230')
INSERT [dbo].[ENTRADAS] ([id_entrada], [id_producto], [id_provedor], [cantidad]) VALUES (1, 1, 1, 20)
INSERT [dbo].[ENTRADAS] ([id_entrada], [id_producto], [id_provedor], [cantidad]) VALUES (2, 1, 1, 20)
INSERT [dbo].[ENTRADAS] ([id_entrada], [id_producto], [id_provedor], [cantidad]) VALUES (3, 2, 1, 30)
INSERT [dbo].[ENTRADAS] ([id_entrada], [id_producto], [id_provedor], [cantidad]) VALUES (4, 2, 1, 30)
INSERT [dbo].[FACTURAS] ([id_factura], [folio], [fecha_factura], [id_cliente]) VALUES (1, 1, CAST(0xA23D0B00 AS Date), 1)
INSERT [dbo].[FACTURAS] ([id_factura], [folio], [fecha_factura], [id_cliente]) VALUES (2, 2, CAST(0xCD3C0B00 AS Date), 2)
INSERT [dbo].[FACTURAS] ([id_factura], [folio], [fecha_factura], [id_cliente]) VALUES (3, 3, CAST(0x0C3D0B00 AS Date), 1)
INSERT [dbo].[FACTURAS] ([id_factura], [folio], [fecha_factura], [id_cliente]) VALUES (4, 3, CAST(0xEF3C0B00 AS Date), 3)
INSERT [dbo].[PAGO] ([id_pago], [folio], [monto_pago], [fecha_hora], [tipo]) VALUES (1, 2, 500.0000, CAST(0x0000A79000000000 AS DateTime), N'Efectivo')
INSERT [dbo].[PAGO] ([id_pago], [folio], [monto_pago], [fecha_hora], [tipo]) VALUES (2, 5, 230.0000, CAST(0x0000A74000000000 AS DateTime), N'Cheque')
INSERT [dbo].[PAGO] ([id_pago], [folio], [monto_pago], [fecha_hora], [tipo]) VALUES (3, 2, 2000.0000, CAST(0x0000A79100000000 AS DateTime), N'Efectivo')
INSERT [dbo].[PAGO] ([id_pago], [folio], [monto_pago], [fecha_hora], [tipo]) VALUES (4, 5, 2000.0000, CAST(0x0000A79100000000 AS DateTime), N'Cheque')
INSERT [dbo].[PRODUCTOS] ([id_producto], [descripcion], [nombre], [precio], [id_provedor], [cant_disp]) VALUES (1, N'Mazo', N'Mazo', 400.0000, 1, 50)
INSERT [dbo].[PRODUCTOS] ([id_producto], [descripcion], [nombre], [precio], [id_provedor], [cant_disp]) VALUES (2, N'Martillo', N'Martillo', 150.0000, 2, 10)
INSERT [dbo].[PRODUCTOS] ([id_producto], [descripcion], [nombre], [precio], [id_provedor], [cant_disp]) VALUES (3, N'Tornillos', N'Tornillos', 10.0000, 3, 200)
INSERT [dbo].[PRODUCTOS] ([id_producto], [descripcion], [nombre], [precio], [id_provedor], [cant_disp]) VALUES (4, N'Desarmador', N'Desarmador', 50.0000, 4, 200)
INSERT [dbo].[PROVEEDOR] ([id_provedor], [nombre], [direccion], [telefono], [celular]) VALUES (1, N'HomeDepot', N'Pedro de Alba', N'81458978', N'8115689784')
INSERT [dbo].[PROVEEDOR] ([id_provedor], [nombre], [direccion], [telefono], [celular]) VALUES (2, N'Barrilito', N'Maria del Orco', N'81562300', N'8112695450')
INSERT [dbo].[PROVEEDOR] ([id_provedor], [nombre], [direccion], [telefono], [celular]) VALUES (3, N'GreenLee', N'Jose del Orco', N'81568844', N'8119589452')
INSERT [dbo].[PROVEEDOR] ([id_provedor], [nombre], [direccion], [telefono], [celular]) VALUES (4, N'BlueLee', N'Eloy Cavazos', N'81346788', N'8116508998')
INSERT [dbo].[SALIDAS] ([id_producto], [cantidad]) VALUES (1, 20)
INSERT [dbo].[SALIDAS] ([id_producto], [cantidad]) VALUES (2, 20)
INSERT [dbo].[SALIDAS] ([id_producto], [cantidad]) VALUES (3, 20)
INSERT [dbo].[SALIDAS] ([id_producto], [cantidad]) VALUES (4, 20)
INSERT [dbo].[VENTAS] ([id_folio], [monto], [Fecha_Hora], [id_empleado], [id_pago], [id_factura]) VALUES (1, 500.0000, CAST(0x0000A43400000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[VENTAS] ([id_folio], [monto], [Fecha_Hora], [id_empleado], [id_pago], [id_factura]) VALUES (2, 253.0000, CAST(0x0000A30F00000000 AS DateTime), 2, 3, 1)
INSERT [dbo].[VENTAS] ([id_folio], [monto], [Fecha_Hora], [id_empleado], [id_pago], [id_factura]) VALUES (3, 24.0000, CAST(0x00008C5900000000 AS DateTime), 3, 3, 3)
INSERT [dbo].[VENTAS] ([id_folio], [monto], [Fecha_Hora], [id_empleado], [id_pago], [id_factura]) VALUES (4, 450.0000, CAST(0x00008C5900000000 AS DateTime), 4, 4, 4)
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_PRODUCTOS] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_PRODUCTOS]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_VENTAS] FOREIGN KEY([id_folio])
REFERENCES [dbo].[VENTAS] ([id_folio])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_VENTAS]
GO
ALTER TABLE [dbo].[ENTRADAS]  WITH CHECK ADD  CONSTRAINT [FK_ENTRADAS_PRODUCTOS] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[ENTRADAS] CHECK CONSTRAINT [FK_ENTRADAS_PRODUCTOS]
GO
ALTER TABLE [dbo].[ENTRADAS]  WITH CHECK ADD  CONSTRAINT [FK_ENTRADAS_PROVEEDOR] FOREIGN KEY([id_provedor])
REFERENCES [dbo].[PROVEEDOR] ([id_provedor])
GO
ALTER TABLE [dbo].[ENTRADAS] CHECK CONSTRAINT [FK_ENTRADAS_PROVEEDOR]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [FK_FACTURAS_CLIENTES] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[CLIENTES] ([id_cliente])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [FK_FACTURAS_CLIENTES]
GO
ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTOS_PROVEEDOR] FOREIGN KEY([id_provedor])
REFERENCES [dbo].[PROVEEDOR] ([id_provedor])
GO
ALTER TABLE [dbo].[PRODUCTOS] CHECK CONSTRAINT [FK_PRODUCTOS_PROVEEDOR]
GO
ALTER TABLE [dbo].[SALIDAS]  WITH CHECK ADD  CONSTRAINT [FK_SALIDAS_PRODUCTOS] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[SALIDAS] CHECK CONSTRAINT [FK_SALIDAS_PRODUCTOS]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_EMPLEADO] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[EMPLEADO] ([id_empleado])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_EMPLEADO]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_FACTURAS] FOREIGN KEY([id_factura])
REFERENCES [dbo].[FACTURAS] ([id_factura])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_FACTURAS]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_PAGO] FOREIGN KEY([id_pago])
REFERENCES [dbo].[PAGO] ([id_pago])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_PAGO]
GO
USE [master]
GO
ALTER DATABASE [Ferreteria2.2] SET  READ_WRITE 
GO

