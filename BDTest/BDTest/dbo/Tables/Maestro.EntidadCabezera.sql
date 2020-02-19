CREATE TABLE [dbo].[Maestro.EntidadCabezera] (
    [ENTC_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [GEN_ID]      INT           NULL,
    [ENTC_RAZSOC] VARCHAR (150) NULL,
    [ENTC_RUC]    VARCHAR (12)  NULL,
    [ENTC_DESC]   VARCHAR (255) NULL,
    [ENTC_TELF1]  VARCHAR (10)  NULL,
    [ENTC_TELF2]  VARCHAR (10)  NULL,
    [ENTC_DIREC]  VARCHAR (250) NULL,
    [EST]         INT           NULL,
    CONSTRAINT [PK_Maestro.EntidadCabezera] PRIMARY KEY CLUSTERED ([ENTC_ID] ASC)
);

