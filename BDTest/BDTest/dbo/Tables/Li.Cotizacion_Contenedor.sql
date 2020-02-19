CREATE TABLE [dbo].[Li.Cotizacion_Contenedor] (
    [CTND_ID]   INT IDENTITY (1, 1) NOT NULL,
    [COT_ID]    INT NULL,
    [GEN_ID]    INT NULL,
    [CTND_CANT] INT NULL,
    [EST]       INT NULL,
    CONSTRAINT [PK_Li.Cotizacion_Contenedor] PRIMARY KEY CLUSTERED ([CTND_ID] ASC)
);

