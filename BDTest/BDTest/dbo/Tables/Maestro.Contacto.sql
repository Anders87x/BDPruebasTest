CREATE TABLE [dbo].[Maestro.Contacto] (
    [CONT_ID]    INT           IDENTITY (1, 1) NOT NULL,
    [ENTC_ID]    INT           NULL,
    [CONT_NOM]   VARCHAR (150) NULL,
    [CONT_CARG]  VARCHAR (150) NULL,
    [CONT_EMAIL] VARCHAR (150) NULL,
    [CONT_TELF1] VARCHAR (10)  NULL,
    [CONT_TELF2] VARCHAR (10)  NULL,
    [CONT_CEL1]  VARCHAR (10)  NULL,
    [CONT_CEL2]  VARCHAR (10)  NULL,
    [CONT_DESC]  VARCHAR (250) NULL,
    [EST]        INT           NULL,
    CONSTRAINT [PK_Maestro.Contacto] PRIMARY KEY CLUSTERED ([CONT_ID] ASC),
    CONSTRAINT [FK_Maestro.Contacto_Maestro.EntidadCabezera] FOREIGN KEY ([ENTC_ID]) REFERENCES [dbo].[Maestro.EntidadCabezera] ([ENTC_ID])
);

