CREATE PROCEDURE [dbo].[SP_L_ROL_02]
@ENTC_ID INT
AS
BEGIN
	SELECT      
		[Maestro.Rol].ROL_ID,
		[Maestro.Rol].ROL_NOM,
		[Maestro.EntidadRol].ENTC_ID
	FROM         
		[Maestro.Rol] INNER JOIN
		[Maestro.EntidadRol] ON [Maestro.Rol].ROL_ID = [Maestro.EntidadRol].ROL_ID
	WHERE 
		[Maestro.EntidadRol].ENTC_ID = @ENTC_ID AND
		[Maestro.EntidadRol].EST=1
	UNION
	SELECT ROL_ID,ROL_NOM,'' FROM [Maestro.Rol] WHERE ROL_ID NOT IN (SELECT ROL_ID FROM [Maestro.EntidadRol] WHERE ENTC_ID = @ENTC_ID AND [Maestro.EntidadRol].EST=1)
END