CREATE TABLE [dbo].[Maestro.EntidadRol] (
    [ENTR_ID] INT IDENTITY (1, 1) NOT NULL,
    [ENTC_ID] INT NULL,
    [ROL_ID]  INT NULL,
    [SED_ID]  INT NULL,
    [EST]     INT NULL,
    CONSTRAINT [PK_Maestro.EntidadRoles] PRIMARY KEY CLUSTERED ([ENTR_ID] ASC),
    CONSTRAINT [FK_Maestro.EntidadRoles_Maestro.EntidadCabezera] FOREIGN KEY ([ENTC_ID]) REFERENCES [dbo].[Maestro.EntidadCabezera] ([ENTC_ID]),
    CONSTRAINT [FK_Maestro.EntidadRoles_Maestro.Roles] FOREIGN KEY ([ROL_ID]) REFERENCES [dbo].[Maestro.Rol] ([ROL_ID])
);

