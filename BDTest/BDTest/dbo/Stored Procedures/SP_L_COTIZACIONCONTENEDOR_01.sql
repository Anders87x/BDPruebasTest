CREATE PROCEDURE SP_L_COTIZACIONCONTENEDOR_01
@COT_ID INT
AS
BEGIN
	SELECT     
		[Li.Cotizacion_Contenedor].CTND_ID, 
		[Li.Cotizacion_Contenedor].COT_ID, 
		[Li.Cotizacion_Contenedor].GEN_ID, 
		[Li.Cotizacion_Contenedor].CTND_CANT, 
		[Li.Cotizacion_Contenedor].EST, 
		[Maestro.Generico].GEN_NOM, 
		[Maestro.Generico].GEN_NOM_CORT
	FROM         
		[Li.Cotizacion_Contenedor] INNER JOIN
		[Maestro.Generico] ON [Li.Cotizacion_Contenedor].GEN_ID = [Maestro.Generico].GEN_ID
	WHERE
		[Li.Cotizacion_Contenedor].COT_ID = @COT_ID AND
		[Li.Cotizacion_Contenedor].EST = 1
END