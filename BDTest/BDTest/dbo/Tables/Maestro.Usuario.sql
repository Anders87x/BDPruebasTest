CREATE TABLE [dbo].[Maestro.Usuario] (
    [USU_ID]         INT           IDENTITY (1, 1) NOT NULL,
    [USU_NOM]        VARCHAR (150) NULL,
    [USU_NOM2]       VARCHAR (150) NULL,
    [USU_PASS]       VARCHAR (150) NULL,
    [USU_EMAIL]      VARCHAR (150) NULL,
    [USU_EMAIL_PASS] VARCHAR (150) NULL,
    [USU_FIRM]       VARCHAR (150) NULL,
    [USU_FOTO]       VARCHAR (150) NULL,
    [USU_SEX]        VARCHAR (150) NULL,
    [EST]            INT           NULL,
    CONSTRAINT [PK_Maestro.Usuario] PRIMARY KEY CLUSTERED ([USU_ID] ASC)
);

