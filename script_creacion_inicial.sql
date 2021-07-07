USE [GD1C2021]
GO

-------------------------------------------------------------------------------------------------------------------------
-- Procedemos a borrar los objetos previamente creados

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DE INDICES
---------------------------------------------------------------------------------------------------------------------------- 

IF OBJECT_ID('LAWE.cliente.ix_cliente') IS NOT NULL
  DROP INDEX LAWE.cliente.ix_cliente;

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DE TABLAS
---------------------------------------------------------------------------------------------------------------------------- 

IF OBJECT_ID('LAWE.item_factura_accesorio','U') IS NOT NULL
  DROP TABLE LAWE.item_factura_accesorio;
    
IF OBJECT_ID('LAWE.factura_pc','U') IS NOT NULL
  DROP TABLE LAWE.factura_pc;

IF OBJECT_ID('LAWE.factura','U') IS NOT NULL
  DROP TABLE LAWE.factura; 

IF OBJECT_ID('LAWE.cliente','U') IS NOT NULL
  DROP TABLE LAWE.cliente;
    
IF OBJECT_ID('LAWE.compra_pc','U') IS NOT NULL
  DROP TABLE LAWE.compra_pc;

IF OBJECT_ID('LAWE.item_compra_accesorio','U') IS NOT NULL
  DROP TABLE LAWE.item_compra_accesorio;

IF OBJECT_ID('LAWE.accesorio','U') IS NOT NULL
  DROP TABLE LAWE.accesorio;

IF OBJECT_ID('LAWE.tipo_pc','U') IS NOT NULL
  DROP TABLE LAWE.tipo_pc;

IF OBJECT_ID('LAWE.gabinete','U') IS NOT NULL
  DROP TABLE LAWE.gabinete;

IF OBJECT_ID('LAWE.disco_rigido','U') IS NOT NULL
  DROP TABLE LAWE.disco_rigido;

IF OBJECT_ID('LAWE.memoria_ram','U') IS NOT NULL
  DROP TABLE LAWE.memoria_ram;

IF OBJECT_ID('LAWE.microprocesador','U') IS NOT NULL
  DROP TABLE LAWE.microprocesador;

IF OBJECT_ID('LAWE.placa_video','U') IS NOT NULL
  DROP TABLE LAWE.placa_video;

IF OBJECT_ID('LAWE.motherboard','U') IS NOT NULL
  DROP TABLE LAWE.motherboard;

IF OBJECT_ID('LAWE.fabricante','U') IS NOT NULL
  DROP TABLE LAWE.fabricante;

IF OBJECT_ID('LAWE.compra','U') IS NOT NULL
  DROP TABLE LAWE.compra;

IF OBJECT_ID('LAWE.sucursal','U') IS NOT NULL
  DROP TABLE LAWE.sucursal;

IF OBJECT_ID('LAWE.ciudad','U') IS NOT NULL
  DROP TABLE LAWE.ciudad;

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DE FUNCIONES
---------------------------------------------------------------------------------------------------------------------------- 

IF OBJECT_ID('LAWE.OBTENER_ID_FABRICANTE') IS NOT NULL
  DROP FUNCTION LAWE.OBTENER_ID_FABRICANTE;

IF OBJECT_ID('LAWE.OBTENER_ID_GABINETE') IS NOT NULL
  DROP FUNCTION LAWE.OBTENER_ID_GABINETE;

IF OBJECT_ID('LAWE.OBTENER_ID_CIUDAD') IS NOT NULL
  DROP FUNCTION LAWE.OBTENER_ID_CIUDAD;

IF OBJECT_ID('LAWE.OBTENER_ID_SUCURSAL') IS NOT NULL
  DROP FUNCTION LAWE.OBTENER_ID_SUCURSAL;

IF OBJECT_ID('LAWE.OBTENER_ID_CLIENTE') IS NOT NULL
  DROP FUNCTION LAWE.OBTENER_ID_CLIENTE;

IF OBJECT_ID('LAWE.OBTENER_NOMBRE_FABRICANTE') IS NOT NULL
  DROP FUNCTION LAWE.OBTENER_NOMBRE_FABRICANTE;

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DE STORED PROCEDURES
---------------------------------------------------------------------------------------------------------------------------- 

IF OBJECT_ID('LAWE.migrar_fabricante') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_fabricante;

IF OBJECT_ID('LAWE.migrar_disco_rigido') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_disco_rigido;

IF OBJECT_ID('LAWE.migrar_gabinete') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_gabinete;

IF OBJECT_ID('LAWE.migrar_memoria_ram') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_memoria_ram;

IF OBJECT_ID('LAWE.migrar_microprocesador') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_microprocesador;

IF OBJECT_ID('LAWE.migrar_placa_video') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_placa_video;

IF OBJECT_ID('LAWE.migrar_tipo_pc') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_tipo_pc;

IF OBJECT_ID('LAWE.migrar_ciudad') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_ciudad;

IF OBJECT_ID('LAWE.migrar_sucursal') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_sucursal;

IF OBJECT_ID('LAWE.migrar_compra') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_compra;

IF OBJECT_ID('LAWE.migrar_compra_pc') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_compra_pc;

IF OBJECT_ID('LAWE.migrar_accesorio') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_accesorio;

IF OBJECT_ID('LAWE.migrar_item_compra_accesorio') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_item_compra_accesorio;

