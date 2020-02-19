CREATE TABLE [dbo].[Li.Cotizacion] (
    [COT_ID]           INT           IDENTITY (1, 1) NOT NULL,
    [USU_ID]           INT           NULL,
    [SED_ID]           INT           NULL,
    [CLI_ID]           INT           NULL,
    [CONT_ID]          INT           NULL,
    [CONT_ID_SECUN]    VARCHAR (150) NULL,
    [TIP_ID]           INT           NULL,
    [INCO_ID]          INT           NULL,
    [COND_ID]          INT           NULL,
    [NTC_ID]           INT           NULL,
    [IMO_ID]           INT           NULL,
    [COT_ASUN]         VARCHAR (250) NULL,
    [COT_CONT_CORREO]  VARCHAR (500) NULL,
    [COT_SERV_INCLU]   VARCHAR (500) NULL,
    [COT_SERV_NOINCLU] VARCHAR (500) NULL,
    [COT_CONSIDE]      VARCHAR (750) NULL,
    [COT_REF_INT]      VARCHAR (250) NULL,
    [COT_REF_CLI]      VARCHAR (250) NULL,
    [EST]              INT           NULL,
    CONSTRAINT [PK_Li.Cotizacion] PRIMARY KEY CLUSTERED ([COT_ID] ASC)
);

