-- Requirement 8 --update trong stage
select distinct Speed_limit from dbo.[Accidents_Table]
select built_up_road, Speed_limit from dbo.[Accidents_Table] order by Speed_limit
--add new column
alter table [dbo].[Accidents Table] add built_up_road varchar(20)

-- set value for built-up_road column
update dbo.[Accidents_Table]
set built_up_road = 'Built-up_Road' where speed_limit < 50
update dbo.[Accidents_Table]
set built_up_road = 'Non built-up_road' where speed_limit >= 50


-- Requirement 4
---- change datatype of column DATE and TIME into date and datetime
--alter table dbo.Accidents_NDS alter column Date date null
--alter table dbo.Accidents_NDS alter column Time varchar(50) null

select * from dbo.Accidents_Table
select substring(time, 1,2) as HourAccident, substring(time, 4, 5) as MinuteAccident from dbo.Accidents_Table
select time from dbo.Accidents_Table
-- add new column
alter table dbo.Date_NDS add Time varchar(50)
alter table dbo.Date_NDS add Session varchar(20)
--select * from dbo.Accidents_Table where TimeMoment is NULL --> stage co 25 rows null
--select * from dbo.Accident_Table where Time is NULL  -- source co 25 rows null

-- set value
--update dbo.Accidents_Table set TimeMoment = null
-- Morning là từ 05:00am --> 11:59am
update dbo.Accidents_Table set TimeMoment = 'Morning' 
where substring(Time, 1, 2) between '05' and '11' and substring(time, 4, 5) between '00' and '59' --> 171442 rows

-- Afternoon là từ 12:00pm --> 16:59pm
update dbo.Accidents_Table set TimeMoment = 'Afternoon'
where substring(Time, 1, 2) between '12' and '16' and substring(time, 4, 5) between '00' and '59' --> 197790 rows

-- Evening là từ 17:00pm --> 20:59pm
update dbo.Accidents_Table set TimeMoment = 'Evening'
where substring(Time, 1, 2) between '17' and '20' and substring(time, 4, 5) between '00' and '59' --> 144839 rows

-- Night là từ 21:00pm --> 04:59am split: 21:00pm --> 23:59pm and 00:00am --> 04:59pm
update dbo.Accidents_Table set TimeMoment = 'Night'
where substring(Time, 1, 2) between '21' and '23'
and substring(time, 4, 5) between '00' and '59' --> 41789 rows


update dbo.Accidents_Table set TimeMoment = 'Night'
where SUBSTRING(Time, 1, 2) between '00' and '04'
and substring(time, 4, 5) between '00' and '59' --> 26142


-- Requirement 6
select distinct Age_of_Casualty from dbo.Casualties_Table
select Age_of_Casualty, DoTuoi from dbo.Casualties_Table

-- add new column DoTuoi
alter table Casualties_Table add DoTuoi varchar(20)

-- set value
update dbo.Casualties_Table set DoTuoi = 'Children' where Age_of_Casualty between 0 and 15
update dbo.Casualties_Table set DoTuoi = 'Yound Adult' where Age_of_Casualty between 16 and 17
update dbo.Casualties_Table set DoTuoi = 'Adult' where Age_of_Casualty between 18 and 59
update dbo.Casualties_Table set DoTuoi = '60 and over' where Age_of_Casualty >= 60
update dbo.Casualties_Table set DoTuoi = 'Missing Data' where Age_of_Casualty = -1