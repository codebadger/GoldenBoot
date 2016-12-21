USE [master]
GO
/****** Object:  Database [GoldenBoot]    Script Date: 11/6/16 8:42:59 PM ******/
CREATE DATABASE [GoldenBoot]
GO
ALTER DATABASE [GoldenBoot] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GoldenBoot].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GoldenBoot] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GoldenBoot] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GoldenBoot] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GoldenBoot] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GoldenBoot] SET ARITHABORT OFF 
GO
ALTER DATABASE [GoldenBoot] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GoldenBoot] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GoldenBoot] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GoldenBoot] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GoldenBoot] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GoldenBoot] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GoldenBoot] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GoldenBoot] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GoldenBoot] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GoldenBoot] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GoldenBoot] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [GoldenBoot] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GoldenBoot] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [GoldenBoot] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GoldenBoot] SET  MULTI_USER 
GO
ALTER DATABASE [GoldenBoot] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GoldenBoot] SET QUERY_STORE = OFF
GO
USE [GoldenBoot]
GO
/****** Object:  Table [dbo].[Competition]    Script Date: 11/6/16 8:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Competition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Player]    Script Date: 11/6/16 8:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Club] [nvarchar](50) NOT NULL,
	[Goals] [int] NOT NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET IDENTITY_INSERT [dbo].[Competition] ON 

GO
INSERT [dbo].[Competition] ([Id], [Code], [Name]) VALUES (1, N'copa2016', N'2016 Copa América Centenario')
GO
INSERT [dbo].[Competition] ([Id], [Code], [Name]) VALUES (2, N'epl2016', N'2016/2017 Barclay''s Premier League')
GO
SET IDENTITY_INSERT [dbo].[Competition] OFF
GO
SET IDENTITY_INSERT [dbo].[Player] ON 

GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (1, 1, N'Lionel Messi', N'Argentina', N'Barcelona', 5)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (2, 1, N'Clint Dempsey', N'USA', N'Seattle Sounders', 3)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (3, 1, N'Eduardo Vargas', N'Chile', N'1899 Hoffenheim', 6)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (5, 1, N'Gonzalo Higuain', N'Argentina', N'Juventus', 4)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (6, 1, N'Alexis Sanchez', N'Chile', N'Arsenal', 3)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (7, 2, N'Sergio Agero', N'Argentina', N'Manchester City', 5)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (8, 2, N'Zlatan Ibrahimovic', N'Sweden', N'Manchester United', 4)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (10, 2, N'Diego Costa', N'Spain', N'Chelsea', 5)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (11, 2, N'Raheem Sterling', N'England', N'Manchester City', 4)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (12, 2, N'Michail Antonio', N'England', N'West Ham', 5)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (13, 2, N'Alexi Sanchez', N'Chile', N'Arsenal', 4)
GO
INSERT [dbo].[Player] ([Id], [CompetitionId], [Name], [Country], [Club], [Goals]) VALUES (15, 2, N'Son Heung-min', N'South Korea', N'Tottenham', 4)
GO
SET IDENTITY_INSERT [dbo].[Player] OFF
GO
ALTER TABLE [dbo].[Competition]  WITH CHECK ADD  CONSTRAINT [FK_Competition_Competition] FOREIGN KEY([Id])
REFERENCES [dbo].[Competition] ([Id])
GO
ALTER TABLE [dbo].[Competition] CHECK CONSTRAINT [FK_Competition_Competition]
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [FK_Player_Competition] FOREIGN KEY([CompetitionId])
REFERENCES [dbo].[Competition] ([Id])
GO
ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [FK_Player_Competition]
GO
USE [master]
GO
ALTER DATABASE [GoldenBoot] SET  READ_WRITE 
GO
