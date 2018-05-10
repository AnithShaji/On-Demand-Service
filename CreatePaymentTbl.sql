USE ServiceWise
GO

/****** Object:  Table [dbo].[Payment]    Script Date: 09-05-2018 2.04.37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NULL,
	[Status] bit NULL DEFAULT ((0)),
	[UserID] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_dbo.Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Payment_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO

ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_dbo.Payment_dbo.Users_UserID]
GO