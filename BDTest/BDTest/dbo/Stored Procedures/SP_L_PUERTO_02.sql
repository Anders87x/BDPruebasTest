﻿CREATE PROCEDURE SP_L_PUERTO_02  
@PUER_ID INT  
AS  
BEGIN  
 SELECT * FROM [Maestro.Puerto]  
 WHERE  
 PUER_ID = @PUER_ID  
END