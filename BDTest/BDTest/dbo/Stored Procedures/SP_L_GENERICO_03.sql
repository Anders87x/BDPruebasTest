﻿CREATE PROCEDURE SP_L_GENERICO_03
@TIP_ID INT
AS
BEGIN
	SELECT * FROM [Maestro.Generico]
	WHERE
	TIP_ID = @TIP_ID AND
	EST=1
END