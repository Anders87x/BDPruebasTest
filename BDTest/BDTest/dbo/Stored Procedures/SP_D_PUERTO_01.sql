﻿CREATE PROCEDURE SP_D_PUERTO_01  
@PUER_ID INT  
AS  
BEGIN  
 UPDATE [Maestro.Puerto]   
 SET  
  EST = 0  
 WHERE  
  PUER_ID = @PUER_ID  
END