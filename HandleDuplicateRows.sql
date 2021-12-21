
SELECT [Accident_Index], [Casualty_Reference],  COUNT(*) as NumberOfDuplicateRows
FROM [dbo].[Casualties Table]
GROUP BY [Accident_Index], [Casualty_Reference]
HAVING COUNT(*) > 1
ORDER BY [Casualty_Reference]

select * from [dbo].[Casualties Table] where Accident_Index = '201204CL12218'
update [dbo].[Casualties Table] set Casualty_Reference = '4' where Accident_Index = '201204CL12218' and Age_of_Casualty = '24'

select * from [dbo].[Casualties Table] where Accident_Index = '2013471305010'
update [dbo].[Casualties Table] set Casualty_Reference = '2' where Accident_Index = '2013471305010' and Age_of_Casualty = '21'

select * from [dbo].[Casualties Table] where Accident_Index = '201304EA13001'
update [dbo].[Casualties Table] set Casualty_Reference = '4' where Accident_Index = '201304EA13001' and Age_of_Casualty = '29'

select * from [dbo].[Casualties Table] where Accident_Index = '201104CK11089'
update [dbo].[Casualties Table] set Casualty_Reference = '2' where Accident_Index = '201104CK11089' and Age_of_Casualty = '59'

select * from [dbo].[Casualties Table] where Accident_Index = '201404CJ14198'
update [dbo].[Casualties Table] set Casualty_Reference = '1' where Accident_Index = '201404CJ14198' and Age_of_Casualty = '40'

select * from [dbo].[Casualties Table] where Accident_Index = '201404WA14102'
update [dbo].[Casualties Table] set Casualty_Reference = '2' where Accident_Index = '201404WA14102' and Age_of_Casualty = '36'

select * from [dbo].[Casualties Table] where Accident_Index = '201304CJ13162'
update [dbo].[Casualties Table] set Casualty_Reference = '2' where Accident_Index = '201304CJ13162' and Age_of_Casualty = '13'

select * from [dbo].[Casualties Table] where Accident_Index = '201104FJ11013'
update [dbo].[Casualties Table] set Casualty_Reference = '1' where Accident_Index = '201104FJ11013' and Age_of_Casualty = '17'
