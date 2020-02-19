CREATE TABLE [dbo].[Maestro.SedeTipo] (
    [TIPSE_ID]         INT           IDENTITY (1, 1) NOT NULL,
    [SED_ID]           INT           NULL,
    [TIP_ID]           INT           NULL,
    [COT_ASUN]         VARCHAR (MAX) NULL,
    [COT_CONT_CORREO]  VARCHAR (MAX) NULL,
    [COT_SERV_INCLU]   VARCHAR (MAX) NULL,
    [COT_SERV_NOINCLU] VARCHAR (MAX) NULL,
    [COT_CONSIDE]      VARCHAR (MAX) NULL,
    [EST]              INT           NULL,
    CONSTRAINT [PK_Maestro.SedeTipo] PRIMARY KEY CLUSTERED ([TIPSE_ID] ASC)
);

