﻿CREATE PROCEDURE SP_U_COTIZACION_01
@COT_ID INT,
@USU_ID INT,
@SED_ID INT,
@CLI_ID INT,
@CONT_ID INT,
@CONT_ID_SECUN VARCHAR(150),
@TIP_ID INT,
@INCO_ID INT,
@COND_ID INT,
@NTC_ID INT,
@IMO_ID INT,
@COT_REF_INT VARCHAR(250),
@COT_REF_CLI VARCHAR(250)
AS
BEGIN
	UPDATE [Li.Cotizacion]
	SET
		USU_ID = @USU_ID,
		SED_ID = @SED_ID,
		CLI_ID = @CLI_ID,
		CONT_ID = @CONT_ID,
		CONT_ID_SECUN = @CONT_ID_SECUN,
		TIP_ID = @TIP_ID,
		INCO_ID = @INCO_ID,
		COND_ID = @COND_ID,
		NTC_ID = @NTC_ID,
		IMO_ID = @IMO_ID,
		COT_ASUN = (SELECT COT_ASUN FROM [Maestro.SedeTipo] WHERE SED_ID=@SED_ID AND TIP_ID=@TIP_ID AND EST=1),
		COT_CONT_CORREO = (SELECT COT_CONT_CORREO FROM [Maestro.SedeTipo] WHERE SED_ID=@SED_ID AND TIP_ID=@TIP_ID AND EST=1),
		COT_SERV_INCLU = (SELECT COT_SERV_INCLU FROM [Maestro.SedeTipo] WHERE SED_ID=@SED_ID AND TIP_ID=@TIP_ID AND EST=1),
		COT_SERV_NOINCLU = (SELECT COT_SERV_NOINCLU FROM [Maestro.SedeTipo] WHERE SED_ID=@SED_ID AND TIP_ID=@TIP_ID AND EST=1),
		COT_CONSIDE = (SELECT COT_CONSIDE FROM [Maestro.SedeTipo] WHERE SED_ID=@SED_ID AND TIP_ID=@TIP_ID AND EST=1),
		COT_REF_INT = @COT_REF_INT,
		COT_REF_CLI = @COT_REF_CLI
	WHERE
		COT_ID = @COT_ID
END