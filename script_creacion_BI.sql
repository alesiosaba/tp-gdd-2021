USE [GD1C2021]
GO

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DE INDICES
---------------------------------------------------------------------------------------------------------------------------- 


IF INDEXPROPERTY(OBJECT_ID('LAWE.compra_pc'), 'ix_compra_pc', 'IndexID') IS NOT NULL
	DROP INDEX LAWE.compra_pc.ix_compra_pc;

IF INDEXPROPERTY(OBJECT_ID('LAWE.factura_pc'), 'ix_factura_pc', 'IndexID') IS NOT NULL
	DROP INDEX LAWE.factura_pc.ix_factura_pc;

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DE TABLAS
---------------------------------------------------------------------------------------------------------------------------- 

IF OBJECT_ID('LAWE.bi_compra_pc','U') IS NOT NULL
  DROP TABLE LAWE.bi_compra_pc;

IF OBJECT_ID('LAWE.bi_factura_pc','U') IS NOT NULL
  DROP TABLE LAWE.bi_factura_pc;

IF OBJECT_ID('LAWE.bi_compra_accesorio','U') IS NOT NULL
  DROP TABLE LAWE.bi_compra_accesorio;

IF OBJECT_ID('LAWE.bi_factura_accesorio','U') IS NOT NULL
  DROP TABLE LAWE.bi_factura_accesorio;

IF OBJECT_ID('LAWE.bi_tipo_pc','U') IS NOT NULL
  DROP TABLE LAWE.bi_tipo_pc;

IF OBJECT_ID('LAWE.bi_gabinete','U') IS NOT NULL
  DROP TABLE LAWE.bi_gabinete;

IF OBJECT_ID('LAWE.bi_sucursal','U') IS NOT NULL
  DROP TABLE LAWE.bi_sucursal;

IF OBJECT_ID('LAWE.bi_tiempo','U') IS NOT NULL
  DROP TABLE LAWE.bi_tiempo;

IF OBJECT_ID('LAWE.bi_disco_rigido','U') IS NOT NULL
  DROP TABLE LAWE.bi_disco_rigido;

IF OBJECT_ID('LAWE.bi_memoria_ram','U') IS NOT NULL
  DROP TABLE LAWE.bi_memoria_ram;

IF OBJECT_ID('LAWE.bi_microprocesador','U') IS NOT NULL
  DROP TABLE LAWE.bi_microprocesador;

IF OBJECT_ID('LAWE.bi_placa_video','U') IS NOT NULL
  DROP TABLE LAWE.bi_placa_video;

IF OBJECT_ID('LAWE.bi_motherboard','U') IS NOT NULL
  DROP TABLE LAWE.bi_motherboard;

IF OBJECT_ID('LAWE.bi_edad','U') IS NOT NULL
  DROP TABLE LAWE.bi_edad;

IF OBJECT_ID('LAWE.bi_accesorio','U') IS NOT NULL
  DROP TABLE LAWE.bi_accesorio;

IF OBJECT_ID('LAWE.bi_fabricante','U') IS NOT NULL
  DROP TABLE LAWE.bi_fabricante;

IF OBJECT_ID('#tiempo_en_stock_pc','U') IS NOT NULL
  DROP TABLE #tiempo_en_stock_pc;

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DE FUNCIONES
---------------------------------------------------------------------------------------------------------------------------- 

IF OBJECT_ID('LAWE.OBTENER_NOMBRE_CIUDAD') IS NOT NULL
	DROP FUNCTION LAWE.OBTENER_NOMBRE_CIUDAD;

IF OBJECT_ID('LAWE.OBTENER_NOMBRE_FABRICANTE') IS NOT NULL
	DROP FUNCTION LAWE.OBTENER_NOMBRE_FABRICANTE;

IF OBJECT_ID('LAWE.OBTENER_ID_TIEMPO') IS NOT NULL
	DROP FUNCTION LAWE.OBTENER_ID_TIEMPO;

IF OBJECT_ID('LAWE.OBTENER_ID_EDAD') IS NOT NULL
	DROP FUNCTION LAWE.OBTENER_ID_EDAD;

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DE STORED PROCEDURES
---------------------------------------------------------------------------------------------------------------------------- 

IF OBJECT_ID('LAWE.migrar_bi_tipo_pc') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_tipo_pc;

IF OBJECT_ID('LAWE.migrar_bi_gabinete') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_gabinete;

IF OBJECT_ID('LAWE.migrar_bi_sucursal') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_sucursal;

IF OBJECT_ID('LAWE.cargar_bi_tiempo') IS NOT NULL
	DROP PROCEDURE LAWE.cargar_bi_tiempo;

IF OBJECT_ID('LAWE.migrar_bi_disco_rigido') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_disco_rigido;

IF OBJECT_ID('LAWE.migrar_bi_memoria_ram') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_memoria_ram;

IF OBJECT_ID('LAWE.migrar_bi_microprocesador') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_microprocesador;

IF OBJECT_ID('LAWE.migrar_bi_placa_video') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_placa_video;

IF OBJECT_ID('LAWE.migrar_bi_motherboard') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_motherboard;

IF OBJECT_ID('LAWE.cargar_bi_edad') IS NOT NULL
	DROP PROCEDURE LAWE.cargar_bi_edad;

IF OBJECT_ID('LAWE.migrar_bi_accesorio') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_accesorio;

IF OBJECT_ID('LAWE.migrar_bi_fabricante') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_fabricante;

