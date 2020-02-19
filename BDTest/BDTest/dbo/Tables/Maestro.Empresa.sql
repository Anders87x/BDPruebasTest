CREATE TABLE [dbo].[Maestro.Empresa] (
    [EMP_ID]   INT           IDENTITY (1, 1) NOT NULL,
    [PAI_ID]   INT           NULL,
    [EMP_NOM]  VARCHAR (150) NULL,
    [EMP_NOM2] VARCHAR (150) NULL,
    [EMP_RUC]  VARCHAR (20)  NULL,
    [EMP_LOGO] VARCHAR (150) NULL,
    [EMP_HEI]  INT           NULL,
    [EMP_WEI]  INT           NULL,
    [EMP_DESC] VARCHAR (250) NULL,
    [EST]      INT           NULL,
    CONSTRAINT [PK_Maestro.Empresa] PRIMARY KEY CLUSTERED ([EMP_ID] ASC)
);

