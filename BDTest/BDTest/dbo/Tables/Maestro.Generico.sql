CREATE TABLE [dbo].[Maestro.Generico] (
    [GEN_ID]       INT           IDENTITY (1, 1) NOT NULL,
    [TIP_ID]       INT           NULL,
    [GEN_NOM]      VARCHAR (250) NULL,
    [GEN_NOM_CORT] VARCHAR (50)  NULL,
    [GEN_LLAVE1]   VARCHAR (150) NULL,
    [GEN_LLAVE2]   VARCHAR (150) NULL,
    [GEN_LLAVE3]   VARCHAR (150) NULL,
    [GEN_DESP]     VARCHAR (250) NULL,
    [EST]          INT           NULL,
    CONSTRAINT [PK_Maestro.Generico] PRIMARY KEY CLUSTERED ([GEN_ID] ASC),
    CONSTRAINT [FK_Maestro.Generico_Maestro.Tipo] FOREIGN KEY ([TIP_ID]) REFERENCES [dbo].[Maestro.Tipo] ([TIP_ID])
);

