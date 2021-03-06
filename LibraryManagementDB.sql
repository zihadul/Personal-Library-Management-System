USE [master]
GO
/****** Object:  Database [LibraryManagementDB]    Script Date: 06/22/2015 00:50:55 ******/
CREATE DATABASE [LibraryManagementDB] ON  PRIMARY 
( NAME = N'LibraryManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\LibraryManagementDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LibraryManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\LibraryManagementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LibraryManagementDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibraryManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibraryManagementDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [LibraryManagementDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [LibraryManagementDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [LibraryManagementDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [LibraryManagementDB] SET ARITHABORT OFF
GO
ALTER DATABASE [LibraryManagementDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [LibraryManagementDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LibraryManagementDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [LibraryManagementDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [LibraryManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [LibraryManagementDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [LibraryManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [LibraryManagementDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [LibraryManagementDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [LibraryManagementDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [LibraryManagementDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [LibraryManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [LibraryManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [LibraryManagementDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [LibraryManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [LibraryManagementDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [LibraryManagementDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [LibraryManagementDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [LibraryManagementDB] SET  READ_WRITE
GO
ALTER DATABASE [LibraryManagementDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [LibraryManagementDB] SET  MULTI_USER
GO
ALTER DATABASE [LibraryManagementDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [LibraryManagementDB] SET DB_CHAINING OFF
GO
USE [LibraryManagementDB]
GO
/****** Object:  Table [dbo].[BookTBL]    Script Date: 06/22/2015 00:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NOT NULL,
	[Author] [varchar](150) NOT NULL,
	[Publisher] [varchar](150) NOT NULL,
 CONSTRAINT [PK_BookTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookTBL] ON
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (1, N'Java', N'Deitel & Deitel', N'Prentice Hall')
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (2, N'C#', N'Mahbub Hosain', N'Systec publication')
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (3, N'Computer Algorithoms', N'Horowitz', N'Galgotia')
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (4, N'Programming in C', N'Balagurusamy', N'TATA mc. Hall')
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (5, N'Data Structure', N'Lipschutz', N'TATA Mc. Hall')
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (6, N'Data Comunication', N'Devid John', N'TATA Mc Hall')
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (7, N'Sun Java', N'Mahbub', N'Dataset Publication and Co.')
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (8, N'Sun Java-2', N'Mahbub', N'Dataset Publication and Co.')
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (9, N'English To Bangla Dictionary', N'Joy', N'Joy Pablications')
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (10, N'Learn .NET', N'Samit', N'Sytec Pablications')
INSERT [dbo].[BookTBL] ([Id], [Title], [Author], [Publisher]) VALUES (11, N'C and C++', N'Schildt', N'OSBORNE')
SET IDENTITY_INSERT [dbo].[BookTBL] OFF
/****** Object:  Table [dbo].[MemberTBL]    Script Date: 06/22/2015 00:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [varchar](50) NOT NULL,
	[Name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_MemberTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MemberTBL] ON
INSERT [dbo].[MemberTBL] ([Id], [Number], [Name]) VALUES (1, N'101', N'Rajon')
INSERT [dbo].[MemberTBL] ([Id], [Number], [Name]) VALUES (2, N'102', N'Nazrul')
INSERT [dbo].[MemberTBL] ([Id], [Number], [Name]) VALUES (3, N'103', N'Alamgir')
INSERT [dbo].[MemberTBL] ([Id], [Number], [Name]) VALUES (4, N'105', N'Mehedi')
SET IDENTITY_INSERT [dbo].[MemberTBL] OFF
/****** Object:  Table [dbo].[BorrowBookTBL]    Script Date: 06/22/2015 00:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorrowBookTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
 CONSTRAINT [PK_BorrowBookTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BorrowBookTBL] ON
INSERT [dbo].[BorrowBookTBL] ([Id], [BookId], [MemberId]) VALUES (1, 1, 1)
INSERT [dbo].[BorrowBookTBL] ([Id], [BookId], [MemberId]) VALUES (5, 4, 2)
INSERT [dbo].[BorrowBookTBL] ([Id], [BookId], [MemberId]) VALUES (7, 3, 1)
INSERT [dbo].[BorrowBookTBL] ([Id], [BookId], [MemberId]) VALUES (10, 1, 2)
INSERT [dbo].[BorrowBookTBL] ([Id], [BookId], [MemberId]) VALUES (12, 3, 2)
INSERT [dbo].[BorrowBookTBL] ([Id], [BookId], [MemberId]) VALUES (13, 5, 2)
INSERT [dbo].[BorrowBookTBL] ([Id], [BookId], [MemberId]) VALUES (14, 5, 3)
INSERT [dbo].[BorrowBookTBL] ([Id], [BookId], [MemberId]) VALUES (15, 1, 3)
INSERT [dbo].[BorrowBookTBL] ([Id], [BookId], [MemberId]) VALUES (16, 3, 3)
SET IDENTITY_INSERT [dbo].[BorrowBookTBL] OFF
/****** Object:  ForeignKey [FK_BorrowBookTBL_BookTBL]    Script Date: 06/22/2015 00:50:56 ******/
ALTER TABLE [dbo].[BorrowBookTBL]  WITH CHECK ADD  CONSTRAINT [FK_BorrowBookTBL_BookTBL] FOREIGN KEY([BookId])
REFERENCES [dbo].[BookTBL] ([Id])
GO
ALTER TABLE [dbo].[BorrowBookTBL] CHECK CONSTRAINT [FK_BorrowBookTBL_BookTBL]
GO
/****** Object:  ForeignKey [FK_BorrowBookTBL_MemberTBL]    Script Date: 06/22/2015 00:50:56 ******/
ALTER TABLE [dbo].[BorrowBookTBL]  WITH CHECK ADD  CONSTRAINT [FK_BorrowBookTBL_MemberTBL] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberTBL] ([Id])
GO
ALTER TABLE [dbo].[BorrowBookTBL] CHECK CONSTRAINT [FK_BorrowBookTBL_MemberTBL]
GO
