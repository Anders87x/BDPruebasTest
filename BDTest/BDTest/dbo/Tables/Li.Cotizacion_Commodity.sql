CREATE TABLE [dbo].[Li.Cotizacion_Commodity] (
    [COMMD_ID]    INT             IDENTITY (1, 1) NOT NULL,
    [COT_ID]      INT             NULL,
    [COMM_ID]     INT             NULL,
    [COMM_BULTOS] INT             NULL,
    [UND_ID]      INT             NULL,
    [COMM_PESO]   NUMERIC (18, 2) NULL,
    [COMM_ALTO]   NUMERIC (18, 2) NULL,
    [COMM_ANCHO]  NUMERIC (18, 2) NULL,
    [COMM_LARGO]  NUMERIC (18, 2) NULL,
    [COMM_TOTAL]  NUMERIC (18, 2) NULL,
    [EST]         INT             NULL,
    CONSTRAINT [PK_Li.Cotizacion_Commodity] PRIMARY KEY CLUSTERED ([COMMD_ID] ASC)
);

