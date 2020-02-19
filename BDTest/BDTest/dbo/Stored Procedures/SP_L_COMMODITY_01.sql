CREATE PROCEDURE SP_L_COMMODITY_01 
@GEN_ID INT   
AS    
BEGIN    
SELECT     
	[Maestro.Commodity].COMM_ID, 
	[Maestro.Commodity].GEN_ID, 
	[Maestro.Commodity].COMM_NOM, 
	[Maestro.Commodity].COMM_DESC, 
	[Maestro.Generico].GEN_NOM, 
    [Maestro.Generico].GEN_NOM_CORT
FROM         
	[Maestro.Commodity] INNER JOIN
    [Maestro.Generico] ON [Maestro.Commodity].GEN_ID = [Maestro.Generico].GEN_ID
WHERE
	[Maestro.Commodity].GEN_ID=@GEN_ID AND
	[Maestro.Commodity].EST = 1
END