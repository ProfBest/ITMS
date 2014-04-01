CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [LastName] VARCHAR(255) NULL, 
    [FirstName] VARCHAR(255) NULL, 
    [Filetype1] VARCHAR(255) NULL, 
    [FileType2] VARCHAR(255) NULL
)

	Use Master
	Go 
	IF EXISTS (SELECT name FROM sys.databases WHERE name = N'fileUpload')
	DROP DATABASE Fileupload
	GO

	USE [fileuploaddb]
	GO

	CREATE DATABASE [FileuploadDB] ON PRIMARY
	( NAME = N'Fileupload', FILENAME = N'D:\Fileupload.mdf',
	SIZE = 10MB, MAXSIZE = UNLIMITED, FILEGROWTH = 10% )
	LOG ON
	( NAME = N'FILEUPLOAD', FILENAME = N'D:\FILEUPLOAD\FILEUPLOAD_log.ldf',
	SIZE = 10MB, MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
	GO

	ALTER DATABASE [FileuploadDB]
	ADD FILEGROUP [FilestreamGroup] CONTAINS FILESTREAM
	GO

