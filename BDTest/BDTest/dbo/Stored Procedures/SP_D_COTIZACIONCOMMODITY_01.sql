﻿CREATE PROCEDURE SP_D_COTIZACIONCOMMODITY_01
@COMMD_ID INT
AS
BEGIN
	UPDATE [Li.Cotizacion_Commodity] SET
		EST=0
	WHERE
		COMMD_ID = @COMMD_ID
END