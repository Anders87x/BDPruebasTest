CREATE TABLE [dbo].[Maestro.Generico_Detalle] (
    [GEND_ID]   INT           IDENTITY (1, 1) NOT NULL,
    [GEN_ID]    INT           NULL,
    [GEND_NOM]  VARCHAR (150) NULL,
    [GEND_DESC] VARCHAR (250) NULL,
    [EST]       INT           NULL,
    CONSTRAINT [PK_Maestro.Generico_Detalle] PRIMARY KEY CLUSTERED ([GEND_ID] ASC)
);

