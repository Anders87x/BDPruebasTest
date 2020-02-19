CREATE PROCEDURE SP_L_GENERICODETALLE_01
@GEN_ID INT
AS
BEGIN
	SELECT     
		[Maestro.Generico_Detalle].GEND_ID, 
		[Maestro.Generico_Detalle].GEND_NOM, 
		[Maestro.Generico_Detalle].GEND_DESC, 
		[Maestro.Generico].GEN_ID, 
		[Maestro.Generico].GEN_NOM, 
		[Maestro.Generico].GEN_NOM_CORT, 
		[Maestro.Tipo].TIP_ID, 
		[Maestro.Tipo].TIP_NOM, 
		[Maestro.Tipo].TIP_NOM_CORT, 
		[Maestro.Tipo].TIP_DESP
	FROM         
		[Maestro.Generico_Detalle] INNER JOIN
		[Maestro.Generico] ON [Maestro.Generico_Detalle].GEN_ID = [Maestro.Generico].GEN_ID INNER JOIN
		[Maestro.Tipo] ON [Maestro.Generico].TIP_ID = [Maestro.Tipo].TIP_ID
	WHERE
		[Maestro.Generico].GEN_ID = @GEN_ID AND
		[Maestro.Generico_Detalle].EST = 1
END