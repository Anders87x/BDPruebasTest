
CREATE PROCEDURE SP_L_PUERTO_01   
@GEN_ID INT     
AS      
BEGIN      
SELECT       
 [Maestro.Puerto].PUER_ID,   
 [Maestro.Puerto].GEN_ID,   
 [Maestro.Puerto].PUER_NOM,   
 [Maestro.Puerto].PUER_DESC,   
 [Maestro.Generico].GEN_NOM,   
 [Maestro.Generico].GEN_NOM_CORT  
FROM           
 [Maestro.Puerto] INNER JOIN  
    [Maestro.Generico] ON [Maestro.Puerto].GEN_ID = [Maestro.Generico].GEN_ID  
WHERE  
 [Maestro.Puerto].GEN_ID=@GEN_ID AND  
 [Maestro.Puerto].EST = 1  
END