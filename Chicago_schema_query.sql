SELECT TOP (1000) [Violation_Code]
      ,[Violation_Description]
      ,[Violation_Comments]
      ,[Inspection_ID]
      ,[DBA_Name]
      ,[AKA_Name]
      ,[License]
      ,[Facility_Type]
      ,[Risk]
      ,[Address]
      ,[City]
      ,[State]
      ,[Zip]
      ,[Inspection_Date]
      ,[Inspection_Type]
      ,[Results]
      ,[Latitude]
      ,[Longitude]
      ,[Location]
      ,[Violation_Score]
      ,[Risk_Score]
      ,[Result_Score]
      ,[Total_Violation_Score]
      ,[Inspection_Result]
      ,[DI_WorkflowFileName]
      ,[DI_CreatedDate]
  FROM [Food_Inspection].[dbo].[stg_Chicago_Inspection_normalized]

        SELECT 
    t.name AS TableName, 
    c.name AS ColumnName, 
    ty.name AS DataType,
    c.max_length AS Size,
    c.precision AS Precision,
    c.scale AS Scale,
    c.is_nullable AS IsNullable,
    c.is_identity AS IsIdentity
FROM 
    sys.tables t
INNER JOIN 
    sys.columns c ON t.object_id = c.object_id
INNER JOIN 
    sys.types ty ON c.user_type_id = ty.user_type_id
WHERE 
    t.name = 'stg_Chicago_Inspection_normalized'
ORDER BY 
    t.name, c.column_id;


select SCHEMA_NAME() as SchemaName;