IF OBJECT_ID('LAWE.migrar_cliente') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_cliente;

IF OBJECT_ID('LAWE.migrar_factura') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_factura;

IF OBJECT_ID('LAWE.migrar_factura_pc') IS NOT NULL
  DROP PROCEDURE LAWE.migrar_factura_pc;

IF OBJECT_ID('LAWE.migrar_item_factura_accesorio') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_item_factura_accesorio;

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DE VISTAS
---------------------------------------------------------------------------------------------------------------------------- 

IF OBJECT_ID('LAWE.v_computadoras_compradas') IS NOT NULL
	DROP VIEW LAWE.v_computadoras_compradas

IF OBJECT_ID('LAWE.v_accesorios_comprados') IS NOT NULL
	DROP VIEW LAWE.v_accesorios_comprados

IF OBJECT_ID('LAWE.v_compras_de_accesorios') IS NOT NULL
	DROP VIEW LAWE.v_compras_de_accesorios

IF OBJECT_ID('LAWE.v_ventas_de_computadoras') IS NOT NULL
	DROP VIEW LAWE.v_ventas_de_computadoras

IF OBJECT_ID('LAWE.v_accesorios_vendidos') IS NOT NULL
	DROP VIEW LAWE.v_accesorios_vendidos

IF OBJECT_ID('LAWE.v_ventas_de_accesorios') IS NOT NULL
	DROP VIEW LAWE.v_ventas_de_accesorios

IF OBJECT_ID('LAWE.v_clientes') IS NOT NULL
	DROP VIEW LAWE.v_clientes

IF OBJECT_ID('LAWE.v_modelos_de_pc') IS NOT NULL
	DROP VIEW LAWE.v_modelos_de_pc

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DEL SCHEMA
---------------------------------------------------------------------------------------------------------------------------- 

IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'LAWE')
  DROP SCHEMA LAWE
GO


----------------------------------------------------------------------------------------------------------------------------
-- Esta sección consiste en la creación del Esquema, Tablas y sus respectivos Constraints
----------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------- 
-- CREACION DEL ESQUEMA
CREATE SCHEMA LAWE;
GO
---------------------------------------------------------------------------------------------------------------------------- 

---------------------------------------------------------------------------------------------------------------------------- 
-- CREACION DE TABLAS DEL ESQUEMA 
---------------------------------------------------------------------------------------------------------------------------- 

CREATE TABLE LAWE.ciudad(
  id_ciudad DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
  nombre NVARCHAR(255) NOT NULL
);

CREATE TABLE LAWE.sucursal(
  id_sucursal DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),    
  direccion NVARCHAR(255) NOT NULL,
  mail NVARCHAR(255) NOT NULL,
  telefono DECIMAL(18,0) NOT NULL,
  id_ciudad DECIMAL(18,0) REFERENCES LAWE.ciudad(id_ciudad) NOT NULL
);

CREATE TABLE LAWE.compra( 
  numero_compra DECIMAL(18,0) PRIMARY KEY,
  fecha DATETIME2(3) NOT NULL,
  id_sucursal DECIMAL(18,0) REFERENCES LAWE.sucursal(id_sucursal) NOT NULL
);

CREATE TABLE LAWE.gabinete(
  gabinete_id DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
  alto DECIMAL(18,2) NOT NULL,
  ancho DECIMAL(18,2) NOT NULL,
  profundidad DECIMAL(18,2) NOT NULL
);

CREATE TABLE LAWE.fabricante(
  id_fabricante DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
  nombre NVARCHAR(255) NOT NULL
)

CREATE TABLE LAWE.disco_rigido(
  disco_rigido_codigo NVARCHAR(255) PRIMARY KEY,
  tipo NVARCHAR(255) NOT NULL,
  capacidad NVARCHAR(255) NOT NULL,
  velocidad NVARCHAR(255) NOT NULL,
  id_fabricante DECIMAL(18,0) NOT NULL REFERENCES LAWE.fabricante(id_fabricante)
);

CREATE TABLE LAWE.memoria_ram(
  memoria_ram_codigo NVARCHAR(255) PRIMARY KEY,
  tipo NVARCHAR(255) NOT NULL,
  capacidad NVARCHAR(255) NOT NULL,
  velocidad NVARCHAR(255) NOT NULL,
  id_fabricante DECIMAL(18,0) NOT NULL REFERENCES LAWE.fabricante(id_fabricante)
);

CREATE TABLE LAWE.microprocesador(
  microprocesador_codigo NVARCHAR(50) PRIMARY KEY,
  cache NVARCHAR(50) NOT NULL,
  cant_hilos DECIMAL(18,0) NOT NULL,
  velocidad NVARCHAR(50) NOT NULL,
  id_fabricante DECIMAL(18,0) NOT NULL REFERENCES LAWE.fabricante(id_fabricante)
);

CREATE TABLE LAWE.placa_video(
  placa_video_modelo NVARCHAR(50) PRIMARY KEY,
  chipset NVARCHAR(50) NOT NULL,
  velocidad NVARCHAR(50) NOT NULL,
  capacidad NVARCHAR(255) NOT NULL,
  id_fabricante DECIMAL(18,0) NOT NULL REFERENCES LAWE.fabricante(id_fabricante)
);