IF OBJECT_ID('LAWE.migrar_bi_compra_pc') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_compra_pc;

IF OBJECT_ID('LAWE.migrar_bi_factura_pc') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_factura_pc;

IF OBJECT_ID('LAWE.calcular_tiempo_stock_pc') IS NOT NULL
	DROP PROCEDURE LAWE.calcular_tiempo_stock_pc;

IF OBJECT_ID('LAWE.migrar_bi_compra_accesorio') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_compra_accesorio;

IF OBJECT_ID('LAWE.migrar_bi_factura_accesorio') IS NOT NULL
	DROP PROCEDURE LAWE.migrar_bi_factura_accesorio;

IF OBJECT_ID('LAWE.calcular_tiempo_stock_accesorios') IS NOT NULL
	DROP PROCEDURE LAWE.calcular_tiempo_stock_accesorios;

---------------------------------------------------------------------------------------------------------------------------- 
-- BORRADO DE VISTAS
---------------------------------------------------------------------------------------------------------------------------- 

IF OBJECT_ID('LAWE.v_cantidad_pc_comprada_sucursal_mes') IS NOT NULL
	DROP VIEW LAWE.v_cantidad_pc_comprada_sucursal_mes

IF OBJECT_ID('LAWE.v_cantidad_pc_vendida_sucursal_mes') IS NOT NULL
	DROP VIEW LAWE.v_cantidad_pc_vendida_sucursal_mes

IF OBJECT_ID('LAWE.v_pc_ganancias_sucursal_mes') IS NOT NULL
	DROP VIEW LAWE.v_pc_ganancias_sucursal_mes

IF OBJECT_ID('LAWE.v_pc_precio_promedio_compra') IS NOT NULL
	DROP VIEW LAWE.v_pc_precio_promedio_compra

IF OBJECT_ID('LAWE.v_pc_tiempo_promedio_stock ') IS NOT NULL
	DROP VIEW  LAWE.v_pc_tiempo_promedio_stock 

IF OBJECT_ID('LAWE.v_accesorio_max_cant_stock') IS NOT NULL
	DROP VIEW LAWE.v_accesorio_max_cant_stock

IF OBJECT_ID('LAWE.v_accesorio_max_cant_stock2') IS NOT NULL
	DROP VIEW LAWE.v_accesorio_max_cant_stock2

IF OBJECT_ID('LAWE.v_accesorio_ganancias_sucursal_mes') IS NOT NULL
	DROP VIEW LAWE.v_accesorio_ganancias_sucursal_mes

IF OBJECT_ID('LAWE.v_accesorio_precio_promedio_compra') IS NOT NULL
	DROP VIEW LAWE.v_accesorio_precio_promedio_compra

IF OBJECT_ID('LAWE.v_accesorio_tiempo_promedio_stock') IS NOT NULL
	DROP VIEW LAWE.v_accesorio_tiempo_promedio_stock

---------------------------------------------------------------------------------------------------------------------------- 
-- CREACION DE TABLAS DEL MODELO BI
---------------------------------------------------------------------------------------------------------------------------- 

-- Compras y ventas de PCs

CREATE TABLE LAWE.bi_tipo_pc(
  pc_codigo NVARCHAR(50) PRIMARY KEY,
  precio_compra DECIMAL(18,2) NOT NULL,
  precio_venta DECIMAL(18,2) NOT NULL
);

CREATE TABLE LAWE.bi_gabinete(
  gabinete_id DECIMAL(18,0) PRIMARY KEY,
  alto DECIMAL(18,2) NOT NULL,
  ancho DECIMAL(18,2) NOT NULL,
  profundidad DECIMAL(18,2) NOT NULL
);

CREATE TABLE LAWE.bi_sucursal(
  id_sucursal DECIMAL(18,0) PRIMARY KEY,
  direccion NVARCHAR(255) NOT NULL,
  mail NVARCHAR(255) NOT NULL,
  telefono DECIMAL(18,0) NOT NULL,
  ciudad NVARCHAR(255) NOT NULL
);

CREATE TABLE LAWE.bi_tiempo(
  id_tiempo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
  anio DECIMAL(18,0) NOT NULL,
  mes DECIMAL(18,0) NOT NULL
);

CREATE TABLE LAWE.bi_disco_rigido(
  disco_rigido_codigo NVARCHAR(255) PRIMARY KEY,
  tipo NVARCHAR(255) NOT NULL,
  capacidad NVARCHAR(255) NOT NULL,
  velocidad NVARCHAR(255) NOT NULL,
  fabricante NVARCHAR(255) NOT NULL
);

CREATE TABLE LAWE.bi_memoria_ram(
  memoria_ram_codigo NVARCHAR(255) PRIMARY KEY,
  tipo NVARCHAR(255) NOT NULL,
  capacidad NVARCHAR(255) NOT NULL,
  velocidad NVARCHAR(255) NOT NULL,
  fabricante NVARCHAR(255) NOT NULL
);

CREATE TABLE LAWE.bi_microprocesador(
  microprocesador_codigo NVARCHAR(50) PRIMARY KEY,
  cache NVARCHAR(50) NOT NULL,
  cant_hilos DECIMAL(18,0) NOT NULL,
  velocidad NVARCHAR(50) NOT NULL,
  fabricante NVARCHAR(255) NOT NULL
);

CREATE TABLE LAWE.bi_placa_video(
  placa_video_modelo NVARCHAR(50) PRIMARY KEY,
  chipset NVARCHAR(50) NOT NULL,
  velocidad NVARCHAR(50) NOT NULL,
  capacidad NVARCHAR(255) NOT NULL,
  fabricante NVARCHAR(255) NOT NULL
);

