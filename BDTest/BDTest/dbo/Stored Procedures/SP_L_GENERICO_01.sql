﻿

CREATE PROCEDURE SP_L_GENERICO_01
AS
BEGIN
	SELECT * FROM [Maestro.Generico]
	WHERE
	EST=1
END