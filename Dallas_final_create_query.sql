USE [Food_Inspection]
GO

/****** Object:  Table [dbo].[stg_Dallas_Inspection_normalized]    Script Date: 2/24/2024 5:02:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_Dallas_Inspection_normalized](
	[Inspection_ID] [int] NOT NULL,
	[License] [int] NOT NULL,
	[Restaurant_Name] [varchar](500) NULL,
	[AKA_Name] [varchar](500) NULL,
	[Inspection_Date_new] [datetime] NULL,
	[Inspection_Type_new] [varchar](100) NULL,
	[Inspection_Score_new] [int] NULL,
	[Street_Number] [int] NULL,
	[Street_Name] [varchar](100) NULL,
	[Street_Direction_new] [varchar](2) NULL,
	[Street_Type_new] [varchar](4) NULL,
	[Street_Unit_new] [varchar](5) NULL,
	[Street_Address] [varchar](400) NULL,
	[Zip_Code] [int] NULL,
	[Latitude] [real] NULL,
	[Longitude] [real] NULL,
	[Inspection_Month_new] [varchar](8) NULL,
	[Inspection_Month_Year_new] [int] NULL,
	[Inspection_Year_new] [int] NULL,
	[Violation_Code] [int] NULL,
	[Violation_Description] [varchar](4000) NULL,
	[Inspection_Comments] [varchar](4000) NULL,
	[Violation_Score] [int] NULL,
	[Inspection_Result] [varchar](30) NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_WorkflowName] [varchar](50) NULL
) ON [PRIMARY]
GO


