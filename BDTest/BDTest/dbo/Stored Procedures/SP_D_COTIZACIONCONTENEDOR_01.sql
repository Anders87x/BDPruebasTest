﻿CREATE PROCEDURE SP_D_COTIZACIONCONTENEDOR_01
@CTND_ID INT
AS
BEGIN
	UPDATE [Li.Cotizacion_Contenedor] 
		SET 
			EST=0
		WHERE
			CTND_ID = @CTND_ID
END