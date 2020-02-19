﻿CREATE PROCEDURE SP_U_CONTACTO_01
@CONT_ID INT,
@ENTC_ID INT,
@CONT_NOM VARCHAR(150),
@CONT_CARG VARCHAR(120),
@CONT_EMAIL VARCHAR(150),
@CONT_TELF1 VARCHAR(20),
@CONT_TELF2 VARCHAR(20),
@CONT_CEL1 VARCHAR(20),
@CONT_CEL2 VARCHAR(20),
@CONT_DESC VARCHAR(250)
AS
BEGIN
	UPDATE [Maestro.Contacto]
		SET
			CONT_NOM = @CONT_NOM,
			CONT_CARG = @CONT_CARG,
			CONT_EMAIL = @CONT_EMAIL,
			CONT_TELF1 = @CONT_TELF1,
			CONT_TELF2 = @CONT_TELF2,
			CONT_CEL1 = @CONT_CEL1,
			CONT_CEL2 = @CONT_CEL2,
			CONT_DESC = @CONT_DESC
		WHERE
			CONT_ID = @CONT_ID
END