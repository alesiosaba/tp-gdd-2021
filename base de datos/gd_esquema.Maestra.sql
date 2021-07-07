USE [GD1C2021]
GO

/****** Object:  Table [gd_esquema].[Maestra]    Script Date: 14/04/2021 18:28:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gd_esquema].[Maestra](
	[CIUDAD] [nvarchar](255) NULL,
	[SUCURSAL_DIR] [nvarchar](255) NULL,
	[SUCURSAL_MAIL] [nvarchar](255) NULL,
	[SUCURSAL_TEL] [decimal](18, 0) NULL,
	[COMPRA_FECHA] [datetime2](3) NULL,
	[COMPRA_NUMERO] [decimal](18, 0) NULL,
	[COMPRA_PRECIO] [decimal](18, 2) NULL,
	[COMPRA_CANTIDAD] [decimal](18, 0) NULL,
	[PC_CODIGO] [nvarchar](50) NULL,
	[PC_ALTO] [decimal](18, 2) NULL,
	[PC_ANCHO] [decimal](18, 2) NULL,
	[PC_PROFUNDIDAD] [decimal](18, 2) NULL,
	[DISCO_RIGIDO_CODIGO] [nvarchar](255) NULL,
	[DISCO_RIGIDO_TIPO] [nvarchar](255) NULL,
	[DISCO_RIGIDO_CAPACIDAD] [nvarchar](255) NULL,
	[DISCO_RIGIDO_VELOCIDAD] [nvarchar](255) NULL,
	[DISCO_RIGIDO_FABRICANTE] [nvarchar](255) NULL,
	[MEMORIA_RAM_CODIGO] [nvarchar](255) NULL,
	[MEMORIA_RAM_TIPO] [nvarchar](255) NULL,
	[MEMORIA_RAM_CAPACIDAD] [nvarchar](255) NULL,
	[MEMORIA_RAM_VELOCIDAD] [nvarchar](255) NULL,
	[MEMORIA_RAM_FABRICANTE] [nvarchar](255) NULL,
	[MICROPROCESADOR_CACHE] [nvarchar](50) NULL,
	[MICROPROCESADOR_CANT_HILOS] [decimal](18, 0) NULL,
	[MICROPROCESADOR_CODIGO] [nvarchar](50) NULL,
	[MICROPROCESADOR_VELOCIDAD] [nvarchar](50) NULL,
	[MICROPROCESADOR_FABRICANTE] [nvarchar](255) NULL,
	[PLACA_VIDEO_CHIPSET] [nvarchar](50) NULL,
	[PLACA_VIDEO_MODELO] [nvarchar](50) NULL,
	[PLACA_VIDEO_VELOCIDAD] [nvarchar](50) NULL,
	[PLACA_VIDEO_CAPACIDAD] [nvarchar](255) NULL,
	[PLACA_VIDEO_FABRICANTE] [nvarchar](255) NULL,
	[CLIENTE_APELLIDO] [nvarchar](255) NULL,
	[CLIENTE_NOMBRE] [nvarchar](255) NULL,
	[CLIENTE_DIRECCION] [nvarchar](255) NULL,
	[CLIENTE_DNI] [decimal](18, 0) NULL,
	[CLIENTE_FECHA_NACIMIENTO] [datetime2](3) NULL,
	[CLIENTE_MAIL] [nvarchar](255) NULL,
	[CLIENTE_TELEFONO] [int] NULL,
	[FACTURA_FECHA] [datetime2](3) NULL,
	[FACTURA_NUMERO] [decimal](18, 0) NULL,
	[ACCESORIO_CODIGO] [decimal](18, 0) NULL,
	[AC_DESCRIPCION] [nvarchar](255) NULL
) ON [PRIMARY]

GO


