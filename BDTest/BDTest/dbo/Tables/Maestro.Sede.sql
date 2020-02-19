CREATE TABLE [dbo].[Maestro.Sede] (
    [SED_ID]   INT           IDENTITY (1, 1) NOT NULL,
    [EMP_ID]   INT           NULL,
    [SED_NOM]  VARCHAR (150) NULL,
    [SED_NOM2] VARCHAR (50)  NULL,
    [SED_DESC] VARCHAR (250) NULL,
    [EST]      INT           NULL,
    CONSTRAINT [PK_Maestro.Sede] PRIMARY KEY CLUSTERED ([SED_ID] ASC)
);