CREATE TABLE LAWE.bi_motherboard(
  motherboard_id DECIMAL(18,0) PRIMARY KEY,
  descripcion NVARCHAR(50),
  fabricante NVARCHAR(255)
);

CREATE TABLE LAWE.bi_edad(
  id_edad DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
  rango NVARCHAR(255) NOT NULL
);

CREATE TABLE LAWE.bi_compra_pc(
  pc_codigo NVARCHAR(50) REFERENCES LAWE.bi_tipo_pc(pc_codigo) NOT NULL,
  gabinete_id DECIMAL(18,0) REFERENCES LAWE.bi_gabinete(gabinete_id) NOT NULL,
  disco_rigido_codigo NVARCHAR(255) REFERENCES LAWE.bi_disco_rigido(disco_rigido_codigo) NOT NULL,
  memoria_ram_codigo NVARCHAR(255) REFERENCES LAWE.bi_memoria_ram(memoria_ram_codigo) NOT NULL,
  microprocesador_codigo NVARCHAR(50) REFERENCES LAWE.bi_microprocesador(microprocesador_codigo) NOT NULL,
  placa_video_modelo NVARCHAR(50) REFERENCES LAWE.bi_placa_video(placa_video_modelo) NOT NULL,
  motherboard_id DECIMAL(18,0) REFERENCES LAWE.bi_motherboard(motherboard_id),
  id_sucursal DECIMAL(18,0) REFERENCES LAWE.bi_sucursal(id_sucursal) NOT NULL,
  id_tiempo DECIMAL(18,0) REFERENCES LAWE.bi_tiempo(id_tiempo) NOT NULL,
  cantidad DECIMAL(18,0) NOT NULL,
  total_compra DECIMAL(18,2) NOT NULL,
  PRIMARY KEY(pc_codigo, id_sucursal, id_tiempo)
);

CREATE TABLE LAWE.bi_factura_pc(
  pc_codigo NVARCHAR(50) REFERENCES LAWE.bi_tipo_pc(pc_codigo) NOT NULL,
  gabinete_id DECIMAL(18,0) REFERENCES LAWE.bi_gabinete(gabinete_id) NOT NULL,
  disco_rigido_codigo NVARCHAR(255) REFERENCES LAWE.bi_disco_rigido(disco_rigido_codigo) NOT NULL,
  memoria_ram_codigo NVARCHAR(255) REFERENCES LAWE.bi_memoria_ram(memoria_ram_codigo) NOT NULL,
  microprocesador_codigo NVARCHAR(50) REFERENCES LAWE.bi_microprocesador(microprocesador_codigo) NOT NULL,
  placa_video_modelo NVARCHAR(50) REFERENCES LAWE.bi_placa_video(placa_video_modelo) NOT NULL,
  motherboard_id DECIMAL(18,0) REFERENCES LAWE.bi_motherboard(motherboard_id),
  id_sucursal DECIMAL(18,0) REFERENCES LAWE.bi_sucursal(id_sucursal) NOT NULL,
  id_tiempo DECIMAL(18,0) REFERENCES LAWE.bi_tiempo(id_tiempo) NOT NULL,
  id_edad DECIMAL(18,0) REFERENCES LAWE.bi_edad(id_edad) NOT NULL,
  cantidad DECIMAL(18,0) NOT NULL,
  total_factura DECIMAL(18,2) NOT NULL,
  tiempo_en_stock INT NOT NULL
  PRIMARY KEY(pc_codigo, id_sucursal, id_tiempo, id_edad)
);

-- Compras y ventas de Accesorios

CREATE TABLE LAWE.bi_accesorio(
  accesorio_codigo DECIMAL(18,0) PRIMARY KEY,
  descripcion NVARCHAR(255) NOT NULL,
  precio DECIMAL(18,2) NOT NULL
);

CREATE TABLE LAWE.bi_fabricante(
  id_fabricante DECIMAL(18,0) PRIMARY KEY,
  nombre NVARCHAR(255) NOT NULL,
);

CREATE TABLE LAWE.bi_compra_accesorio(
  accesorio_codigo DECIMAL(18,0) REFERENCES LAWE.bi_accesorio(accesorio_codigo) NOT NULL,
  id_fabricante DECIMAL(18,0) REFERENCES LAWE.bi_fabricante(id_fabricante),
  id_sucursal DECIMAL(18,0) REFERENCES LAWE.bi_sucursal(id_sucursal) NOT NULL,
  id_tiempo DECIMAL(18,0) REFERENCES LAWE.bi_tiempo(id_tiempo) NOT NULL,
  cantidad DECIMAL(18,0) NOT NULL,
  total_compra_acc DECIMAL(18,2) NOT NULL,
  PRIMARY KEY(accesorio_codigo, id_sucursal, id_tiempo)
);

CREATE TABLE LAWE.bi_factura_accesorio(
  accesorio_codigo DECIMAL(18,0) REFERENCES LAWE.bi_accesorio(accesorio_codigo) NOT NULL,
  id_fabricante DECIMAL(18,0) REFERENCES LAWE.bi_fabricante(id_fabricante),
  id_sucursal DECIMAL(18,0) REFERENCES LAWE.bi_sucursal(id_sucursal) NOT NULL,
  id_tiempo DECIMAL(18,0) REFERENCES LAWE.bi_tiempo(id_tiempo) NOT NULL,
  id_edad DECIMAL(18,0) REFERENCES LAWE.bi_edad(id_edad) NOT NULL,
  cantidad DECIMAL(18,0) NOT NULL,
  total_factura_acc DECIMAL(18,2) NOT NULL,
  tiempo_en_stock INT NOT NULL
  PRIMARY KEY(accesorio_codigo, id_sucursal, id_tiempo, id_edad)
);

