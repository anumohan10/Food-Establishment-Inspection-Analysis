--Q1
select count(*) AS Total_Count,f.inspection_result 
from Fact_Inspection f 
join dim_inspection d 
on f.sk_inspection_id=d.sk_inspection_id
group by f.inspection_result;

--2.Inspection result y inspection type
select TOP 10 count(*) As Total_Count ,d.inspection_type,f.Inspection_Result 
from Fact_Inspection f join dim_inspection d 
on f.sk_inspection_id=d.sk_inspection_id
group by d.inspection_type,f.Inspection_Result
order by Total_Count DESC;
 
--3.Inspection result by risk category
select count(*) AS Total_Count,d.risk_category from Fact_Inspection f 
join dim_inspection d 
on f.sk_inspection_id=d.sk_inspection_id
group by d.risk_category;

--4.
Select top 10 f.Facility_Type, Count(i.Inspection_Result) AS Total_Count ,i.Inspection_Result from Fact_Inspection i 
join Dim_Facility f on 
i.SK_Facility_ID = f.SK_Facility_ID 
Group by f.Facility_Type, i.Inspection_Result
order by Total_Count DESC

--5

SELECT v.SK_Violation_ID, v.Violation_Code, v.Violation_Description, Count(i.Inspection_Result) AS Total_count, i.Inspection_Result 
from Fact_Inspection i 
join Dim_Violation v 
on i.SK_Violation_ID = v.SK_Violation_ID 
Group by v.SK_Violation_ID, v.Violation_Code, v.Violation_Description, i.Inspection_Result
ORDER BY v.SK_Violation_ID

--6
Select f.Facility_Name, f.Facility_AKA_Name, f.Facility_License, i.Inspection_Result 
from Fact_Inspection i 
join Dim_Facility f on  i.SK_Facility_ID = f.SK_Facility_ID 
where f.Facility_License=1885022

--Q7

Select l.Latitude, l.Longitude,  Count(i.Inspection_Result) AS Total_Count from Fact_Inspection i 
join Dim_Facility f on i.SK_Facility_ID = f.SK_Facility_ID 
join Dim_Location l on f.FK_Location_ID = l.SK_Location_ID 
Group by l.Latitude, l.Longitude

--Q8

SELECT i.Inspection_ID, f.Facility_License, v.Violation_Code, v.Violation_Description, v.Inspector_Comments, fi.Inspection_Result 
from Fact_Inspection fi 
join Dim_Violation v 
on fi.SK_Violation_ID = v.SK_Violation_ID 
join Dim_Facility f on  fi.SK_Facility_ID = f.SK_Facility_ID 
join Dim_Inspection i on fi.SK_Inspection_ID = i.SK_inspection_ID