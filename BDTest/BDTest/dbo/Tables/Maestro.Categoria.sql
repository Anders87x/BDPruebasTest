CREATE TABLE [dbo].[Maestro.Categoria] (
    [CAT_ID]        INT           IDENTITY (1, 1) NOT NULL,
    [CAT_NOM]       VARCHAR (150) NULL,
    [CAT_NOM_COMER] VARCHAR (150) NULL,
    [CAT_DESP]      VARCHAR (255) NULL,
    [EST]           INT           NULL,
    CONSTRAINT [PK_TM_CATEGORIA] PRIMARY KEY CLUSTERED ([CAT_ID] ASC)
);

