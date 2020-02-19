CREATE PROCEDURE SP_L_CONTACTO_02
@CONT_ID INT
AS
BEGIN
	SELECT     
		[Maestro.Contacto].CONT_ID, 
		[Maestro.Contacto].ENTC_ID, 
		[Maestro.Contacto].CONT_NOM, 
		[Maestro.Contacto].CONT_CARG, 
		[Maestro.Contacto].CONT_EMAIL, 
		[Maestro.Contacto].CONT_TELF1, 
		[Maestro.Contacto].CONT_TELF2, 
		[Maestro.Contacto].CONT_CEL1, 
		[Maestro.Contacto].CONT_CEL2, 
		[Maestro.Contacto].CONT_DESC, 
		[Maestro.EntidadCabezera].ENTC_RAZSOC, 
		[Maestro.EntidadCabezera].ENTC_RUC
	FROM         
		[Maestro.EntidadCabezera] INNER JOIN
		[Maestro.Contacto] ON [Maestro.EntidadCabezera].ENTC_ID = [Maestro.Contacto].ENTC_ID
	WHERE
		[Maestro.Contacto].CONT_ID = @CONT_ID
END