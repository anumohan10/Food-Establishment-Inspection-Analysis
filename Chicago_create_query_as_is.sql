USE [Food_Inspection]
GO

/****** Object:  Table [dbo].[stg_Chicago_Inspection]    Script Date: 2/24/2024 12:41:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_Chicago_Inspection](
	[Inspection_ID] [int] NULL,
	[DBA_Name] [varchar](100) NULL,
	[AKA_Name] [varchar](100) NULL,
	[License] [int] NULL,
	[Facility_Type] [varchar](100) NULL,
	[Risk] [varchar](15) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip] [int] NULL,
	[Inspection_Date] [datetime] NULL,
	[Inspection_Type] [varchar](50) NULL,
	[Results] [varchar](50) NULL,
	[Violations] [varchar](max) NULL,
	[Latitude] [varchar](20) NULL,
	[Longitude] [varchar](20) NULL,
	[Location] [varchar](40) NULL,
	[DI_WorkflowFileName] [varchar](255) NULL,
	[DI_CreatedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


