USE [Food_Inspection]
GO

/****** Object:  Table [dbo].[stg_Chicago_Inspection_normalized]    Script Date: 2/23/2024 8:57:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_Chicago_Inspection_normalized](
	[Violation_Code] [varchar](10) NULL,
	[Violation_Description] [varchar](8000) NULL,
	[Violation_Comments] [varchar](6000) NULL,
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
	[Latitude] [real] NULL,
	[Longitude] [real] NULL,
	[Location] [varchar](40) NULL,
	[Violation_Score] [int] NULL,
	[Risk_Score] [int] NULL,
	[Result_Score] [int] NULL,
	[Total_Violation_Score] [int] NULL,
	[Inspection_Result] [varchar](50) NULL,
	[DI_WorkflowFileName] [varchar](255) NULL,
	[DI_CreatedDate] [datetime] NULL
) ON [PRIMARY]
GO