CREATE TABLE LAWE.motherboard(
  motherboard_id DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
  descripcion NVARCHAR(50),
  id_fabricante DECIMAL(18,0) REFERENCES LAWE.fabricante(id_fabricante)
);

CREATE TABLE LAWE.tipo_pc(
  pc_codigo NVARCHAR(50) PRIMARY KEY,
  gabinete_id DECIMAL(18,0) REFERENCES LAWE.gabinete(gabinete_id) NOT NULL,
  disco_rigido_codigo NVARCHAR(255) REFERENCES LAWE.disco_rigido(disco_rigido_codigo) NOT NULL,
  memoria_ram_codigo NVARCHAR(255) REFERENCES LAWE.memoria_ram(memoria_ram_codigo) NOT NULL,
  microprocesador_codigo NVARCHAR(50) REFERENCES LAWE.microprocesador(microprocesador_codigo) NOT NULL,
  placa_video_modelo NVARCHAR(50) REFERENCES LAWE.placa_video(placa_video_modelo) NOT NULL,
  motherboard_id DECIMAL(18,0) REFERENCES LAWE.motherboard(motherboard_id),
  precio_compra DECIMAL(18,2) NOT NULL
);
  
CREATE TABLE LAWE.compra_pc(
  numero_compra DECIMAL(18,0) REFERENCES LAWE.compra(numero_compra),
  pc_codigo NVARCHAR(50) REFERENCES LAWE.tipo_pc(pc_codigo) NOT NULL,
  cantidad DECIMAL(18,0) NOT NULL,    
  PRIMARY KEY(numero_compra)  
);

CREATE TABLE LAWE.accesorio(
  accesorio_codigo DECIMAL(18,0) PRIMARY KEY,
  descripcion NVARCHAR(255) NOT NULL,
  precio_compra DECIMAL(18,2) NOT NULL,
  id_fabricante DECIMAL(18,0) REFERENCES LAWE.fabricante(id_fabricante)
);

CREATE TABLE LAWE.item_compra_accesorio(
  id_item_compra DECIMAL(18,0) IDENTITY(1,1),  
  numero_compra DECIMAL(18,0) REFERENCES LAWE.compra(numero_compra),
  accesorio_codigo DECIMAL(18,0) REFERENCES LAWE.accesorio(accesorio_codigo) NOT NULL,
  cantidad DECIMAL(18,0) NOT NULL,
  PRIMARY KEY(numero_compra, id_item_compra)
);

CREATE TABLE LAWE.cliente(
  id_cliente DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
  dni DECIMAL(18,0) NOT NULL,
  nombre NVARCHAR(255) NOT NULL,
  apellido NVARCHAR(255) NOT NULL,
  direccion NVARCHAR(255) NOT NULL,
  fecha_nacimiento DATETIME2(3) NOT NULL,
  mail NVARCHAR(255) NOT NULL,
  telefono INT NOT NULL
);

CREATE TABLE LAWE.factura(
  numero_factura DECIMAL(18,0) PRIMARY KEY,
  fecha DATETIME2(3) NOT NULL,
  id_cliente DECIMAL(18, 0) REFERENCES LAWE.cliente(id_cliente) NOT NULL,
  id_sucursal DECIMAL(18, 0) REFERENCES LAWE.sucursal(id_sucursal) NOT NULL
);

CREATE TABLE LAWE.factura_pc(
  numero_factura DECIMAL(18,0) REFERENCES LAWE.factura(numero_factura) NOT NULL,
  pc_codigo NVARCHAR(50) REFERENCES LAWE.tipo_pc(pc_codigo) NOT NULL,
  PRIMARY KEY(numero_factura)
);

CREATE TABLE LAWE.item_factura_accesorio(
  id_item_factura DECIMAL(18,0) IDENTITY(1,1),    
  numero_factura DECIMAL(18,0) REFERENCES LAWE.factura(numero_factura),
  accesorio_codigo DECIMAL(18,0) REFERENCES LAWE.accesorio(accesorio_codigo),
  cantidad DECIMAL(18,0),
  PRIMARY KEY(id_item_factura, numero_factura)
);

-----------------------------------------------------------------------------------------------------------------------------------------------
-- CREACION DE INDICES
-----------------------------------------------------------------------------------------------------------------------------------------------

-- Creamos este indice para mejorar el tiempo de busqueda de un cliente en su respectiva tabla 
-- Consideramos necesario crear este indice ya que mejoró notablemente la performance al momento de realizar la migración de datos
CREATE INDEX ix_cliente ON LAWE.cliente (dni,apellido); 

-----------------------------------------------------------------------------------------------------------------------------------------------
-- CREACION DE FUNCIONES 
-----------------------------------------------------------------------------------------------------------------------------------------------

-- Esta función nos permite obtener el numero de id de un fabricante a partir de su nombre
-- Utilizamos esta función para la migración de datos de los distintos componentes de computadora

GO
	CREATE FUNCTION LAWE.OBTENER_ID_FABRICANTE(@fabricante NVARCHAR(255)) RETURNS DECIMAL(18,0) AS
	BEGIN
		DECLARE @id_fabricante DECIMAL(18,0);

		SELECT @id_fabricante = id_fabricante FROM LAWE.fabricante 
		WHERE nombre = @fabricante;

		RETURN @id_fabricante;
	END
GO

