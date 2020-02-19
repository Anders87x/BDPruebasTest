CREATE TABLE [dbo].[Maestro.Commodity] (
    [COMM_ID]   INT           IDENTITY (1, 1) NOT NULL,
    [GEN_ID]    INT           NULL,
    [COMM_NOM]  VARCHAR (150) NULL,
    [COMM_DESC] VARCHAR (150) NULL,
    [EST]       INT           NULL,
    CONSTRAINT [PK_Maestro.Commodity] PRIMARY KEY CLUSTERED ([COMM_ID] ASC)
);

