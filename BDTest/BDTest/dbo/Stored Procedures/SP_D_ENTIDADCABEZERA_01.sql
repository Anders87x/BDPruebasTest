﻿CREATE PROCEDURE SP_D_ENTIDADCABEZERA_01
@ENTC_ID INT
AS
BEGIN
	UPDATE [Maestro.EntidadCabezera]
	SET
		EST=0
	WHERE
		ENTC_ID=@ENTC_ID
END