-- Esta función nos permite obtener el numero de id de un gabinete a partir de su alto, ancho y profundidad
-- Utilizamos esta función para la migración de datos a la tabla "tipo_pc"

GO
	CREATE FUNCTION LAWE.OBTENER_ID_GABINETE(@ancho DECIMAL(18,2), @alto DECIMAL(18,2), @profundidad DECIMAL(18,2)) RETURNS DECIMAL(18,0) AS
	BEGIN
		DECLARE @id_gabinete DECIMAL(18,0);

		SELECT @id_gabinete = gabinete_id FROM LAWE.gabinete 
		WHERE ancho = @ancho  AND alto = @alto AND profundidad = @profundidad;

		RETURN @id_gabinete;
	END
GO

-- Esta función nos permite obtener el numero de id de una ciudad a partir de su nombre
-- Utilizamos esta función para la migración de datos a la tabla "sucursal"

GO
	CREATE FUNCTION LAWE.OBTENER_ID_CIUDAD(@ciudad NVARCHAR(255)) RETURNS DECIMAL(18,0) AS
	BEGIN
		DECLARE @id_ciudad DECIMAL(18,0);

		SELECT @id_ciudad = id_ciudad FROM LAWE.ciudad 
		WHERE nombre = @ciudad;

		RETURN @id_ciudad;
	END
GO

-- Esta función nos permite obtener el numero de id de una sucursal a partir de su dirección
-- Utilizamos esta función para la migración de datos a las tablas "compra" y "factura"

GO
	CREATE FUNCTION LAWE.OBTENER_ID_SUCURSAL(@direccion NVARCHAR(255)) RETURNS DECIMAL(18,0) AS
	BEGIN
		DECLARE @id_sucursal DECIMAL(18,0);

		SELECT @id_sucursal = id_sucursal FROM LAWE.sucursal
		WHERE direccion = @direccion;

		RETURN @id_sucursal;
	END
GO

-- Esta función nos permite obtener el numero de id de un cliente a partir de sus datos 
-- Utilizamos esta función para la migración de datos a la tabla "factura"

GO
	CREATE FUNCTION LAWE.OBTENER_ID_CLIENTE(@dni DECIMAL(18,0), @nombre NVARCHAR(255), @apellido NVARCHAR(255), @direccion NVARCHAR(255), @fecha_nacimiento DATETIME2(3), @mail NVARCHAR(255), @telefono INT)
	RETURNS DECIMAL(18,0) AS
	BEGIN
		DECLARE @id_cliente DECIMAL(18,0);

		SELECT @id_cliente = id_cliente FROM LAWE.cliente
		WHERE	dni = @dni AND
				nombre = @nombre AND
				apellido = @apellido AND
				direccion = @direccion AND
				fecha_nacimiento = @fecha_nacimiento AND 
				mail = @mail AND 
				telefono = @telefono

		RETURN @id_cliente;
	END
GO

-- Esta función nos permite obtener el nombre de un fabricante a partir de su numero de id 
-- Utilizamos esta función en la vista "modelos_de_PC" y evitamos múltiples joins innecesarios

GO
	CREATE FUNCTION LAWE.OBTENER_NOMBRE_FABRICANTE(@id_fabricante DECIMAL(18,0)) RETURNS NVARCHAR(255) AS
	BEGIN
		DECLARE @fabricante NVARCHAR(255);

		SELECT @fabricante = nombre FROM LAWE.fabricante WHERE id_fabricante = @id_fabricante

		RETURN @fabricante;
	END
GO

-------------------------------------------------------------------------------------------------------------------------
-- En esta sección se declaran las Stored Procedures para luego poder realizar la migración de datos de la tabla maestra
-------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE LAWE.migrar_fabricante AS
BEGIN
  INSERT INTO LAWE.fabricante (nombre)
	-- La sentencia UNION realiza un ORDER BY por el campo 'nombre'
    SELECT DISTINCT MEMORIA_RAM_FABRICANTE FROM gd_esquema.Maestra WHERE MEMORIA_RAM_FABRICANTE IS NOT NULL
		UNION
	SELECT DISTINCT DISCO_RIGIDO_FABRICANTE FROM gd_esquema.Maestra WHERE DISCO_RIGIDO_FABRICANTE IS NOT NULL
		UNION
	SELECT DISTINCT MICROPROCESADOR_FABRICANTE FROM gd_esquema.Maestra WHERE MICROPROCESADOR_FABRICANTE IS NOT NULL
		UNION
	SELECT DISTINCT PLACA_VIDEO_FABRICANTE FROM gd_esquema.Maestra WHERE PLACA_VIDEO_FABRICANTE IS NOT NULL
END
GO  

CREATE PROCEDURE LAWE.migrar_gabinete AS
BEGIN
  SELECT DISTINCT PC_CODIGO, PC_ALTO, PC_ANCHO, PC_PROFUNDIDAD INTO #temp_gabinete
    FROM gd_esquema.Maestra	WHERE PC_CODIGO IS NOT NULL

  INSERT INTO LAWE.gabinete (alto,ancho,profundidad)
    SELECT PC_ALTO, PC_ANCHO, PC_PROFUNDIDAD FROM #temp_gabinete

  DROP TABLE #temp_gabinete
END
GO
  
