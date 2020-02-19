CREATE TABLE [dbo].[Maestro.Servicio] (
    [SERV_ID]        INT           IDENTITY (1, 1) NOT NULL,
    [SERV_NOM]       VARCHAR (150) NULL,
    [SERV_NOM_COMER] VARCHAR (250) NULL,
    [SERV_DESP]      VARCHAR (250) NULL,
    [EST]            INT           NULL,
    CONSTRAINT [PK_Maestro.Servicio] PRIMARY KEY CLUSTERED ([SERV_ID] ASC)
);

