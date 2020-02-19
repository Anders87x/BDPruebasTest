CREATE TABLE [dbo].[Maestro.Tipo] (
    [TIP_ID]       INT           IDENTITY (1, 1) NOT NULL,
    [TIP_NOM]      VARCHAR (150) NULL,
    [TIP_NOM_CORT] VARCHAR (50)  NULL,
    [TIP_DESP]     VARCHAR (250) NULL,
    [EST]          INT           NULL,
    CONSTRAINT [PK_Maestro.Tipo] PRIMARY KEY CLUSTERED ([TIP_ID] ASC)
);

