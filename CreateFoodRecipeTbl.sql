USE ServiceWise
GO

/****** Object:  Table [dbo].[FoodRecipe]    Script Date: 09-05-2018 2.04.37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FoodRecipe](
	[FoodRecepieID] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Recepie] [nvarchar](max) NULL,
	[FoodType] [nvarchar](max) NULL,
	[EatingTime] [nvarchar](max) NULL,
	[RegionID] [int] NOT NULL DEFAULT ((0)),
	[UserID] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_dbo.FoodRecipe] PRIMARY KEY CLUSTERED 
(
	[FoodRecepieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[FoodRecipe]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FoodRecipe_dbo.Region_RegionID] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([RegionID])
GO

ALTER TABLE [dbo].[FoodRecipe] CHECK CONSTRAINT [FK_dbo.FoodRecipe_dbo.Region_RegionID]
GO

ALTER TABLE [dbo].[FoodRecipe]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FoodRecipe_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO

ALTER TABLE [dbo].[FoodRecipe] CHECK CONSTRAINT [FK_dbo.FoodRecipe_dbo.Users_UserID]
GO