-----------------------------------------------------------------------------------------------------------------------------------------------
-- CREACION DE INDICES
-----------------------------------------------------------------------------------------------------------------------------------------------

CREATE INDEX ix_compra_pc ON LAWE.compra_pc (numero_compra);
CREATE INDEX ix_factura_pc ON LAWE.factura_pc (numero_factura);

-----------------------------------------------------------------------------------------------------------------------------------------------
-- CREACION DE FUNCIONES 
-----------------------------------------------------------------------------------------------------------------------------------------------

-- Esta función nos permite obtener el nombre de una ciudad a partir de su numero de id 
-- Utilizamos esta función para la migracion de sucursales al modelo BI

GO
	CREATE FUNCTION LAWE.OBTENER_NOMBRE_CIUDAD(@id_ciudad DECIMAL(18,0)) RETURNS NVARCHAR(255) AS
	BEGIN
		DECLARE @ciudad NVARCHAR(255);

		SELECT @ciudad = nombre FROM LAWE.ciudad WHERE id_ciudad = @id_ciudad

		RETURN @ciudad;
	END
GO

-- Esta función nos permite obtener el nombre de un fabricante a partir de su numero de id 
-- Utilizamos esta función en migracion de los distintos componentes a las dimensiones del modelo BI

GO
	CREATE FUNCTION LAWE.OBTENER_NOMBRE_FABRICANTE(@id_fabricante DECIMAL(18,0)) RETURNS NVARCHAR(255) AS
	BEGIN
		DECLARE @fabricante NVARCHAR(255);

		SELECT @fabricante = nombre FROM LAWE.fabricante WHERE id_fabricante = @id_fabricante

		RETURN @fabricante;
	END
GO

-- Esta función nos permite obtener el id para un mes y año especificos 

CREATE FUNCTION LAWE.OBTENER_ID_TIEMPO(@fecha DATE) RETURNS DECIMAL(18) AS
BEGIN
	DECLARE @anio DECIMAL(18),
			@mes DECIMAL(18),
			@id_tiempo DECIMAL(18)

	SET @anio = DATEPART(YEAR, @fecha)
	SET @mes = DATEPART(MONTH, @fecha)

	SELECT @id_tiempo = id_tiempo FROM LAWE.bi_tiempo WHERE anio = @anio AND mes = @mes

	RETURN @id_tiempo
END
GO

-- Esta función nos permite obtener el id del rango de la edad de un cliente

CREATE FUNCTION LAWE.OBTENER_ID_EDAD(@FECHA_NACIMIENTO DATE) RETURNS DECIMAL(18) AS
BEGIN
	DECLARE @id_edad DECIMAL(18);
	DECLARE @HOY DATE;
	DECLARE @EDAD INT;
	SET @HOY = GETDATE();
	SET @EDAD = (DATEDIFF(DAY, @FECHA_NACIMIENTO, @HOY) / 365)

	IF @EDAD BETWEEN 18 AND 30
		SELECT @id_edad = id_edad FROM LAWE.bi_edad WHERE rango = '18 - 30 años'
	ELSE IF @EDAD BETWEEN 31 AND 50
		SELECT @id_edad = id_edad FROM LAWE.bi_edad WHERE rango = '31 - 50 años'
	ELSE
		SELECT @id_edad = id_edad FROM LAWE.bi_edad WHERE rango = '> 50 años'


	RETURN @id_edad;
END
GO


---------------------------------------------------------------------------------------------------------------------------- 
-- CREACION STORED PROCEDURES PARA MIGRACION AL MODELO BI
---------------------------------------------------------------------------------------------------------------------------- 

-- En esta sección se crean los Procedures necesarios para la migración desde el modelo transaccional al modelo BI
-- El nombre de la Stored Procedure especifica qué tabla se está migrando

------ MIGRACION/CARGA DIMENSIONES --------

GO
CREATE PROCEDURE LAWE.migrar_bi_tipo_pc AS
BEGIN
  INSERT INTO LAWE.bi_tipo_pc (pc_codigo, precio_compra, precio_venta)
    SELECT pc_codigo, precio_compra, 1.2 * precio_compra  FROM LAWE.tipo_pc
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_gabinete AS
BEGIN
  INSERT INTO LAWE.bi_gabinete (gabinete_id, alto,ancho,profundidad)
    SELECT gabinete_id, alto,ancho,profundidad FROM LAWE.gabinete
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_sucursal AS
BEGIN
  INSERT INTO LAWE.bi_sucursal (id_sucursal, direccion, mail, telefono, ciudad)
    SELECT id_sucursal, direccion, mail, telefono, LAWE.OBTENER_NOMBRE_CIUDAD(id_ciudad) 
    FROM LAWE.sucursal
END
GO

-- La dimension "bi_tiempo" almacena las posibles fechas de facturas y compras
-- asociando mes y año apartir de la fecha original