CREATE PROCEDURE LAWE.migrar_disco_rigido AS
BEGIN
  INSERT INTO LAWE.disco_rigido (disco_rigido_codigo,tipo,capacidad,velocidad,id_fabricante)
    SELECT DISTINCT DISCO_RIGIDO_CODIGO,DISCO_RIGIDO_TIPO,DISCO_RIGIDO_CAPACIDAD,DISCO_RIGIDO_VELOCIDAD,LAWE.OBTENER_ID_FABRICANTE(DISCO_RIGIDO_FABRICANTE)
    FROM gd_esquema.Maestra
    WHERE DISCO_RIGIDO_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_memoria_ram AS
BEGIN
  INSERT INTO LAWE.memoria_ram (memoria_ram_codigo,tipo,capacidad,velocidad,id_fabricante)
    SELECT DISTINCT MEMORIA_RAM_CODIGO, MEMORIA_RAM_TIPO,MEMORIA_RAM_CAPACIDAD,MEMORIA_RAM_VELOCIDAD,LAWE.OBTENER_ID_FABRICANTE(MEMORIA_RAM_FABRICANTE)
    FROM gd_esquema.Maestra
    WHERE MEMORIA_RAM_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_microprocesador AS
BEGIN
  INSERT INTO LAWE.microprocesador (microprocesador_codigo,cache,cant_hilos,velocidad,id_fabricante)
    SELECT DISTINCT MICROPROCESADOR_CODIGO, MICROPROCESADOR_CACHE, MICROPROCESADOR_CANT_HILOS, MICROPROCESADOR_VELOCIDAD,LAWE.OBTENER_ID_FABRICANTE(MICROPROCESADOR_FABRICANTE)
    FROM gd_esquema.Maestra
    WHERE MICROPROCESADOR_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_placa_video AS
BEGIN
  INSERT INTO LAWE.placa_video (placa_video_modelo,chipset,velocidad,capacidad,id_fabricante)
    -- con la función REPLACE eliminamos la palabra 'Modelo' de cada registro de placa de video
    SELECT DISTINCT REPLACE(PLACA_VIDEO_MODELO,'Modelo ',''), PLACA_VIDEO_CHIPSET, PLACA_VIDEO_VELOCIDAD,	PLACA_VIDEO_CAPACIDAD,LAWE.OBTENER_ID_FABRICANTE(PLACA_VIDEO_FABRICANTE)
    FROM gd_esquema.Maestra
    WHERE PLACA_VIDEO_MODELO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_tipo_pc AS
BEGIN
  INSERT INTO LAWE.tipo_pc (pc_codigo, gabinete_id, disco_rigido_codigo, memoria_ram_codigo, microprocesador_codigo, placa_video_modelo, motherboard_id, precio_compra)
    -- con la función REPLACE eliminamos la palabra 'Modelo' de cada registro de placa de video
    -- insertamos NULL en el campo "motherboard_id" porque los datos sobre estos componentes son inexistentes
    SELECT DISTINCT PC_CODIGO, LAWE.OBTENER_ID_GABINETE(PC_ANCHO, PC_ALTO, PC_PROFUNDIDAD), DISCO_RIGIDO_CODIGO, MEMORIA_RAM_CODIGO, MICROPROCESADOR_CODIGO, REPLACE(PLACA_VIDEO_MODELO,'Modelo ',''), NULL, COMPRA_PRECIO
    FROM gd_esquema.Maestra
    WHERE PC_CODIGO IS NOT NULL AND COMPRA_NUMERO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_ciudad AS
BEGIN
  INSERT INTO LAWE.ciudad(nombre)
    SELECT DISTINCT CIUDAD FROM gd_esquema.Maestra 
END
GO

CREATE PROCEDURE LAWE.migrar_sucursal AS
BEGIN 
  INSERT INTO LAWE.sucursal(direccion,mail,telefono,id_ciudad)
    SELECT DISTINCT SUCURSAL_DIR, SUCURSAL_MAIL, SUCURSAL_TEL, LAWE.OBTENER_ID_CIUDAD(CIUDAD) FROM gd_esquema.Maestra 
END
GO

CREATE PROCEDURE LAWE.migrar_compra AS
BEGIN
  INSERT INTO LAWE.compra (numero_compra, fecha, id_sucursal)
    SELECT DISTINCT COMPRA_NUMERO,COMPRA_FECHA, LAWE.OBTENER_ID_SUCURSAL(SUCURSAL_DIR)
    FROM gd_esquema.Maestra
    WHERE COMPRA_NUMERO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_compra_pc AS
BEGIN
  INSERT INTO LAWE.compra_pc(numero_compra, pc_codigo, cantidad)
    SELECT COMPRA_NUMERO,PC_CODIGO, COMPRA_CANTIDAD
    FROM gd_esquema.Maestra
    WHERE COMPRA_NUMERO IS NOT NULL AND PC_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_accesorio AS
BEGIN
  INSERT INTO LAWE.accesorio(accesorio_codigo, descripcion, precio_compra, id_fabricante)
    -- insertamos NULL en el campo "id_fabricante" porque los datos sobre los fabricantes de los accesorios son inexistentes
    SELECT DISTINCT ACCESORIO_CODIGO, AC_DESCRIPCION, COMPRA_PRECIO, NULL
    FROM gd_esquema.Maestra
    WHERE COMPRA_NUMERO IS NOT NULL AND ACCESORIO_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_item_compra_accesorio AS
