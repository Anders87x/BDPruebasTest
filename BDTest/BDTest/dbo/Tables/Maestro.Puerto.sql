CREATE TABLE [dbo].[Maestro.Puerto] (
    [PUER_ID]   INT           IDENTITY (1, 1) NOT NULL,
    [GEN_ID]    INT           NULL,
    [PUER_NOM]  VARCHAR (250) NULL,
    [PUER_DESC] VARCHAR (250) NULL,
    [EST]       INT           NULL,
    CONSTRAINT [PK_Maestro.Puerto] PRIMARY KEY CLUSTERED ([PUER_ID] ASC)
);