GO
CREATE PROCEDURE LAWE.cargar_bi_tiempo AS
BEGIN
	INSERT INTO LAWE.bi_tiempo (anio, mes)
		SELECT DISTINCT YEAR(fecha), MONTH(fecha)
		FROM LAWE.compra
		UNION
		SELECT DISTINCT YEAR(fecha), MONTH(fecha)
		FROM LAWE.factura
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_disco_rigido AS
BEGIN
  INSERT INTO LAWE.bi_disco_rigido (disco_rigido_codigo, tipo, capacidad, velocidad, fabricante)
    SELECT disco_rigido_codigo, tipo, capacidad, velocidad, LAWE.OBTENER_NOMBRE_FABRICANTE(id_fabricante) 
    FROM LAWE.disco_rigido
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_memoria_ram AS
BEGIN
  INSERT INTO LAWE.bi_memoria_ram (memoria_ram_codigo, tipo, capacidad, velocidad, fabricante)
    SELECT memoria_ram_codigo, tipo, capacidad, velocidad, LAWE.OBTENER_NOMBRE_FABRICANTE(id_fabricante) 
    FROM LAWE.memoria_ram
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_microprocesador AS
BEGIN
  INSERT INTO LAWE.bi_microprocesador (microprocesador_codigo, cache, cant_hilos, velocidad, fabricante)
    SELECT microprocesador_codigo, cache, cant_hilos, velocidad, LAWE.OBTENER_NOMBRE_FABRICANTE(id_fabricante) 
    FROM LAWE.microprocesador
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_placa_video AS
BEGIN
  INSERT INTO LAWE.bi_placa_video (placa_video_modelo, chipset, velocidad, capacidad, fabricante)
    SELECT placa_video_modelo, chipset, velocidad, capacidad, LAWE.OBTENER_NOMBRE_FABRICANTE(id_fabricante) 
    FROM LAWE.placa_video
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_motherboard AS
BEGIN
  INSERT INTO LAWE.bi_motherboard (motherboard_id, descripcion, fabricante)
    SELECT motherboard_id, descripcion, LAWE.OBTENER_NOMBRE_FABRICANTE(id_fabricante) 
    FROM LAWE.motherboard
END
GO

-- La dimension "bi_edad" almacena los posibles rangos de edad de los clientes
-- a partir de su fecha de nacimiento

GO
CREATE PROCEDURE LAWE.cargar_bi_edad AS
BEGIN
	INSERT INTO LAWE.bi_edad (rango)
		VALUES 	('18 - 30 años'),
				('31 - 50 años'),
				('> 50 años')
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_accesorio AS
BEGIN
  INSERT INTO LAWE.bi_accesorio (accesorio_codigo, descripcion, precio)
    SELECT accesorio_codigo, descripcion, precio_compra  
    FROM LAWE.accesorio
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_fabricante AS
BEGIN
  INSERT INTO LAWE.bi_fabricante (id_fabricante, nombre)
    SELECT id_fabricante, nombre
    FROM LAWE.fabricante
END
GO

------ MIGRACION HECHOS --------

-- PC's

GO
CREATE PROCEDURE LAWE.migrar_bi_compra_pc AS
BEGIN
	INSERT INTO LAWE.bi_compra_pc (pc_codigo, gabinete_id, disco_rigido_codigo, memoria_ram_codigo, microprocesador_codigo, placa_video_modelo, motherboard_id, id_sucursal, id_tiempo, cantidad, total_compra)
	SELECT 
		t_pc.pc_codigo,
		gabinete_id,
		disco_rigido_codigo,
		memoria_ram_codigo,
		microprocesador_codigo,
		placa_video_modelo,
		motherboard_id,
		id_sucursal,
		LAWE.OBTENER_ID_TIEMPO(fecha),
		COUNT(cantidad),
		SUM(cantidad * t_pc.precio_compra)		
	FROM LAWE.compra_pc c_pc
		JOIN LAWE.compra c ON c.numero_compra = c_pc.numero_compra
		JOIN LAWE.tipo_pc t_pc ON c_pc.pc_codigo = t_pc.pc_codigo
	GROUP BY 
		t_pc.pc_codigo,
		gabinete_id,
		disco_rigido_codigo,
		memoria_ram_codigo,
		microprocesador_codigo,
		placa_video_modelo,
		motherboard_id,
		id_sucursal,
		LAWE.OBTENER_ID_TIEMPO(fecha)
END
GO

-- Este Stored Procedure calcula el tiempo que estuvo en stock una PC comparando 
-- la fecha de su compra con la fecha de su correspondiente factura 

CREATE TABLE #tiempo_en_stock_pc (
		numero_compra DECIMAL(18),
		fecha_compra DATETIME2(3),
		pc_codigo_compra NVARCHAR(50),
		numero_factura DECIMAL(18),
		fecha_factura DATETIME2(3),
		pc_codigo_factura NVARCHAR(50),
		tiempo_en_stock DECIMAL(18)
	)

