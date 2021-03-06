USE [DVD_Shop_DB]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 07/11/2016 23:51:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Mobile] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[isAdmin] [int] NOT NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Request]    Script Date: 07/11/2016 23:51:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Request](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[RequestBy] [nchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_MovieList]    Script Date: 07/11/2016 23:51:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MovieList](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](50) NOT NULL,
	[MovieDirector] [varchar](50) NOT NULL,
	[MovieActor] [varchar](50) NOT NULL,
	[MovieActress] [varchar](50) NOT NULL,
	[MovieYear] [varchar](50) NOT NULL,
	[MovieGenre] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
