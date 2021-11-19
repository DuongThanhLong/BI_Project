--create database BI_Metadata
--go
--use BI_MetaData
--go

create table Data_Flow 
(
	ID int primary key,
	Name varchar(50),
	LSET datetime,
	CET datetime
)

insert into Data_Flow (ID, Name, LSET, CET) values (1, 'Accidents', cast(N'2021-11-18' as datetime),cast(N'2021-11-18' as datetime))
insert into Data_Flow (ID, Name, LSET, CET) values (2, 'Casualities', cast(N'2021-11-18' as datetime),cast(N'2021-11-18' as datetime))
insert into Data_Flow (ID, Name, LSET, CET) values (3, 'Vehicles', cast(N'2021-11-18' as datetime),cast(N'2021-11-18' as datetime))
insert into Data_Flow (ID, Name, LSET, CET) values (4, 'PostCodes', cast(N'2021-11-18' as datetime),cast(N'2021-11-18' as datetime))
insert into Data_Flow (ID, Name, LSET, CET) values (5, 'PCD', cast(N'2021-11-18' as datetime),cast(N'2021-11-18' as datetime))