BEGIN
  INSERT INTO LAWE.item_compra_accesorio(numero_compra, accesorio_codigo, cantidad)
    SELECT COMPRA_NUMERO, ACCESORIO_CODIGO, COMPRA_CANTIDAD
    FROM gd_esquema.Maestra
    WHERE COMPRA_NUMERO IS NOT NULL AND ACCESORIO_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_cliente AS
BEGIN
  INSERT INTO LAWE.cliente(dni, nombre, apellido, direccion, fecha_nacimiento, mail, telefono)
    SELECT CLIENTE_DNI, CLIENTE_NOMBRE, CLIENTE_APELLIDO, CLIENTE_DIRECCION	, CLIENTE_FECHA_NACIMIENTO,	CLIENTE_MAIL, CLIENTE_TELEFONO
    FROM gd_esquema.Maestra
    WHERE CLIENTE_DNI IS NOT NULL
	GROUP BY CLIENTE_DNI, CLIENTE_NOMBRE, CLIENTE_APELLIDO, CLIENTE_DIRECCION, CLIENTE_FECHA_NACIMIENTO, CLIENTE_MAIL, CLIENTE_TELEFONO 
END
GO

CREATE PROCEDURE LAWE.migrar_factura AS
BEGIN
  INSERT INTO LAWE.factura(numero_factura, fecha, id_cliente, id_sucursal)
    SELECT 
		DISTINCT FACTURA_NUMERO,
		FACTURA_FECHA, 
		LAWE.OBTENER_ID_CLIENTE(CLIENTE_DNI,CLIENTE_NOMBRE,CLIENTE_APELLIDO,CLIENTE_DIRECCION,CLIENTE_FECHA_NACIMIENTO,CLIENTE_MAIL,CLIENTE_TELEFONO ),
		LAWE.OBTENER_ID_SUCURSAL(SUCURSAL_DIR)
    FROM gd_esquema.Maestra
    WHERE FACTURA_NUMERO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_factura_pc AS
BEGIN
  INSERT INTO LAWE.factura_pc(numero_factura, pc_codigo)
    SELECT FACTURA_NUMERO, PC_CODIGO 
    FROM gd_esquema.Maestra
    WHERE FACTURA_NUMERO IS NOT NULL AND PC_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE LAWE.migrar_item_factura_accesorio AS
BEGIN
  INSERT INTO LAWE.item_factura_accesorio(numero_factura, accesorio_codigo, cantidad)
    SELECT 
		FACTURA_NUMERO,
		ACCESORIO_CODIGO,
		COUNT(*) -- COUNT(*) representa la cantidad de accesorios de ese codigo que se vendieron en la factura 
	FROM gd_esquema.Maestra 
	WHERE FACTURA_NUMERO IS NOT NULL AND ACCESORIO_CODIGO IS NOT NULL
	GROUP BY FACTURA_NUMERO, ACCESORIO_CODIGO
END
GO

------------------------------------------------------------------------------------------------
-- EJECUCIÓN DE STORED PROCEDURES PARA LA MIGRACIÓN DE DATOS
------------------------------------------------------------------------------------------------

EXEC LAWE.migrar_fabricante
EXEC LAWE.migrar_gabinete
EXEC LAWE.migrar_disco_rigido
EXEC LAWE.migrar_memoria_ram
EXEC LAWE.migrar_microprocesador
EXEC LAWE.migrar_placa_video
EXEC LAWE.migrar_tipo_pc
EXEC LAWE.migrar_ciudad
EXEC LAWE.migrar_sucursal
EXEC LAWE.migrar_compra
EXEC LAWE.migrar_compra_pc
EXEC LAWE.migrar_accesorio
EXEC LAWE.migrar_item_compra_accesorio
EXEC LAWE.migrar_cliente
EXEC LAWE.migrar_factura
EXEC LAWE.migrar_factura_pc
EXEC LAWE.migrar_item_factura_accesorio

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CREACION DE VISTAS NECESARIAS DEL MODELO 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- VIEW COMPRAS PC
-- Con esta vista podemos observar las compras de computadoras realizadas, el precio al que se compró la computadora
-- y los datos de la sucursal que realizó la compra

GO
	CREATE VIEW LAWE.v_computadoras_compradas AS
		  SELECT 
				c.numero_compra AS Numero_de_compra,
				c.fecha AS Fecha,
				cpc.pc_codigo AS Codigo_de_PC,
				cpc.cantidad AS Cantidad,
				tpc.precio_compra AS Precio_Unidad_Comprada,
				s.direccion AS Direccion_Sucursal,
				ciu.nombre AS Ciudad_Sucursal,
				s.mail AS Mail_Sucursal,
				s.telefono AS Telefono_Sucursal
			FROM LAWE.compra c
				  JOIN LAWE.compra_pc cpc ON cpc.numero_compra = c.numero_compra
				  JOIN LAWE.tipo_pc tpc ON tpc.pc_codigo = cpc.pc_codigo
				  JOIN LAWE.sucursal s ON c.id_sucursal = s.id_sucursal
				  JOIN LAWE.ciudad ciu ON s.id_ciudad = ciu.id_ciudad
GO

