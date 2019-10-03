USE [ProdRubbishRecycling]
GO

/****** Object:  Table [dbo].[BinReplacementUpgrade]    Script Date: 03/10/2019 14:05:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BinReplacementUpgrade](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Reference] [varchar](20) NULL,
	[FullName] [varchar](100) NULL,
	[EmailAddress] [varchar](100) NULL,
	[Telephone] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Postcode] [varchar](8) NULL,
	[Road] [varchar](100) NULL,
	[FirstLineAddress] [varchar](30) NULL,
	[UPRN] [varchar](20) NULL,
	[ReasonApplication] [varchar](50) NULL,
	[ReasonUpgrade] [varchar](50) NULL,
	[SpecifyReason] [varchar](max) NULL,
	[DateResourceController] [varchar](max) NULL,
	[OutcomeRC] [varchar](max) NULL,
	[CaseDueDate] [varchar](max) NULL,
	[TeamAssigned] [varchar](max) NULL,
	[OfficerAssigned] [varchar](max) NULL,
	[BinSize] [varchar](max) NULL,
	[AmountBags] [varchar](max) NULL,
	[CommentsRC] [varchar](max) NULL,
	[ResourceController] [varchar](max) NULL,
	[DateWasteAssessment] [varchar](max) NULL,
	[CustomerQualifies] [varchar](max) NULL,
	[ReasonRejection] [varchar](max) NULL,
	[CommentsWaste] [varchar](max) NULL,
	[WasteOfficer] [varchar](max) NULL,
	[DateBiffa] [varchar](max) NULL,
	[BinDelivered] [varchar](max) NULL,
	[ReasonNotDelivered] [varchar](max) NULL,
	[CommentsBiffa] [varchar](max) NULL,
	[BiffaOfficer] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

