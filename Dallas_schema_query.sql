SELECT TOP (1000) [Inspection_ID]
      ,[License]
      ,[Restaurant_Name]
      ,[AKA_Name]
      ,[Inspection_Date_new]
      ,[Inspection_Type_new]
      ,[Inspection_Score_new]
      ,[Street_Number]
      ,[Street_Name]
      ,[Street_Direction_new]
      ,[Street_Type_new]
      ,[Street_Unit_new]
      ,[Street_Address]
      ,[Zip_Code]
      ,[Latitude]
      ,[Longitude]
      ,[Inspection_Month_new]
      ,[Inspection_Month_Year_new]
      ,[Inspection_Year_new]
      ,[Violation_Code]
      ,[Violation_Description]
      ,[Inspection_Comments]
      ,[Violation_Score]
      ,[Inspection_Result]
      ,[DI_CreateDate]
      ,[DI_WorkflowName]
  FROM [Food_Inspection].[dbo].[stg_Dallas_Inspection_normalized]

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
    t.name = 'stg_Dallas_Inspection_normalized'
ORDER BY 
    t.name, c.column_id;

	select count(DISTINCT(Inspection_ID)) FROM stg_Dallas_Inspection_normalized

select SCHEMA_NAME() as SchemaName;

SELECT * FROM INFORMATION_SCHEMA.TABLES;

SELECT	* FROM INFORMATION_SCHEMA.COLUMNS;