-- VIEW COMPRA DE ACCESORIOS POR SEPARADO (items)
-- Con esta vista podemos observar cada accesorio, su cantidad y precio al que se lo compró
-- tambien se observan los datos de la sucursal que realizó dicha compra

GO
	CREATE VIEW LAWE.v_accesorios_comprados AS
		SELECT
			c.numero_compra AS Numero_de_compra,
			c.fecha AS Fecha,
			ica.accesorio_codigo AS Codigo_del_Accesorio,
			ica.cantidad AS Cantidad,
			a.precio_compra AS Precio_Unidad_Comprada,
			a.descripcion AS Descripcion,
			-- No se obtienen los datos de los fabricantes de los accesorios porque son inexistentes
			s.direccion AS Direccion_Sucursal,
			ciu.nombre AS Ciudad_Sucursal,
			s.mail AS Mail_Sucursal,
			s.telefono AS Telefono_Sucursal
		FROM LAWE.compra c
			JOIN LAWE.item_compra_accesorio ica ON c.numero_compra = ica.numero_compra
			JOIN LAWE.accesorio a ON ica.accesorio_codigo = a.accesorio_codigo
			JOIN LAWE.sucursal s ON c.id_sucursal = s.id_sucursal
			JOIN LAWE.ciudad ciu ON s.id_ciudad = ciu.id_ciudad
GO 

-- VIEW COMPRAS ACCESORIOS CON TOTAL
-- Con esta vista podemos observar las compras de accesorios realizadas con su importe total y los datos de la sucursal que la realizó

GO
	CREATE VIEW LAWE.v_compras_de_accesorios AS
		SELECT 
			c.numero_compra AS Numero_de_compra,
			c.fecha AS Fecha,
			SUM(ica.cantidad * a.precio_compra) AS Importe_Total, -- calculamos el importe total, sumando el total por cada item
			s.direccion AS Direccion_Sucursal,
			ciu.nombre AS Ciudad_Sucursal,
			s.mail AS Mail_Sucursal,
			s.telefono AS Telefono_Sucursal
		FROM LAWE.compra c
			JOIN LAWE.item_compra_accesorio ica ON c.numero_compra = ica.numero_compra
			JOIN LAWE.accesorio a ON ica.accesorio_codigo = a.accesorio_codigo
			JOIN LAWE.sucursal s ON c.id_sucursal = s.id_sucursal
			JOIN LAWE.ciudad ciu ON s.id_ciudad = ciu.id_ciudad
		GROUP BY c.numero_compra,c.fecha,s.direccion,ciu.nombre,s.mail,s.telefono
GO

-- VIEW FACTURAS PC
-- Con esta vista se observan las ventas realizadas de computadoras, en las cuales se detallan los datos del cliente que realizó la compra,
-- la sucursal que realizó la venta y datos de la computadora vendida, entre ellos el precio al que se factura y el precio al que fue comprada por la sucursal

GO
	CREATE VIEW LAWE.v_ventas_de_computadoras AS
		SELECT
			f.numero_factura AS Numero_de_Factura,
			f.fecha AS Fecha,
			c.apellido AS Apellido_Cliente,
			c.nombre AS Nombre_Cliente,
			c.dni AS DNI_Cliente,
			fpc.pc_codigo AS Codigo_PC,
			tpc.precio_compra AS Precio_de_Compra,
			tpc.precio_compra * 1.2 AS Precio_Facturado, -- El precio de la facturación de la PC se calcula en un 20% aproximadamente del precio en el cual se realizó la compra del mismo.
			s.direccion AS Direccion_Sucursal,
			ciu.nombre AS Ciudad_Sucursal,
			s.mail AS Mail_Sucursal,
			s.telefono AS Telefono_Sucursal
		FROM LAWE.factura f
			JOIN LAWE.cliente c ON c.id_cliente = f.id_cliente
			JOIN LAWE.sucursal s ON f.id_sucursal = s.id_sucursal
			JOIN LAWE.ciudad ciu ON s.id_ciudad = ciu.id_ciudad
			JOIN LAWE.factura_pc fpc ON f.numero_factura = fpc.numero_factura
			JOIN LAWE.tipo_pc tpc ON fpc.pc_codigo = tpc.pc_codigo
GO

-- VIEW FACTURAS ACCESORIOS POR SEPARADO
-- Con esta vista se observan las ventas realizadas de accesorios, en las cuales se detallan los datos del cliente que realizó la compra,
-- la sucursal que realizó la venta y datos de los accesorios vendidos

GO
	CREATE VIEW LAWE.v_accesorios_vendidos AS
		SELECT
			f.numero_factura AS Numero_de_Factura,
			f.fecha AS Fecha,
			c.apellido AS Apellido_Cliente,
			c.nombre AS Nombre_Cliente,
			c.dni AS DNI_Cliente,
			acc.accesorio_codigo AS Codigo_Accesorio,
			acc.descripcion AS Descripcion,
			-- No se obtienen los datos de los fabricantes de los accesorios porque son inexistentes
			ifa.cantidad AS Cantidad,
			acc.precio_compra AS Precio_por_Unidad,
			acc.precio_compra * ifa.cantidad AS Total_por_Accesorio,
			s.direccion AS Direccion_Sucursal,
			ciu.nombre AS Ciudad_Sucursal,
			s.mail AS Mail_Sucursal,
			s.telefono AS Telefono_Sucursal
		FROM LAWE.factura f
			JOIN LAWE.cliente c ON c.id_cliente = f.id_cliente
			JOIN LAWE.sucursal s ON f.id_sucursal = s.id_sucursal
			JOIN LAWE.ciudad ciu ON s.id_ciudad = ciu.id_ciudad
			JOIN LAWE.item_factura_accesorio ifa ON f.numero_factura = ifa.numero_factura
			JOIN LAWE.accesorio acc ON ifa.accesorio_codigo = acc.accesorio_codigo
