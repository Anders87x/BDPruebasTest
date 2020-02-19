CREATE PROCEDURE SP_L_ENTIDADCABEZERA_01    
AS    
BEGIN    
	SELECT     
		[Maestro.EntidadCabezera].ENTC_ID, 
		[Maestro.EntidadCabezera].ENTC_RAZSOC, 
		[Maestro.EntidadCabezera].ENTC_RUC, 
		[Maestro.EntidadCabezera].ENTC_DESC, 
		[Maestro.EntidadCabezera].ENTC_TELF1, 
		[Maestro.EntidadCabezera].ENTC_TELF2, 
		[Maestro.EntidadCabezera].ENTC_DIREC, 
		[Maestro.Generico].GEN_NOM, 
		[Maestro.Generico].GEN_NOM_CORT
	FROM         
		[Maestro.EntidadCabezera] INNER JOIN
		[Maestro.Generico] ON [Maestro.EntidadCabezera].GEN_ID = [Maestro.Generico].GEN_ID
	WHERE     
		[Maestro.EntidadCabezera].EST = 1
END