GO
CREATE PROCEDURE LAWE.calcular_tiempo_stock_pc AS
BEGIN
	DECLARE cursor_compras_pc CURSOR
	FOR
		SELECT c.numero_compra, fecha, c_pc.pc_codigo
		FROM LAWE.compra_pc c_pc
			JOIN LAWE.compra c ON c.numero_compra = c_pc.numero_compra

		DECLARE @numero_compra DECIMAL(18), @fecha_compra DATETIME2(3), @pc_codigo_compra NVARCHAR(50)

	DECLARE cursor_facturas_pc CURSOR
	FOR 
		SELECT f.numero_factura, fecha, f_pc.pc_codigo
		FROM LAWE.factura_pc f_pc
			JOIN LAWE.factura f ON f.numero_factura = f_pc.numero_factura

		DECLARE @numero_factura DECIMAL(18), @fecha_factura DATETIME2(3), @pc_codigo_factura NVARCHAR(50)

		OPEN cursor_compras_pc
		OPEN cursor_facturas_pc

		FETCH cursor_compras_pc INTO @numero_compra, @fecha_compra, @pc_codigo_compra
		FETCH cursor_facturas_pc INTO @numero_factura, @fecha_factura, @pc_codigo_factura
		
		WHILE (@@FETCH_STATUS=0)
		
		BEGIN
		
			INSERT INTO #tiempo_en_stock_pc 
			VALUES(
				@numero_compra,
				@fecha_compra,
				@pc_codigo_compra,
				@numero_factura,
				@fecha_factura,
				@pc_codigo_factura,
				DATEDIFF(DAY,@fecha_compra,@fecha_factura))

		FETCH cursor_compras_pc INTO @numero_compra, @fecha_compra, @pc_codigo_compra
		FETCH cursor_facturas_pc INTO @numero_factura, @fecha_factura, @pc_codigo_factura
		
		END 
		
		CLOSE cursor_compras_pc
		CLOSE cursor_facturas_pc
		
		DEALLOCATE cursor_compras_pc
		DEALLOCATE cursor_facturas_pc
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_factura_pc AS
BEGIN
	INSERT INTO LAWE.bi_factura_pc (
		pc_codigo, gabinete_id, disco_rigido_codigo, memoria_ram_codigo, microprocesador_codigo, placa_video_modelo, motherboard_id, id_sucursal, id_tiempo, id_edad, cantidad, total_factura, tiempo_en_stock)
	SELECT 
		t_pc.pc_codigo,
		gabinete_id,
		disco_rigido_codigo,
		memoria_ram_codigo,
		microprocesador_codigo,
		placa_video_modelo,
		motherboard_id,
		id_sucursal,
		LAWE.OBTENER_ID_TIEMPO(fecha),
		LAWE.OBTENER_ID_EDAD(c.fecha_nacimiento),
		COUNT(*),
		SUM(t_pc.precio_compra * 1.2),
		SUM(t.tiempo_en_stock) / COUNT(*) AS tiempo_stock_promedio
	FROM LAWE.factura_pc f_pc
		JOIN LAWE.factura f ON f.numero_factura = f_pc.numero_factura
		JOIN LAWE.tipo_pc t_pc ON f_pc.pc_codigo = t_pc.pc_codigo
		JOIN LAWE.cliente c ON f.id_cliente = c.id_cliente
		JOIN #tiempo_en_stock_pc t ON f.numero_factura = t.numero_factura
	GROUP BY 
		t_pc.pc_codigo,
		gabinete_id,
		disco_rigido_codigo,
		memoria_ram_codigo,
		microprocesador_codigo,
		placa_video_modelo,
		motherboard_id,
		id_sucursal,
		LAWE.OBTENER_ID_TIEMPO(fecha),
		LAWE.OBTENER_ID_EDAD(c.fecha_nacimiento)    
    
	DROP TABLE #tiempo_en_stock_pc 
END
GO

-- ACCESORIOS

GO
CREATE PROCEDURE LAWE.migrar_bi_compra_accesorio AS
BEGIN
	INSERT INTO  LAWE.bi_compra_accesorio (
		accesorio_codigo,
		id_fabricante,
		id_sucursal,
		id_tiempo,
		cantidad,
		total_compra_acc)
	SELECT
		i.accesorio_codigo,
		a.id_fabricante,
		f.id_sucursal,
		LAWE.OBTENER_ID_TIEMPO(fecha),
		COUNT(*),
		SUM(i.cantidad * a.precio_compra)
	FROM LAWE.item_factura_accesorio i
		JOIN LAWE.factura f ON i.numero_factura = f.numero_factura
		JOIN LAWE.accesorio a ON i.accesorio_codigo = a.accesorio_codigo
	GROUP BY
		i.accesorio_codigo,
		a.id_fabricante,
		f.id_sucursal,
		LAWE.OBTENER_ID_TIEMPO(fecha)
END
GO

-- Este Stored Procedure calcula el tiempo que estuvo en stock unos accesorios 
-- la fecha de su compra con la fecha de su correspondiente factura 

CREATE TABLE #tiempo_en_stock_accesorios (
		numero_compra DECIMAL(18),
		fecha_compra DATETIME2(3),
		accesorio_codigo_compra NVARCHAR(50),
		numero_factura DECIMAL(18),
		fecha_factura DATETIME2(3),
		accesorio_codigo_factura NVARCHAR(50),
		tiempo_en_stock DECIMAL(18)
	)

