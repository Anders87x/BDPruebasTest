CREATE TABLE [dbo].[Maestro.Rol] (
    [ROL_ID]       INT           IDENTITY (1, 1) NOT NULL,
    [ROL_NOM]      VARCHAR (150) NULL,
    [ROL_NOM_CORT] VARCHAR (50)  NULL,
    [ROL_DESC]     VARCHAR (250) NULL,
    [EST]          INT           NULL,
    CONSTRAINT [PK_Maestro.Roles] PRIMARY KEY CLUSTERED ([ROL_ID] ASC)
);

