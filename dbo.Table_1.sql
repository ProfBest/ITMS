CREATE TABLE [dbo].[Table] (
    [Id]         INT           NOT NULL,
    [Name]       NVARCHAR(MAX) NULL,
    [Filename]   VARCHAR (MAX) NULL,
    [Filesize]   INT           NULL,
    [attachment] VARBINARY(MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

