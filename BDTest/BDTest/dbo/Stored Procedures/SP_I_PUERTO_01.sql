﻿CREATE PROCEDURE [dbo].[SP_I_PUERTO_01]  
@GEN_ID INT,  
@PUER_NOM VARCHAR(150),  
@PUER_DESC VARCHAR(250)  
AS  
BEGIN  
 INSERT INTO [Maestro.Puerto]   
 VALUES   
 (  
  @GEN_ID,  
  UPPER(@PUER_NOM),  
  UPPER(@PUER_DESC),  
  1  
 )  
END