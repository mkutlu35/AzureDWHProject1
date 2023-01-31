USE [WineStoreDW]
GO
/****** Object:  Table [dbo].[dimProduct]    Script Date: 9/15/2022 9:22:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimProduct](
	[ProductId] [int] NOT NULL,
	[ProductNo] [nvarchar] (50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](10) NULL,
	[Designation] [nvarchar](50) NULL,
	[Winery] [nchar](255) NULL,
	[Varietal] [nvarchar](50) NULL,
	[Vintage] [smallint] NULL,
	[Score] [smallint] NULL,
	[DealerPrice] [int] NULL,
	[Markup] [float] NULL,
	[ListPrice] [int] NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY]
GO