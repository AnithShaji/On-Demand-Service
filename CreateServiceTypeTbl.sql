USE ServiceWise
GO

/****** Object:  Table [dbo].[ServiceType]    Script Date: 09-05-2018 2.04.37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ServiceType](
	[ServiceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ServiceType] PRIMARY KEY CLUSTERED 
(
	[ServiceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
