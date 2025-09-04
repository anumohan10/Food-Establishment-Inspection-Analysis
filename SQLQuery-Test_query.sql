SELECT TOP (1000) [SK_Facility_ID]
      ,[Facility_Name]
      ,[Facility_AKA_Name]
      ,[Facility_License]
      ,[Facility_Type]
      ,[FK_Location_ID]
      ,[DI_CreateDate]
      ,[DI_WorkflowFileName]
  FROM [Food_Inspection].[dbo].[DIM_Facility]

  select * from DIM_Facility where facility_name='MICKLE CHICKEN'
  SELECT * FROM stg_Dallas_Inspection_normalized WHERE Restaurant_Name='MICKLE CHICKEN'
  select * from stg_Chicago_Inspection_normalized where DBA_Name like 'LADYBUG%'
  select * from stg_Chicago_Inspection_normalized where Inspection_ID=2589808
  select * from stg_Dallas_Inspection_normalized where Inspection_ID=100
  select * from dim_inspection where inspection_id=100

  select * from DIM_Junk

  select * from DIM_Date

  select count(*) from [Fact_Inspection] where sk_inspection_id=5

select * from DIM_Inspection where sk_inspection_id=5


