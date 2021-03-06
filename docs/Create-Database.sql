USE [GoldenBoot]
GO
/****** Object:  Table [dbo].[Competition]    Script Date: 3/14/2017 1:26:49 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Player]    Script Date: 3/14/2017 1:26:49 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Competition] ON 

GO
INSERT [dbo].[Competition] ([Id], [Code], [Name]) VALUES (1, N'copa-2016', N'2016 Copa América Centenario')
GO
INSERT [dbo].[Competition] ([Id], [Code], [Name]) VALUES (2, N'epl-2016-2017', N'2016/2017 Barclay''s Premier League')
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