GO

-- VIEW VENTAS DE ACCESORIOS CON TOTAL
-- Con esta vista podemos observar las ventas de accesorios realizadas con su importe total,
-- los datos de la sucursal que la realizó y los datos del cliente involucrado en la venta

GO
	CREATE VIEW LAWE.v_ventas_de_accesorios AS
		SELECT
			f.numero_factura AS Numero_de_Factura,
			f.fecha AS Fecha,
			SUM(ifa.cantidad * acc.precio_compra) AS Importe_Total, -- calculamos el importe total, sumando el total por cada item
			c.apellido AS Apellido_Cliente,
			c.nombre AS Nombre_Cliente,
			c.dni AS DNI_Cliente,
			s.direccion AS Direccion_Sucursal,
			ciu.nombre AS Ciudad_Sucursal,
			s.mail AS Mail_Sucursal,
			s.telefono AS Telefono_Sucursal
		FROM LAWE.factura f
			JOIN LAWE.cliente c ON c.id_cliente = f.id_cliente
			JOIN LAWE.sucursal s ON f.id_sucursal = s.id_sucursal
			JOIN LAWE.ciudad ciu ON s.id_ciudad = ciu.id_ciudad
			JOIN LAWE.item_factura_accesorio ifa ON f.numero_factura = ifa.numero_factura
			JOIN LAWE.accesorio acc ON ifa.accesorio_codigo = acc.accesorio_codigo
		GROUP BY f.numero_factura,f.fecha,c.apellido,c.nombre,c.dni,s.direccion,ciu.nombre,s.mail,s.telefono
GO

-- VIEW CLIENTES
-- Con esta vista se observan los todos los clientes que existen y con sus respectivos datos

GO
	CREATE VIEW LAWE.v_clientes AS
		SELECT
			apellido AS Apellido,
			nombre AS Nombre,
			dni AS DNI,
			direccion AS Direccion,
			mail AS Correo_Electronico,
			telefono AS Telefono,
			fecha_nacimiento AS Fecha_de_Nacimiento
		FROM LAWE.cliente 
GO

-- VIEW TIPOS DE COMPUTADORAS EXISTENTES
-- Con esta vista podemos observar los distintos modelos de computadoras existentes con la informacion de sus componentes

GO
	CREATE VIEW LAWE.v_modelos_de_pc AS
		SELECT
			tpc.pc_codigo AS Codigo_de_PC,
			tpc.precio_compra AS Precio_Compra_PC,
			-- datos del gabinete
			g.alto AS Alto_Gabinete,
			g.ancho AS Ancho_Gabinete,
			g.profundidad AS Profundidad_Gabinete,
			-- datos del disco rigido
			dr.tipo AS Tipo_Disco,
			dr.capacidad AS Capacidad_Disco,
			LAWE.OBTENER_NOMBRE_FABRICANTE(dr.id_fabricante) AS Fabricante_Disco,
			-- datos de la memoria ram
			mem.tipo AS Tipo_RAM,
			mem.capacidad AS Capacidad_RAM,
			LAWE.OBTENER_NOMBRE_FABRICANTE(mem.id_fabricante) AS Fabricante_RAM,
			-- datos del microprocesador
			mic.velocidad AS Velocidad_Micro,
			LAWE.OBTENER_NOMBRE_FABRICANTE(mic.id_fabricante) AS Fabricante_Micro,
			-- datos de la placa de video
			pv.placa_video_modelo AS Modelo_Placa_de_Video,
			LAWE.OBTENER_NOMBRE_FABRICANTE(pv.id_fabricante) AS Fabricante_Placa_de_Video,
			pv.chipset AS Chipset_Placa_de_Video
			-- no incluimos datos del motherboard porque son inexistentes
		FROM LAWE.tipo_pc tpc
			JOIN LAWE.gabinete g ON tpc.gabinete_id = g.gabinete_id
			JOIN LAWE.disco_rigido dr ON tpc.disco_rigido_codigo = dr.disco_rigido_codigo				
			JOIN LAWE.memoria_ram mem ON tpc.memoria_ram_codigo = mem.memoria_ram_codigo	
			JOIN LAWE.microprocesador mic ON tpc.microprocesador_codigo = mic.microprocesador_codigo
			JOIN LAWE.placa_video pv ON tpc.placa_video_modelo = pv.placa_video_modelo
GO

/*
SELECT * FROM LAWE.v_computadoras_compradas
SELECT * FROM LAWE.v_accesorios_comprados
SELECT * FROM LAWE.v_compras_de_accesorios
SELECT * FROM LAWE.v_ventas_de_computadoras
SELECT * FROM LAWE.v_accesorios_vendidos
SELECT * FROM LAWE.v_ventas_de_accesorios
SELECT * FROM LAWE.v_clientes
SELECT * FROM LAWE.v_modelos_de_pc
*/
