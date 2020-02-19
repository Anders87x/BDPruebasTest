CREATE PROCEDURE SP_L_GENERICO_04
@TIP_NOM_CORT VARCHAR(10)
AS
BEGIN
	SELECT     
		[Maestro.Generico].GEN_ID, [Maestro.Generico].GEN_NOM, [Maestro.Generico].GEN_NOM_CORT, 
		[Maestro.Generico].GEN_LLAVE1, [Maestro.Generico].GEN_LLAVE2, 
		[Maestro.Generico].GEN_LLAVE3, [Maestro.Generico].GEN_DESP, 
		[Maestro.Tipo].TIP_ID, [Maestro.Tipo].TIP_NOM, 
		[Maestro.Tipo].TIP_NOM_CORT, [Maestro.Tipo].TIP_DESP
	FROM         
		[Maestro.Generico] INNER JOIN
		[Maestro.Tipo] ON [Maestro.Generico].TIP_ID = [Maestro.Tipo].TIP_ID
	WHERE
		[Maestro.Generico].EST=1 AND
		[Maestro.Tipo].TIP_NOM_CORT = @TIP_NOM_CORT
END