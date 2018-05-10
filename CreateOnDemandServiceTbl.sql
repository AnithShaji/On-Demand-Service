USE ServiceWise
GO

/****** Object:  Table [dbo].[OnDemandService]    Script Date: 09-05-2018 2.04.37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OnDemandService](
	[OnDemandServiceID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](max) NULL,
	[Price] [int] NULL,
	[AvailabilityStatus] bit NULL DEFAULT ((0)),
	[Notes] [nvarchar](max) NULL,
	[Feedback] [nvarchar](max) NULL,
	[ServiceImg] [nvarchar](max) NULL,
	[Rating] [int] NULL,
	[UserID] [int] NOT NULL DEFAULT ((0)),
	[ServiceTypeID] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_dbo.OnDemandService] PRIMARY KEY CLUSTERED 
(
	[OnDemandServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[OnDemandService]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OnDemandService_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO

ALTER TABLE [dbo].[OnDemandService] CHECK CONSTRAINT [FK_dbo.OnDemandService_dbo.Users_UserID]
GO


ALTER TABLE [dbo].[OnDemandService]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OnDemandService_dbo.ServiceType_ServiceTypeID] FOREIGN KEY([ServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ServiceTypeID])
GO

ALTER TABLE [dbo].[OnDemandService] CHECK CONSTRAINT [FK_dbo.OnDemandService_dbo.ServiceType_ServiceTypeID]
GO