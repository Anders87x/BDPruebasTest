﻿CREATE PROCEDURE SP_L_TIPO_02
@TIP_ID INT
AS
BEGIN
	SELECT * FROM [Maestro.Tipo]
	WHERE 
		TIP_ID = @TIP_ID AND
		EST=1
END