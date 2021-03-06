﻿CREATE PROCEDURE SP_I_COTIZACIONCOMMODITY_01
@COT_ID INT,
@COMM_ID INT,
@COMM_BULTOS INT,
@UND_ID INT,
@COMM_PESO NUMERIC (8,2),
@COMM_ALTO NUMERIC (8,2),
@COMM_ANCHO NUMERIC (8,2),
@COMM_LARGO NUMERIC (8,2),
@COMM_TOTAL NUMERIC (8,2)
AS
BEGIN
	INSERT INTO [Li.Cotizacion_Commodity] VALUES (
		@COT_ID,
		@COMM_ID,
		@COMM_BULTOS,
		@UND_ID,
		@COMM_PESO,
		@COMM_ALTO,
		@COMM_ANCHO,
		@COMM_LARGO,
		@COMM_ALTO * @COMM_ANCHO * @COMM_LARGO,
		1)
END