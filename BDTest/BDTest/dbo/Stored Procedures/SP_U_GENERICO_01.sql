﻿CREATE PROCEDURE SP_U_GENERICO_01
@GEN_ID INT,
@TIP_ID INT,
@GEN_NOM VARCHAR(150),
@GEN_NOM_CORT VARCHAR(50),
@GEN_LLAVE1 VARCHAR(150),
@GEN_LLAVE2 VARCHAR(150),
@GEN_LLAVE3 VARCHAR(150),
@GEN_DESP VARCHAR(250)
AS
BEGIN
	UPDATE [Maestro.Generico] 
	SET
		TIP_ID = @TIP_ID,
		GEN_NOM = @GEN_NOM,
		GEN_NOM_CORT  = @GEN_NOM_CORT,
		GEN_LLAVE1 = @GEN_LLAVE1,
		GEN_LLAVE2 = @GEN_LLAVE2,
		GEN_LLAVE3 = @GEN_LLAVE3,
		GEN_DESP = @GEN_DESP
	WHERE
		GEN_ID = @GEN_ID
END