
SELECT [Accident_Index], [Casualty_Reference],  COUNT(*) as NumberOfDuplicateRows
FROM [dbo].[Casualties Table]
GROUP BY [Accident_Index], [Casualty_Reference]
HAVING COUNT(*) > 1
ORDER BY [Casualty_Reference]

select * from [dbo].[Casualties Table] where Accident_Index = '201104FJ11013'
update [dbo].[Casualties Table] set Casualty_Reference = '1' where Accident_Index = '201104FJ11013' and Age_of_Casualty = '17'

