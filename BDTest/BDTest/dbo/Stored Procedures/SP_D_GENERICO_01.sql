﻿CREATE PROCEDURE SP_D_GENERICO_01
@GEN_ID INT
AS
BEGIN
	UPDATE [Maestro.Generico] 
	SET
		EST = 0
	WHERE
		GEN_ID = @GEN_ID
END