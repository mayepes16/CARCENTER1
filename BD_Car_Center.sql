USE [CARCENTER]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 04/03/2021 9:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[PrimerNombre] [nchar](20) NOT NULL,
	[SegundoNombre] [nchar](20) NOT NULL,
	[PrimerApellido] [nchar](20) NOT NULL,
	[SegundoApellido] [nchar](10) NOT NULL,
	[TipoDoc] [nchar](2) NOT NULL,
	[Doc_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[Celular] [int] NULL,
	[Direccion] [nchar](30) NULL,
	[CorreoElectronico] [nchar](30) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Doc_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 04/03/2021 9:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[ID_Factura] [int] IDENTITY(1,1) NOT NULL,
	[Doc_Cliente] [int] NOT NULL,
	[Doc_Mecanico] [int] NOT NULL,
	[ID_Repuesto] [int] NOT NULL,
	[ID_Servicio] [int] NOT NULL,
	[Total] [float] NULL,
	[Fecha_Fac] [date] NOT NULL,
	[ID_Tienda] [int] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[ID_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mecanico]    Script Date: 04/03/2021 9:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mecanico](
	[PrimerNombre] [nchar](20) NOT NULL,
	[SegundoNombre] [nchar](20) NOT NULL,
	[PrimerApellido] [nchar](20) NOT NULL,
	[SegundoApellido] [nchar](20) NOT NULL,
	[TipoDoc] [nchar](2) NOT NULL,
	[Doc_Mecanico] [int] IDENTITY(1,1) NOT NULL,
	[Celular] [int] NULL,
	[Direccion] [nchar](30) NULL,
	[CorreoElectronico] [nchar](30) NULL,
 CONSTRAINT [PK_Mecanico] PRIMARY KEY CLUSTERED 
(
	[Doc_Mecanico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repuesto]    Script Date: 04/03/2021 9:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repuesto](
	[ID_Repuesto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](30) NOT NULL,
	[Precio] [float] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Repuesto] PRIMARY KEY CLUSTERED 
(
	[ID_Repuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 04/03/2021 9:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[ID_Servicio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](30) NOT NULL,
	[Precio] [float] NOT NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[ID_Servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 04/03/2021 9:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tienda](
	[ID_Tienda] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](30) NULL,
	[Direccion] [nchar](30) NULL,
	[Ciudad] [nchar](30) NULL,
 CONSTRAINT [PK_Tienda] PRIMARY KEY CLUSTERED 
(
	[ID_Tienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'Mario               ', N'Andres              ', N'Yepes               ', N'Goenaga   ', N'CC', 1140873917, NULL, N'Cra 77a # 85-75               ', N'Mario.yepes@gmail.com         ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ANTONIO             ', N'GARCIA              ', N'MARTINEZ            ', N'GARCIA    ', N'CC', 1140873919, 1140873918, N'Cra 77a # 85-76               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JOSE                ', N'MARTINEZ            ', N'LOPEZ               ', N'MARTINEZ  ', N'CC', 1140873920, 1140873919, N'Cra 77a # 85-77               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'FRANCISCO           ', N'LOPEZ               ', N'SANCHEZ             ', N'LOPEZ     ', N'CC', 1140873921, 1140873920, N'Cra 77a # 85-78               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JUAN                ', N'SANCHEZ             ', N'GONZALEZ            ', N'SANCHEZ   ', N'CC', 1140873922, 1140873921, N'Cra 77a # 85-79               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MANUEL              ', N'GONZALEZ            ', N'GOMEZ               ', N'GONZALEZ  ', N'CC', 1140873923, 1140873922, N'Cra 77a # 85-80               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'PEDRO               ', N'GOMEZ               ', N'FERNANDEZ           ', N'GOMEZ     ', N'CC', 1140873924, 1140873923, N'Cra 77a # 85-81               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JESUS               ', N'FERNANDEZ           ', N'MORENO              ', N'FERNANDEZ ', N'CC', 1140873925, 1140873924, N'Cra 77a # 85-82               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ANGEL               ', N'MORENO              ', N'JIMENEZ             ', N'MORENO    ', N'CC', 1140873926, 1140873925, N'Cra 77a # 85-83               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MIGUEL              ', N'JIMENEZ             ', N'PEREZ               ', N'JIMENEZ   ', N'CC', 1140873927, 1140873926, N'Cra 77a # 85-84               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JAVIER              ', N'PEREZ               ', N'RODRIGUEZ           ', N'PEREZ     ', N'CC', 1140873928, 1140873927, N'Cra 77a # 85-85               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JOSE ANTONIO        ', N'RODRIGUEZ           ', N'NAVARRO             ', N'RODRIGUEZ ', N'CC', 1140873929, 1140873928, N'Cra 77a # 85-86               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'DAVID               ', N'NAVARRO             ', N'RUIZ                ', N'NAVARRO   ', N'CC', 1140873930, 1140873929, N'Cra 77a # 85-87               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'CARLOS              ', N'RUIZ                ', N'DIAZ                ', N'RUIZ      ', N'CC', 1140873931, 1140873930, N'Cra 77a # 85-88               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JOSE LUIS           ', N'DIAZ                ', N'SERRANO             ', N'DIAZ      ', N'CC', 1140873932, 1140873931, N'Cra 77a # 85-89               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ALEJANDRO           ', N'SERRANO             ', N'HERNANDEZ           ', N'SERRANO   ', N'CC', 1140873933, 1140873932, N'Cra 77a # 85-90               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MIGUEL ANGEL        ', N'HERNANDEZ           ', N'MUÑOZ               ', N'HERNANDEZ ', N'CC', 1140873934, 1140873933, N'Cra 77a # 85-91               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'FRANCISCO JAVIER    ', N'MUÑOZ               ', N'SAEZ                ', N'MUÑOZ     ', N'CC', 1140873935, 1140873934, N'Cra 77a # 85-92               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'RAFAEL              ', N'SAEZ                ', N'MARTINEZ            ', N'SAEZ      ', N'CC', 1140873936, 1140873935, N'Cra 77a # 85-93               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'DANIEL              ', N'ROMERO              ', N'LOPEZ               ', N'ROMERO    ', N'CC', 1140873937, 1140873936, N'Cra 77a # 85-94               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA               ', N'GARCIA              ', N'SANCHEZ             ', N'GARCIA    ', N'CC', 1140873938, 1140873937, N'Cra 77a # 85-95               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA CARMEN        ', N'MARTINEZ            ', N'GONZALEZ            ', N'GARCIA    ', N'CC', 1140873939, 1140873938, N'Cra 77a # 85-96               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JOSEFA              ', N'LOPEZ               ', N'GOMEZ               ', N'MARTINEZ  ', N'CC', 1140873940, 1140873939, N'Cra 77a # 85-97               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ISABEL              ', N'SANCHEZ             ', N'FERNANDEZ           ', N'LOPEZ     ', N'CC', 1140873941, 1140873940, N'Cra 77a # 85-98               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA DOLORES       ', N'GONZALEZ            ', N'MORENO              ', N'SANCHEZ   ', N'CC', 1140873942, 1140873941, N'Cra 77a # 85-99               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'CARMEN              ', N'GOMEZ               ', N'JIMENEZ             ', N'GONZALEZ  ', N'CC', 1140873943, 1140873942, N'Cra 77a # 85-100              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'FRANCISCA           ', N'FERNANDEZ           ', N'PEREZ               ', N'GOMEZ     ', N'CC', 1140873944, 1140873943, N'Cra 77a # 85-101              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA PILAR         ', N'MORENO              ', N'RODRIGUEZ           ', N'FERNANDEZ ', N'CC', 1140873945, 1140873944, N'Cra 77a # 85-102              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'DOLORES             ', N'JIMENEZ             ', N'NAVARRO             ', N'MORENO    ', N'CC', 1140873946, 1140873945, N'Cra 77a # 85-103              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA JOSE          ', N'PEREZ               ', N'RUIZ                ', N'JIMENEZ   ', N'CC', 1140873947, 1140873946, N'Cra 77a # 85-104              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ANTONIA             ', N'RODRIGUEZ           ', N'DIAZ                ', N'PEREZ     ', N'CC', 1140873948, 1140873947, N'Cra 77a # 85-105              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ANA                 ', N'NAVARRO             ', N'SERRANO             ', N'RODRIGUEZ ', N'CC', 1140873949, 1140873948, N'Cra 77a # 85-106              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA ISABEL        ', N'RUIZ                ', N'HERNANDEZ           ', N'NAVARRO   ', N'CC', 1140873950, 1140873949, N'Cra 77a # 85-107              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA ANGELES       ', N'DIAZ                ', N'MUÑOZ               ', N'RUIZ      ', N'CC', 1140873951, 1140873950, N'Cra 77a # 85-108              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'PILAR               ', N'SERRANO             ', N'SAEZ                ', N'DIAZ      ', N'CC', 1140873952, 1140873951, N'Cra 77a # 85-109              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ANA MARIA           ', N'HERNANDEZ           ', N'HERNANDEZ           ', N'SERRANO   ', N'CC', 1140873953, 1140873952, N'Cra 77a # 85-110              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'LUCIA               ', N'MUÑOZ               ', N'MUÑOZ               ', N'HERNANDEZ ', N'CC', 1140873954, 1140873953, N'Cra 77a # 85-111              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'CRISTINA            ', N'SAEZ                ', N'SAEZ                ', N'MUÑOZ     ', N'CC', 1140873955, 1140873954, N'Cra 77a # 85-112              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Cliente] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Cliente], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'LAURA               ', N'ROMERO              ', N'ROMERO              ', N'SAEZ      ', N'CC', 1140873956, 1140873955, N'Cra 77a # 85-113              ', N'Prueba@Gmail.com              ')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Factura] ON 

INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (1, 1140873917, 3, 4, 3, 100000, CAST(N'2021-02-21' AS Date), 2)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (2, 1140873917, 4, 5, 4, 17164, CAST(N'2020-02-22' AS Date), 3)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (3, 1140873917, 5, 7, 3, 14331, CAST(N'2020-02-23' AS Date), 4)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (4, 1140873917, 6, 7, 3, 280959, CAST(N'2020-02-24' AS Date), 5)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (5, 1140873917, 7, 8, 7, 297337, CAST(N'2020-02-25' AS Date), 6)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (6, 1140873923, 8, 9, 8, 159620, CAST(N'2020-02-26' AS Date), 7)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (7, 1140873924, 9, 14, 9, 485251, CAST(N'2020-02-27' AS Date), 8)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (8, 1140873925, 10, 4, 10, 421159, CAST(N'2020-01-01' AS Date), 9)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (9, 1140873926, 11, 12, 11, 453607, CAST(N'2020-01-02' AS Date), 10)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (10, 1140873926, 12, 13, 12, 154444, CAST(N'2020-01-03' AS Date), 11)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (11, 1140873926, 13, 14, 13, 218869, CAST(N'2020-01-04' AS Date), 12)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (12, 1140873926, 14, 15, 3, 138343, CAST(N'2020-01-05' AS Date), 13)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (13, 1140873926, 15, 4, 4, 358541, CAST(N'2020-01-06' AS Date), 14)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (14, 1140873931, 16, 7, 5, 428384, CAST(N'2020-01-07' AS Date), 2)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (15, 1140873932, 17, 6, 6, 486793, CAST(N'2020-01-08' AS Date), 3)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (16, 1140873933, 18, 7, 7, 22988, CAST(N'2020-01-09' AS Date), 4)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (17, 1140873934, 19, 8, 8, 100388, CAST(N'2020-01-10' AS Date), 5)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (18, 1140873935, 20, 4, 9, 303694, CAST(N'2021-01-10' AS Date), 6)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (19, 1140873936, 21, 10, 10, 164869, CAST(N'2021-01-11' AS Date), 7)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (20, 1140873937, 22, 14, 11, 177940, CAST(N'2021-01-12' AS Date), 8)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (21, 1140873938, 23, 12, 12, 485056, CAST(N'2021-01-13' AS Date), 9)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (22, 1140873939, 24, 13, 13, 379325, CAST(N'2021-01-14' AS Date), 10)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (23, 1140873940, 25, 14, 3, 98247, CAST(N'2021-01-15' AS Date), 11)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (24, 1140873941, 26, 14, 4, 44763, CAST(N'2021-01-16' AS Date), 12)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (25, 1140873940, 27, 4, 5, 98163, CAST(N'2020-12-16' AS Date), 13)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (26, 1140873940, 28, 5, 5, 192131, CAST(N'2020-12-17' AS Date), 14)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (27, 1140873940, 29, 7, 5, 217739, CAST(N'2020-12-18' AS Date), 2)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (28, 1140873940, 30, 7, 5, 105580, CAST(N'2020-12-19' AS Date), 3)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (29, 1140873946, 31, 4, 9, 284847, CAST(N'2020-12-20' AS Date), 4)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (30, 1140873947, 32, 9, 10, 461486, CAST(N'2020-11-01' AS Date), 5)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (31, 1140873948, 33, 7, 3, 77491, CAST(N'2020-11-02' AS Date), 6)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (32, 1140873949, 34, 11, 4, 77801, CAST(N'2020-11-03' AS Date), 7)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (33, 1140873950, 35, 12, 5, 170794, CAST(N'2020-11-04' AS Date), 8)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (34, 1140873951, 36, 4, 3, 478105, CAST(N'2020-11-05' AS Date), 9)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (35, 1140873952, 37, 14, 4, 73699, CAST(N'2020-11-06' AS Date), 10)
INSERT [dbo].[Factura] ([ID_Factura], [Doc_Cliente], [Doc_Mecanico], [ID_Repuesto], [ID_Servicio], [Total], [Fecha_Fac], [ID_Tienda]) VALUES (36, 1140873953, 2, 15, 5, 410063, CAST(N'2020-11-07' AS Date), 11)
SET IDENTITY_INSERT [dbo].[Factura] OFF
GO
SET IDENTITY_INSERT [dbo].[Mecanico] ON 

INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ANTONIO             ', N'GARCIA              ', N'MARTINEZ            ', N'GARCIA              ', N'CC', 1, 1140873918, N'Cra 77a # 85-76               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JOSE                ', N'MARTINEZ            ', N'LOPEZ               ', N'MARTINEZ            ', N'CC', 2, 1140873919, N'Cra 77a # 85-77               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'FRANCISCO           ', N'LOPEZ               ', N'SANCHEZ             ', N'LOPEZ               ', N'CC', 3, 1140873920, N'Cra 77a # 85-78               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JUAN                ', N'SANCHEZ             ', N'GONZALEZ            ', N'SANCHEZ             ', N'CC', 4, 1140873921, N'Cra 77a # 85-79               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MANUEL              ', N'GONZALEZ            ', N'GOMEZ               ', N'GONZALEZ            ', N'CC', 5, 1140873922, N'Cra 77a # 85-80               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'PEDRO               ', N'GOMEZ               ', N'FERNANDEZ           ', N'GOMEZ               ', N'CC', 6, 1140873923, N'Cra 77a # 85-81               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JESUS               ', N'FERNANDEZ           ', N'MORENO              ', N'FERNANDEZ           ', N'CC', 7, 1140873924, N'Cra 77a # 85-82               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ANGEL               ', N'MORENO              ', N'JIMENEZ             ', N'MORENO              ', N'CC', 8, 1140873925, N'Cra 77a # 85-83               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MIGUEL              ', N'JIMENEZ             ', N'PEREZ               ', N'JIMENEZ             ', N'CC', 9, 1140873926, N'Cra 77a # 85-84               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JAVIER              ', N'PEREZ               ', N'RODRIGUEZ           ', N'PEREZ               ', N'CC', 10, 1140873927, N'Cra 77a # 85-85               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JOSE ANTONIO        ', N'RODRIGUEZ           ', N'NAVARRO             ', N'RODRIGUEZ           ', N'CC', 11, 1140873928, N'Cra 77a # 85-86               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'DAVID               ', N'NAVARRO             ', N'RUIZ                ', N'NAVARRO             ', N'CC', 12, 1140873929, N'Cra 77a # 85-87               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'CARLOS              ', N'RUIZ                ', N'DIAZ                ', N'RUIZ                ', N'CC', 13, 1140873930, N'Cra 77a # 85-88               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JOSE LUIS           ', N'DIAZ                ', N'SERRANO             ', N'DIAZ                ', N'CC', 14, 1140873931, N'Cra 77a # 85-89               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ALEJANDRO           ', N'SERRANO             ', N'HERNANDEZ           ', N'SERRANO             ', N'CC', 15, 1140873932, N'Cra 77a # 85-90               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MIGUEL ANGEL        ', N'HERNANDEZ           ', N'MUÑOZ               ', N'HERNANDEZ           ', N'CC', 16, 1140873933, N'Cra 77a # 85-91               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'FRANCISCO JAVIER    ', N'MUÑOZ               ', N'SAEZ                ', N'MUÑOZ               ', N'CC', 17, 1140873934, N'Cra 77a # 85-92               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'RAFAEL              ', N'SAEZ                ', N'MARTINEZ            ', N'SAEZ                ', N'CC', 18, 1140873935, N'Cra 77a # 85-93               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'DANIEL              ', N'ROMERO              ', N'LOPEZ               ', N'ROMERO              ', N'CC', 19, 1140873936, N'Cra 77a # 85-94               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA               ', N'GARCIA              ', N'SANCHEZ             ', N'GARCIA              ', N'CC', 20, 1140873937, N'Cra 77a # 85-95               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA CARMEN        ', N'MARTINEZ            ', N'GONZALEZ            ', N'GARCIA              ', N'CC', 21, 1140873938, N'Cra 77a # 85-96               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'JOSEFA              ', N'LOPEZ               ', N'GOMEZ               ', N'MARTINEZ            ', N'CC', 22, 1140873939, N'Cra 77a # 85-97               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ISABEL              ', N'SANCHEZ             ', N'FERNANDEZ           ', N'LOPEZ               ', N'CC', 23, 1140873940, N'Cra 77a # 85-98               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA DOLORES       ', N'GONZALEZ            ', N'MORENO              ', N'SANCHEZ             ', N'CC', 24, 1140873941, N'Cra 77a # 85-99               ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'CARMEN              ', N'GOMEZ               ', N'JIMENEZ             ', N'GONZALEZ            ', N'CC', 25, 1140873942, N'Cra 77a # 85-100              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'FRANCISCA           ', N'FERNANDEZ           ', N'PEREZ               ', N'GOMEZ               ', N'CC', 26, 1140873943, N'Cra 77a # 85-101              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA PILAR         ', N'MORENO              ', N'RODRIGUEZ           ', N'FERNANDEZ           ', N'CC', 27, 1140873944, N'Cra 77a # 85-102              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'DOLORES             ', N'JIMENEZ             ', N'NAVARRO             ', N'MORENO              ', N'CC', 28, 1140873945, N'Cra 77a # 85-103              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA JOSE          ', N'PEREZ               ', N'RUIZ                ', N'JIMENEZ             ', N'CC', 29, 1140873946, N'Cra 77a # 85-104              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ANTONIA             ', N'RODRIGUEZ           ', N'DIAZ                ', N'PEREZ               ', N'CC', 30, 1140873947, N'Cra 77a # 85-105              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ANA                 ', N'NAVARRO             ', N'SERRANO             ', N'RODRIGUEZ           ', N'CC', 31, 1140873948, N'Cra 77a # 85-106              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA ISABEL        ', N'RUIZ                ', N'HERNANDEZ           ', N'NAVARRO             ', N'CC', 32, 1140873949, N'Cra 77a # 85-107              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'MARIA ANGELES       ', N'DIAZ                ', N'MUÑOZ               ', N'RUIZ                ', N'CC', 33, 1140873950, N'Cra 77a # 85-108              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'PILAR               ', N'SERRANO             ', N'SAEZ                ', N'DIAZ                ', N'CC', 34, 1140873951, N'Cra 77a # 85-109              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'ANA MARIA           ', N'HERNANDEZ           ', N'HERNANDEZ           ', N'SERRANO             ', N'CC', 35, 1140873952, N'Cra 77a # 85-110              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'LUCIA               ', N'MUÑOZ               ', N'MUÑOZ               ', N'HERNANDEZ           ', N'CC', 36, 1140873953, N'Cra 77a # 85-111              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'CRISTINA            ', N'SAEZ                ', N'SAEZ                ', N'MUÑOZ               ', N'CC', 37, 1140873954, N'Cra 77a # 85-112              ', N'Prueba@Gmail.com              ')
INSERT [dbo].[Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDoc], [Doc_Mecanico], [Celular], [Direccion], [CorreoElectronico]) VALUES (N'LAURA               ', N'ROMERO              ', N'ROMERO              ', N'SAEZ                ', N'CC', 38, 1140873955, N'Cra 77a # 85-113              ', N'Prueba@Gmail.com              ')
SET IDENTITY_INSERT [dbo].[Mecanico] OFF
GO
SET IDENTITY_INSERT [dbo].[Repuesto] ON 

INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (1, N'repuesto1                     ', 14648, 9)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (2, N'repuesto2                     ', 3261549, 8)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (3, N'repuesto3                     ', 1098006, 9)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (4, N'repuesto4                     ', 1423706, 6)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (5, N'repuesto5                     ', 66344, 4)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (6, N'repuesto6                     ', 1883899, 3)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (7, N'repuesto7                     ', 233691, 9)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (8, N'repuesto8                     ', 4287318, 2)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (9, N'repuesto9                     ', 1914263, 2)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (10, N'repuesto10                    ', 4710057, 3)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (11, N'repuesto11                    ', 2060103, 5)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (12, N'repuesto12                    ', 2953109, 1)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (13, N'repuesto13                    ', 3154021, 5)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (14, N'repuesto14                    ', 3565275, 6)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (15, N'repuesto15                    ', 2390904, 1)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (16, N'repuesto16                    ', 3773337, 5)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (17, N'repuesto17                    ', 2841243, 2)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (18, N'repuesto18                    ', 4912254, 6)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (19, N'repuesto19                    ', 906741, 9)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (20, N'repuesto20                    ', 346711, 2)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (21, N'repuesto21                    ', 319895, 3)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (22, N'repuesto22                    ', 3727662, 2)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (23, N'repuesto23                    ', 5166910, 0)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (24, N'repuesto24                    ', 3177054, 7)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (25, N'repuesto25                    ', 3393936, 7)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (26, N'repuesto26                    ', 406042, 0)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (27, N'repuesto27                    ', 23063, 6)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (28, N'repuesto28                    ', 4162081, 7)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (29, N'repuesto29                    ', 2469457, 8)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (30, N'repuesto30                    ', 3738892, 5)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (31, N'repuesto31                    ', 412695, 6)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (32, N'repuesto32                    ', 279582, 5)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (33, N'repuesto33                    ', 1636974, 2)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (34, N'repuesto34                    ', 980089, 8)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (35, N'repuesto35                    ', 85394, 1)
INSERT [dbo].[Repuesto] ([ID_Repuesto], [Nombre], [Precio], [Stock]) VALUES (36, N'repuesto36                    ', 4279658, 2)
SET IDENTITY_INSERT [dbo].[Repuesto] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicio] ON 

INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (1, N'Servicio1                     ', 14648)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (2, N'Servicio2                     ', 3261549)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (3, N'Servicio3                     ', 1098006)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (4, N'Servicio4                     ', 1423706)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (5, N'Servicio5                     ', 66344)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (6, N'Servicio6                     ', 1883899)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (7, N'Servicio7                     ', 233691)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (8, N'Servicio8                     ', 4287318)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (9, N'Servicio9                     ', 1914263)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (10, N'Servicio10                    ', 4710057)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (11, N'Servicio11                    ', 2060103)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (12, N'Servicio12                    ', 2953109)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (13, N'Servicio13                    ', 3154021)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (14, N'Servicio14                    ', 3565275)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (15, N'Servicio15                    ', 2390904)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (16, N'Servicio16                    ', 3773337)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (17, N'Servicio17                    ', 2841243)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (18, N'Servicio18                    ', 4912254)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (19, N'Servicio19                    ', 906741)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (20, N'Servicio20                    ', 346711)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (21, N'Servicio21                    ', 319895)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (22, N'Servicio22                    ', 3727662)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (23, N'Servicio23                    ', 5166910)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (24, N'Servicio24                    ', 3177054)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (25, N'Servicio25                    ', 3393936)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (26, N'Servicio26                    ', 406042)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (27, N'Servicio27                    ', 23063)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (28, N'Servicio28                    ', 4162081)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (29, N'Servicio29                    ', 2469457)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (30, N'Servicio30                    ', 3738892)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (31, N'Servicio31                    ', 412695)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (32, N'Servicio32                    ', 279582)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (33, N'Servicio33                    ', 1636974)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (34, N'Servicio34                    ', 980089)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (35, N'Servicio35                    ', 85394)
INSERT [dbo].[Servicio] ([ID_Servicio], [Nombre], [Precio]) VALUES (36, N'Servicio36                    ', 4279658)
SET IDENTITY_INSERT [dbo].[Servicio] OFF
GO
SET IDENTITY_INSERT [dbo].[Tienda] ON 

INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (1, N'Tienda1                       ', N'Cra 15                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (2, N'Tienda2                       ', N'Cra 16                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (3, N'Tienda3                       ', N'Cra 17                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (4, N'Tienda4                       ', N'Cra 18                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (5, N'Tienda7                       ', N'Cra 21                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (6, N'Tienda9                       ', N'Cra 23                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (7, N'Tienda10                      ', N'Cra 24                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (8, N'Tienda11                      ', N'Cra 25                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (9, N'Tienda12                      ', N'Cra 26                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (10, N'Tienda13                      ', N'Cra 27                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (11, N'Tienda14                      ', N'Cra 28                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (12, N'Tienda15                      ', N'Cra 29                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (13, N'Tienda16                      ', N'Cra 30                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (14, N'Tienda17                      ', N'Cra 31                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (15, N'Tienda18                      ', N'Cra 32                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (16, N'Tienda19                      ', N'Cra 33                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (17, N'Tienda20                      ', N'Cra 34                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (18, N'Tienda21                      ', N'Cra 35                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (19, N'Tienda22                      ', N'Cra 36                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (20, N'Tienda23                      ', N'Cra 37                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (21, N'Tienda24                      ', N'Cra 38                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (22, N'Tienda25                      ', N'Cra 39                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (23, N'Tienda26                      ', N'Cra 40                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (24, N'Tienda27                      ', N'Cra 41                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (25, N'Tienda28                      ', N'Cra 42                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (26, N'Tienda29                      ', N'Cra 43                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (27, N'Tienda30                      ', N'Cra 44                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (28, N'Tienda31                      ', N'Cra 45                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (29, N'Tienda32                      ', N'Cra 46                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (30, N'Tienda33                      ', N'Cra 47                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (31, N'Tienda34                      ', N'Cra 48                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (32, N'Tienda35                      ', N'Cra 49                        ', N'Barranquilla                  ')
INSERT [dbo].[Tienda] ([ID_Tienda], [Nombre], [Direccion], [Ciudad]) VALUES (33, N'Tienda36                      ', N'Cra 50                        ', N'Barranquilla                  ')
SET IDENTITY_INSERT [dbo].[Tienda] OFF
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([Doc_Cliente])
REFERENCES [dbo].[Cliente] ([Doc_Cliente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Mecanico] FOREIGN KEY([Doc_Mecanico])
REFERENCES [dbo].[Mecanico] ([Doc_Mecanico])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Mecanico]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Repuesto] FOREIGN KEY([ID_Repuesto])
REFERENCES [dbo].[Repuesto] ([ID_Repuesto])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Repuesto]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Servicio] FOREIGN KEY([ID_Servicio])
REFERENCES [dbo].[Servicio] ([ID_Servicio])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Servicio]
GO