GO
CREATE PROCEDURE LAWE.calcular_tiempo_stock_accesorios AS
BEGIN
	DECLARE cursor_compras_accesorios CURSOR
	FOR
		SELECT c.numero_compra, fecha, i_c_acc.accesorio_codigo
		FROM LAWE.item_compra_accesorio i_c_acc
			JOIN LAWE.compra c ON i_c_acc.numero_compra = c.numero_compra

		DECLARE @numero_compra DECIMAL(18), @fecha_compra DATETIME2(3), @accesorio_codigo_compra NVARCHAR(50)

	DECLARE cursor_facturas_accesorios CURSOR
	FOR 
		SELECT f.numero_factura, fecha, i_f_acc.accesorio_codigo
		FROM LAWE.item_factura_accesorio i_f_acc
			JOIN LAWE.factura f ON f.numero_factura = i_f_acc.numero_factura

		DECLARE @numero_factura DECIMAL(18), @fecha_factura DATETIME2(3), @accesorio_codigo_factura NVARCHAR(50)

		OPEN cursor_compras_accesorios
		OPEN cursor_facturas_accesorios

		FETCH cursor_compras_accesorios INTO @numero_compra, @fecha_compra, @accesorio_codigo_compra
		FETCH cursor_facturas_accesorios INTO @numero_factura, @fecha_factura, @accesorio_codigo_factura
		
		WHILE (@@FETCH_STATUS=0)
		
		BEGIN
		
			INSERT INTO #tiempo_en_stock_accesorios 
			VALUES(
				@numero_compra,
				@fecha_compra,
				@accesorio_codigo_compra,
				@numero_factura,
				@fecha_factura,
				@accesorio_codigo_factura,
				DATEDIFF(DAY,@fecha_compra,@fecha_factura))

		FETCH cursor_compras_accesorios INTO @numero_compra, @fecha_compra, @accesorio_codigo_compra
		FETCH cursor_facturas_accesorios INTO @numero_factura, @fecha_factura, @accesorio_codigo_factura
		
		END 
		
		CLOSE cursor_compras_accesorios
		CLOSE cursor_facturas_accesorios
		
		DEALLOCATE cursor_compras_accesorios
		DEALLOCATE cursor_facturas_accesorios
END
GO

GO
CREATE PROCEDURE LAWE.migrar_bi_factura_accesorio AS
BEGIN
	INSERT INTO  LAWE.bi_factura_accesorio (
		accesorio_codigo,
		id_fabricante,
		id_sucursal,
		id_tiempo,
		id_edad,
		cantidad,
		total_factura_acc,
		tiempo_en_stock)
	SELECT
		i.accesorio_codigo,
		a.id_fabricante,
		f.id_sucursal,
		LAWE.OBTENER_ID_TIEMPO(fecha),
		LAWE.OBTENER_ID_EDAD(c.fecha_nacimiento),
		COUNT(*),
		SUM(i.cantidad * a.precio_compra * 1.2),
		SUM(t.tiempo_en_stock) / COUNT(*) AS tiempo_stock_promedio
	FROM LAWE.item_factura_accesorio i
		JOIN LAWE.factura f ON i.numero_factura = f.numero_factura
		JOIN LAWE.accesorio a ON i.accesorio_codigo = a.accesorio_codigo
		JOIN LAWE.cliente c ON f.id_cliente = c.id_cliente
		JOIN #tiempo_en_stock_accesorios t ON f.numero_factura = t.numero_factura
	GROUP BY
		i.accesorio_codigo,
		a.id_fabricante,
		f.id_sucursal,
		LAWE.OBTENER_ID_TIEMPO(fecha),
		LAWE.OBTENER_ID_EDAD(c.fecha_nacimiento)

	DROP TABLE #tiempo_en_stock_accesorios 
END
GO

------------------------------------------------------------------------------------------------
-- EJECUCIÓN DE STORED PROCEDURES PARA LA MIGRACIÓN DE DATOS AL MODELO BI
------------------------------------------------------------------------------------------------

----- Migracion de Dimensiones

EXEC LAWE.migrar_bi_tipo_pc
EXEC LAWE.migrar_bi_gabinete
EXEC LAWE.migrar_bi_sucursal

EXEC LAWE.cargar_bi_tiempo

EXEC LAWE.migrar_bi_disco_rigido
EXEC LAWE.migrar_bi_memoria_ram
EXEC LAWE.migrar_bi_microprocesador
EXEC LAWE.migrar_bi_placa_video
EXEC LAWE.migrar_bi_motherboard

EXEC LAWE.cargar_bi_edad

EXEC LAWE.migrar_bi_accesorio
EXEC LAWE.migrar_bi_fabricante

----- Migracion de Hechos

EXEC LAWE.migrar_bi_compra_pc

EXEC LAWE.calcular_tiempo_stock_pc
EXEC LAWE.migrar_bi_factura_pc

EXEC LAWE.migrar_bi_compra_accesorio

EXEC LAWE.calcular_tiempo_stock_accesorios
EXEC LAWE.migrar_bi_factura_accesorio

-------------------------------------------------------------------------------------------
-- VISTAS
-------------------------------------------------------------------------------------------

-- VISTAS DE PC's

----------------------------------------------------------------------
-- Cantidad de PCs, vendidos y comprados x sucursal y mes
----------------------------------------------------------------------

GO
CREATE VIEW LAWE.v_cantidad_pc_comprada_sucursal_mes AS
	SELECT 
		c.id_sucursal,
		mes,
		SUM(c.cantidad) cantidad_pc_compradas
		FROM LAWE.bi_compra_pc c
			JOIN LAWE.bi_tiempo t ON c.id_tiempo = t.id_tiempo
	GROUP BY c.id_sucursal,mes
GO

GO
CREATE VIEW LAWE.v_cantidad_pc_vendida_sucursal_mes AS
	SELECT 
		f.id_sucursal,
		mes,
		SUM(f.cantidad) cantidad_pc_vendidas
		FROM LAWE.bi_factura_pc f
			JOIN LAWE.bi_tiempo t ON f.id_tiempo = t.id_tiempo
	GROUP BY f.id_sucursal,mes
GO

