USE ServiceWise
GO

/****** Object:  Table [dbo].[Accomodation]    Script Date: 09-05-2018 2.04.37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Accomodation](
	[AccomodationID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](max) NULL,
	[Price] [int] NULL,
	[SharingStatus] bit NULL DEFAULT ((0)),
	[AvailabilityStatus] bit NULL DEFAULT ((0)),
	[FurnishStatus] bit NULL DEFAULT ((0)),
	[AccomodationImg] [nvarchar](max) NULL,
	[RoomCount] [int] NULL,
	[UserID] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_dbo.Accomodation] PRIMARY KEY CLUSTERED 
(
	[AccomodationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Accomodation]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accomodation_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO

ALTER TABLE [dbo].[Accomodation] CHECK CONSTRAINT [FK_dbo.Accomodation_dbo.Users_UserID]
GO