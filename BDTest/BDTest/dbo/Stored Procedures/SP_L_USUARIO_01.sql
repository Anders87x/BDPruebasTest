CREATE PROCEDURE SP_L_USUARIO_01
@USU_NOM VARCHAR(20),
@USU_PASS VARCHAR(20),
@SED_ID INT
AS
BEGIN
SELECT     
	[Maestro.Usuario].USU_ID, [Maestro.Usuario].USU_NOM, [Maestro.Usuario].USU_NOM2, [Maestro.Usuario].USU_PASS, [Maestro.Usuario].USU_EMAIL, [Maestro.Usuario].USU_EMAIL_PASS, 
	[Maestro.Usuario].USU_FIRM, [Maestro.Usuario].USU_FOTO, [Maestro.Usuario].USU_SEX, [Maestro.Sede].EMP_ID, [Maestro.Sede].SED_NOM, [Maestro.Sede].SED_NOM2, 
	[Maestro.Sede].SED_DESC, [Maestro.Empresa].PAI_ID, [Maestro.Empresa].EMP_NOM, [Maestro.Empresa].EMP_NOM2, [Maestro.Empresa].EMP_RUC, [Maestro.Empresa].EMP_LOGO, 
	[Maestro.Empresa].EMP_HEI, [Maestro.Empresa].EMP_WEI, [Maestro.Empresa].EMP_DESC, [Maestro.Pais].PAI_NOM, [Maestro.Pais].PAI_COOR, [Maestro.Pais].PAI_IMG, [Maestro.Pais].PAI_DESC, 
	[Maestro.Sede].SED_ID
FROM         
	[Maestro.Empresa] INNER JOIN
	[Maestro.Sede] ON [Maestro.Empresa].EMP_ID = [Maestro.Sede].EMP_ID INNER JOIN
	[Maestro.Pais] ON [Maestro.Empresa].PAI_ID = [Maestro.Pais].PAI_ID INNER JOIN
	[Maestro.Usuario] INNER JOIN
	[Maestro.SedeUsuario] ON [Maestro.Usuario].USU_ID = [Maestro.SedeUsuario].USU_ID ON [Maestro.Sede].SED_ID = [Maestro.SedeUsuario].SED_ID
WHERE
	[Maestro.Usuario].USU_NOM = @USU_NOM AND
	[Maestro.Usuario].USU_PASS = USU_PASS AND
	[Maestro.Sede].SED_ID = @SED_ID AND
	
	[Maestro.Usuario].EST=1
END