----------------------------------------------------------------------
-- Ganancias (precio de venta – precio de compra) x Sucursal x mes
----------------------------------------------------------------------

GO
CREATE VIEW LAWE.v_pc_ganancias_sucursal_mes AS
    SELECT 
		f.id_sucursal,
		mes,
		SUM(total_factura - 0.8 * total_factura) ganancias
    FROM LAWE.bi_factura_pc f
		JOIN LAWE.bi_tiempo t ON t.id_tiempo = f.id_tiempo
    GROUP BY id_sucursal, mes
GO

----------------------------------------------------------------------
-- Precio promedio de cada PC, vendido y comprado.
----------------------------------------------------------------------

GO
CREATE VIEW LAWE.v_pc_precio_promedio_compra AS 
	SELECT 
		pc.pc_codigo,
		AVG(pc.precio_compra) precio_promedio_compra,
		AVG(pc.precio_venta) precio_promedio_venta
	FROM LAWE.bi_compra_pc c
		JOIN LAWE.bi_tipo_pc pc ON pc.pc_codigo = c.pc_codigo
		JOIN LAWE.bi_factura_pc f ON f.pc_codigo = f.pc_codigo
	GROUP BY pc.pc_codigo	
GO

----------------------------------------------------------------------
-- Promedio de tiempo en stock de cada modelo de PC
----------------------------------------------------------------------

GO
CREATE VIEW LAWE.v_pc_tiempo_promedio_stock AS 
	SELECT 
		fpc.pc_codigo,
		AVG(tiempo_en_stock) tiempo_stock_promedio
	FROM LAWE.bi_factura_pc fpc
	GROUP BY fpc.pc_codigo
GO

--------------------------------------------------------------------------------------------

-- VISTAS DE ACCESORIOS

----------------------------------------------------------------------
-- Máxima cantidad de stock por cada sucursal (anual)
----------------------------------------------------------------------

-- Calculamos cantidad maxima de stock de cada accesorio en cada año por sucursal

GO
CREATE VIEW LAWE.v_accesorio_max_cant_stock AS
	SELECT bc.id_sucursal, bt.anio, bc.accesorio_codigo, SUM(bc.cantidad) cantidad_stock
	FROM LAWE.bi_compra_accesorio bc 
		join LAWE.bi_tiempo bt ON bc.id_tiempo = bt.id_tiempo 
	GROUP BY bc.id_sucursal, bt.anio,  bc.accesorio_codigo
GO

-- Calculamos cantidad maxima de stock de accesorios por sucursal por año

GO
CREATE VIEW LAWE.v_accesorio_max_cant_stock2 AS
	SELECT bc.id_sucursal, bt.anio, SUM(bc.cantidad) cantidad_stock
	FROM LAWE.bi_compra_accesorio bc 
		JOIN LAWE.bi_tiempo bt ON bc.id_tiempo = bt.id_tiempo 
	GROUP BY bc.id_sucursal, bt.anio
GO

----------------------------------------------------------------------
-- Ganancias (precio de venta – precio de compra) x Sucursal x mes
----------------------------------------------------------------------

GO
CREATE VIEW LAWE.v_accesorio_ganancias_sucursal_mes AS
    SELECT 
		fa.id_sucursal,
		mes,
		SUM(total_factura_acc - 0.8 * total_factura_acc) ganancias
    FROM LAWE.bi_factura_accesorio fa
		JOIN LAWE.bi_tiempo t ON t.id_tiempo = fa.id_tiempo
    GROUP BY id_sucursal, mes
GO

----------------------------------------------------------------------
-- Precio promedio de cada accesorio, vendido y comprado.
----------------------------------------------------------------------

GO
CREATE VIEW LAWE.v_accesorio_precio_promedio_compra AS 
	SELECT 
		ca.accesorio_codigo,
		AVG(a.precio) precio_promedio_compra,
		AVG(a.precio * 1.2) precio_promedio_venta
	FROM LAWE.bi_compra_accesorio ca
		JOIN LAWE.bi_accesorio a ON ca.accesorio_codigo = a.accesorio_codigo
		JOIN LAWE.bi_factura_accesorio fa ON fa.accesorio_codigo = a.accesorio_codigo  
	GROUP BY ca.accesorio_codigo	
GO

----------------------------------------------------------------------
-- Promedio de tiempo en stock de cada modelo de accesorio
----------------------------------------------------------------------

GO
CREATE VIEW LAWE.v_accesorio_tiempo_promedio_stock AS 
	SELECT 
		fa.accesorio_codigo,
		AVG(tiempo_en_stock) tiempo_stock_promedio
	FROM LAWE.bi_factura_accesorio fa
	GROUP BY fa.accesorio_codigo
GO

/*
SELECT * FROM LAWE.v_cantidad_pc_comprada_sucursal_mes
SELECT * FROM LAWE.v_cantidad_pc_vendida_sucursal_mes
SELECT * FROM LAWE.v_pc_ganancias_sucursal_mes
SELECT * FROM LAWE.v_pc_precio_promedio_compra
SELECT * FROM LAWE.v_pc_tiempo_promedio_stock 

SELECT * FROM LAWE.v_accesorio_max_cant_stock
SELECT * FROM LAWE.v_accesorio_max_cant_stock2
SELECT * FROM LAWE.v_accesorio_ganancias_sucursal_mes
SELECT * FROM LAWE.v_accesorio_precio_promedio_compra
SELECT * FROM LAWE.v_accesorio_tiempo_promedio_stock
*/