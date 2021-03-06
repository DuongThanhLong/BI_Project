USE [DATH_BI_Metadata]
GO
/****** Object:  Table [dbo].[Data_Flow]    Script Date: 1/5/2022 5:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data_Flow](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[LSET] [datetime] NULL,
	[CET] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Data_Flow] ON 

INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (1, N'Accidents', CAST(N'2022-01-02T10:13:45.720' AS DateTime), CAST(N'2022-01-02T10:13:45.720' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (2, N'Casualties', CAST(N'2022-01-02T11:37:39.380' AS DateTime), CAST(N'2022-01-02T11:37:39.380' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (3, N'Vehicles', CAST(N'2022-01-02T11:27:14.817' AS DateTime), CAST(N'2022-01-02T11:27:14.817' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (4, N'PostCodes', CAST(N'2022-01-02T10:03:01.100' AS DateTime), CAST(N'2022-01-02T10:03:01.100' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (5, N'LSOA', CAST(N'2022-01-02T10:05:28.517' AS DateTime), CAST(N'2022-01-02T10:05:28.517' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (6, N'FactCasualty01', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (7, N'DimTimeMoment', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (8, N'DimDay', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (9, N'DimMonth', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (10, N'DimQuarter', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (11, N'DimYear', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (12, N'DimCasualtySeverity', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (13, N'DimLocalAuthorityDistrict', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (14, N'DimSexOfCasualty', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (15, N'DimAgeBandOfCasualty', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (16, N'DimAge', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (17, N'DimCasualtyType', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (18, N'FactAccident', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (19, N'DimAccidentSeverity', CAST(N'2022-01-02T18:42:29.050' AS DateTime), CAST(N'2022-01-02T18:42:29.050' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (20, N'DimUrbanOrRural', CAST(N'2022-01-02T18:44:01.757' AS DateTime), CAST(N'2022-01-02T18:44:01.757' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (21, N'DimRoadType', CAST(N'2022-01-02T18:44:01.757' AS DateTime), CAST(N'2022-01-02T18:44:01.757' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (22, N'DimJourneyPurpose', CAST(N'2022-01-02T18:42:29.037' AS DateTime), CAST(N'2022-01-02T18:42:29.037' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (23, N'DimVehicleType', CAST(N'2022-01-02T18:42:29.027' AS DateTime), CAST(N'2022-01-02T18:42:29.027' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (24, N'DimBuilt-upRoad', CAST(N'2022-01-02T18:42:29.027' AS DateTime), CAST(N'2022-01-02T18:42:29.027' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (25, N'DimCity', CAST(N'2022-01-02T19:13:02.243' AS DateTime), CAST(N'2022-01-02T19:13:02.243' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (26, N'DimCounty', CAST(N'2022-01-02T19:13:01.733' AS DateTime), CAST(N'2022-01-02T19:13:01.733' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (27, N'DimRegion', CAST(N'2022-01-02T19:13:01.123' AS DateTime), CAST(N'2022-01-02T19:13:01.123' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (28, N'DimCountry', CAST(N'2022-01-02T19:13:00.793' AS DateTime), CAST(N'2022-01-02T19:13:00.793' AS DateTime))
INSERT [dbo].[Data_Flow] ([ID], [Name], [LSET], [CET]) VALUES (1006, N'FactCasualty02', CAST(N'2021-12-31T18:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Data_Flow] OFF
GO
