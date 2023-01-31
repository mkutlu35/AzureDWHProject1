USE [WineStoreDW]
GO
/****** Object:  Table [dbo].[ExchangeRates]    Script Date: 9/15/2022 9:22:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeRates](
	[FromCurrency] [nvarchar](10) NULL,
	[ToCurrency] [nvarchar](10) NULL,
	[Date] [datetime] NULL,
	[ExchangeRate] [float] NULL
) ON [PRIMARY]
GO
