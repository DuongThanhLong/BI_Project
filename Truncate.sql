--NDS
truncate table [dbo].[Casualty_NDS]
truncate table [dbo].[Vehicles_NDS]
truncate table [dbo].[Accidents_NDS]
truncate table [dbo].[LSOA_NDS]
truncate table [dbo].[PostCode_NDS]
truncate table dbo.date_NDS
--Stage
truncate table [dbo].[Accidents_Table]
truncate table [dbo].[Casualties_Table]
truncate table [dbo].[LSOA_Table]
truncate table [dbo].[PostCodes_Table]
truncate table [dbo].[Vehicle_Table]
--Source
truncate table [dbo].[Accident_Table]
truncate table [dbo].[Casualty_Table]
truncate table [dbo].[LSOA_Table]
truncate table [dbo].[PostCode_Table]
truncate table [dbo].[Vehicle_Table]
--DDS
delete from [dbo].[DimSession]
delete from [dbo].[DimDay]
delete from [dbo].[DimMonth]
delete from [dbo].[DimQuarter]
delete from [dbo].[DimYear]
--delete from [dbo].[DimCasualtyType]
--delete from dbo.DimCasualtySeverity
--delete from [dbo].[DimLocalAuthorityDistrict]
--delete from [dbo].[FactCasualty]
delete from dbo.FactCasualtyQ2


select acc.Number_of_Casualties, acc.[Local_Authority_(District)], cas.Casualty_Severity,
acc.TimeMoment
from DATH_BI_NDS.dbo.Accidents_NDS acc, DATH_BI_NDS.dbo.Casualty_NDS cas
where acc.IDAccidentSK=cas.IDAccidentSK
group by acc.Number_of_Casualties, acc.[Local_Authority_(District)], cas.Casualty_Severity,
acc.TimeMoment

--select DimCas.IDCasualtySeverity, DimLad.IDLAD, DimTM.IDTimeMoment,
--DimS.IDSexOfCasualty, DimCasT.IDCasualtyType, DimAgeband.IDAgeBandOfCasualty, Dim_Age.IDAge,
--acc.Number_of_Casualties, acc.Accident_Index
--from DATH_BI_DDS.dbo.DimCasualtySeverity DimCas, DATH_BI_DDS.dbo.DimLocalAuthorityDistrict DimLad,
--DATH_BI_DDS.dbo.DimSexOfCasualty DimS, DATH_BI_DDS.dbo.DimCasualtyType DimCasT, DATH_BI_DDS.dbo.DimAgeBandOfCasualty DimAgeband,
--DATH_BI_DDS.dbo.DimAge Dim_Age, DATH_BI_DDS.dbo.DimTimeMoment DimTM, DATH_BI_DDS.dbo.DimDay DimDD, DATH_BI_DDS.dbo.DimMonth DimM,
--DATH_BI_DDS.dbo.DimQuarter DimQ, DATH_BI_DDS.dbo.DimYear DimY, DATH_BI_NDS.dbo.Accidents_NDS acc
--where DimTm.IDDay=DimDD.IDDay and DimDD.IDMonth=DimM.IDMonth and DimM.IDQuarter=DimQ.IDQuarter
--and DimQ.IDYear=DimY.IDYear

--select count(acc.Accident_Index) as Number_of_Accident, acc.Accident_Index, acc.Accident_Severity, 
--acc.Urban_or_Rural_Area, acc.TimeMoment, acc.Road_Type, cas.Casualty_Type, ve.Journey_Purpose_of_Driver, 
--ve.Vehicle_Type, acc.Built_up_Road
--from dbo.Accidents_NDS acc, dbo.Vehicles_NDS ve, dbo.Casualty_NDS cas
--where cas.Accident_Index=ve.Accident_Index and ve.Accident_Index=acc.Accident_Index
--group by acc.Accident_Index, acc.Accident_Severity, 
--acc.Urban_or_Rural_Area, acc.TimeMoment, acc.Road_Type, cas.Casualty_Type, ve.Journey_Purpose_of_Driver, 
--ve.Vehicle_Type, acc.Built_up_Road

-- 2 cau query nay tuong duong nhau

select Accident_Index, Number_of_Casualties from DATH_BI_NDS.dbo.Accidents_NDS
order by Accident_Index

select count (all Accident_Index) as Number_of_casualty, 
Accident_Index
from dbo.Casualty_NDS
group by Accident_Index
order by Accident_Index



select acc.Accident_Index, acc.Number_of_Casualties, acc.[Local_Authority_(District)], acc.TimeMoment,
cas.Casualty_Severity, cas.Casualty_Type, cas.Age_Band_of_Casualty, cas.DoTuoi, cas.Sex_of_Casualty
from dbo.Accidents_NDS acc, dbo.Casualty_NDS cas
where acc.IDAccidentSK=cas.IDAccidentSK
select Accident_Index, Date, time from dbo.Accidents_NDS where Time='16:54' and Date='2014-09-03'
