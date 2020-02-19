CREATE PROCEDURE SP_L_ENTIDADCABEZERA_03
@ROL_NOM_CORT VARCHAR(50),
@SED_ID INT
AS
BEGIN
	SELECT     
		[Maestro.EntidadCabezera].ENTC_ID, 
		[Maestro.EntidadCabezera].GEN_ID, 
		[Maestro.EntidadCabezera].ENTC_RAZSOC, 
		[Maestro.EntidadCabezera].ENTC_RUC, 
		[Maestro.EntidadCabezera].ENTC_DESC, 
		[Maestro.EntidadCabezera].ENTC_TELF1, 
		[Maestro.EntidadCabezera].ENTC_TELF2, 
		[Maestro.EntidadCabezera].ENTC_DIREC, 
		[Maestro.Rol].ROL_NOM,
		[Maestro.Rol].ROL_ID,
		[Maestro.EntidadRol].SED_ID
	FROM         
		[Maestro.EntidadCabezera] INNER JOIN
		[Maestro.EntidadRol] ON [Maestro.EntidadCabezera].ENTC_ID = [Maestro.EntidadRol].ENTC_ID INNER JOIN
		[Maestro.Rol] ON [Maestro.EntidadRol].ROL_ID = [Maestro.Rol].ROL_ID
	WHERE
		[Maestro.Rol].ROL_NOM_CORT = LTRIM(RTRIM(@ROL_NOM_CORT)) AND
		[Maestro.EntidadRol].SED_ID = @SED_ID AND 
		[Maestro.EntidadCabezera].EST = 1
END