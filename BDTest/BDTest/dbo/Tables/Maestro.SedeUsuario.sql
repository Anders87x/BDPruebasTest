CREATE TABLE [dbo].[Maestro.SedeUsuario] (
    [SEDUSU_ID] INT IDENTITY (1, 1) NOT NULL,
    [SED_ID]    INT NULL,
    [USU_ID]    INT NULL,
    [EST]       INT NULL,
    CONSTRAINT [PK_Maestro.SedeUsuario] PRIMARY KEY CLUSTERED ([SEDUSU_ID] ASC)
);

