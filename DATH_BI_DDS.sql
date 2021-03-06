USE [DATH_BI_DDS]
GO
/****** Object:  View [dbo].[Predict_AccidentSeverity]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Predict_AccidentSeverity] as
select a.Accident_Index, a.Number_of_Vehicles, a.Number_of_Casualties, a.[Local Authority Highway_Name],
a.[Road Type_Name], a.Speed_limit, a.[Light Condition._Name], a.[Weather Condition_Name], a.[Road Surface_Name],
c.[Casualty Severity_Name], c.[Casualty Type_Name], v.[Vehicle Type_Name], a.[Accident Severity_Name]
from DATH_BI_NDS.dbo.Accidents_NDS a, DATH_BI_NDS.dbo.Casualty_NDS c, DATH_BI_NDS.dbo.Vehicles_NDS v
where a.IDAccidentSK=c.IDAccidentSK and a.IDAccidentSK=v.IDAccidentSK
GO
/****** Object:  Table [dbo].[DimAccidentSeverity]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAccidentSeverity](
	[Accident_Severity] [varchar](50) NOT NULL,
	[Accident Severity_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Accident_Severity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAge]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAge](
	[Age_of_Casualty] [varchar](50) NOT NULL,
	[DoTuoi] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Age_of_Casualty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAgeBandOfCasualty]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAgeBandOfCasualty](
	[Age_Band_of_Casualty] [varchar](50) NOT NULL,
	[Age Band_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Age_Band_of_Casualty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimBuilt-upRoad]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimBuilt-upRoad](
	[Speed_Limit] [varchar](50) NOT NULL,
	[Built_up_Road] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Speed_Limit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCasualtySeverity]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCasualtySeverity](
	[Casualty_Severity] [varchar](50) NOT NULL,
	[Casualty Severity_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Casualty_Severity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCasualtyType]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCasualtyType](
	[Casualty_Type] [varchar](50) NOT NULL,
	[Casualty Type_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Casualty_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDay]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDay](
	[IDDay] [int] IDENTITY(1,1) NOT NULL,
	[Day] [int] NULL,
	[IDMonth] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimJourneyPurpose]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimJourneyPurpose](
	[Journey_Purpose_of_Driver] [varchar](50) NOT NULL,
	[Journey Purpose of Driver_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Journey_Purpose_of_Driver] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimLAD]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLAD](
	[Local_Authority_(District)] [varchar](50) NOT NULL,
	[Local Authority District._Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Local_Authority_(District)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMonth]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMonth](
	[IDMonth] [int] IDENTITY(1,1) NOT NULL,
	[Month] [int] NULL,
	[IDQuarter] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimQuarter]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimQuarter](
	[IDQuarter] [int] IDENTITY(1,1) NOT NULL,
	[Quarter] [int] NULL,
	[IDYear] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDQuarter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimRoadType]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimRoadType](
	[Road_Type] [varchar](50) NOT NULL,
	[Road Type_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Road_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSession]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSession](
	[IDSession] [int] IDENTITY(1,1) NOT NULL,
	[Session] [varchar](20) NULL,
	[IDDay] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSession] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSexOfCasualty]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSexOfCasualty](
	[Sex_of_Casualty] [varchar](50) NOT NULL,
	[Sex of Casualty_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sex_of_Casualty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimUrbanOrRural]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimUrbanOrRural](
	[Urban_or_Rural_Area] [varchar](50) NOT NULL,
	[Urban Rural_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Urban_or_Rural_Area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimVehicleType]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimVehicleType](
	[Vehicle_Type] [varchar](50) NOT NULL,
	[Vehicle Type_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Vehicle_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimYear]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimYear](
	[IDYear] [int] IDENTITY(1,1) NOT NULL,
	[Year] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactAccidentQ4]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactAccidentQ4](
	[IDFactAccidentQ4] [int] IDENTITY(1,1) NOT NULL,
	[Accident_Severity] [varchar](50) NULL,
	[IDSession] [int] NULL,
	[NumberOfAccident] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFactAccidentQ4] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactAccidentQ5]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactAccidentQ5](
	[IDFactAccidentQ5] [int] IDENTITY(1,1) NOT NULL,
	[Accident_Severity] [varchar](50) NULL,
	[Road_Type] [varchar](50) NULL,
	[Urban_or_Rural_Area] [varchar](50) NULL,
	[NumberOfAccident] [int] NULL,
	[IDSession] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFactAccidentQ5] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactAccidentQ7]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactAccidentQ7](
	[IDFactAccidentQ7] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfAccident] [int] NULL,
	[Journey_Purpose_of_Driver] [varchar](50) NULL,
	[Vehicle_Type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFactAccidentQ7] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactAccidentQ9]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactAccidentQ9](
	[IDFactAccidentQ9] [int] IDENTITY(1,1) NOT NULL,
	[Accident_Severity] [varchar](50) NULL,
	[Vehicle_Type] [varchar](50) NULL,
	[NumberOfAccident] [int] NULL,
	[Speed_Limit] [varchar](50) NULL,
	[IDSession] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFactAccidentQ9] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCasualtyQ1]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCasualtyQ1](
	[IDFactCasualty01] [int] IDENTITY(1,1) NOT NULL,
	[Local_Authority_(District)] [varchar](50) NULL,
	[Casualty_Severity] [varchar](50) NULL,
	[NumberOfCasualty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFactCasualty01] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCasualtyQ2]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCasualtyQ2](
	[IDFactCasualtyQ2] [int] IDENTITY(1,1) NOT NULL,
	[Local_Authority_(District)] [varchar](50) NULL,
	[Casualty_Severity] [varchar](50) NULL,
	[IDSession] [int] NULL,
	[NumberOfCasualty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFactCasualtyQ2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCasualtyQ3]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCasualtyQ3](
	[IDFactCasualtyQ3] [int] IDENTITY(1,1) NOT NULL,
	[Sex_of_Casualty] [varchar](50) NULL,
	[Casualty_Type] [varchar](50) NULL,
	[Age_Band_of_Casualty] [varchar](50) NULL,
	[NumberOfCasualty] [int] NULL,
	[Casualty_Severity] [varchar](50) NULL,
	[IDSession] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFactCasualtyQ3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCasualtyQ6]    Script Date: 1/9/2022 7:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCasualtyQ6](
	[IDFactCasualtyQ6] [int] IDENTITY(1,1) NOT NULL,
	[Casualty_Type] [varchar](50) NULL,
	[Age_of_Casualty] [varchar](50) NULL,
	[Casualty_Severity] [varchar](50) NULL,
	[NumberOfCasualty] [int] NULL,
	[IDSession] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDFactCasualtyQ6] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimDay]  WITH CHECK ADD  CONSTRAINT [FK_DimDay_DimMonth] FOREIGN KEY([IDMonth])
REFERENCES [dbo].[DimMonth] ([IDMonth])
GO
ALTER TABLE [dbo].[DimDay] CHECK CONSTRAINT [FK_DimDay_DimMonth]
GO
ALTER TABLE [dbo].[DimMonth]  WITH CHECK ADD  CONSTRAINT [FK_DimMonth_DimQuarter] FOREIGN KEY([IDQuarter])
REFERENCES [dbo].[DimQuarter] ([IDQuarter])
GO
ALTER TABLE [dbo].[DimMonth] CHECK CONSTRAINT [FK_DimMonth_DimQuarter]
GO
ALTER TABLE [dbo].[DimQuarter]  WITH CHECK ADD  CONSTRAINT [FK_DimQuarter_DimYear] FOREIGN KEY([IDYear])
REFERENCES [dbo].[DimYear] ([IDYear])
GO
ALTER TABLE [dbo].[DimQuarter] CHECK CONSTRAINT [FK_DimQuarter_DimYear]
GO
ALTER TABLE [dbo].[DimSession]  WITH CHECK ADD  CONSTRAINT [FK_DimSession_DimDay] FOREIGN KEY([IDDay])
REFERENCES [dbo].[DimDay] ([IDDay])
GO
ALTER TABLE [dbo].[DimSession] CHECK CONSTRAINT [FK_DimSession_DimDay]
GO
ALTER TABLE [dbo].[FactAccidentQ4]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ4_DimAccidentSeverity] FOREIGN KEY([Accident_Severity])
REFERENCES [dbo].[DimAccidentSeverity] ([Accident_Severity])
GO
ALTER TABLE [dbo].[FactAccidentQ4] CHECK CONSTRAINT [FK_FactAccidentQ4_DimAccidentSeverity]
GO
ALTER TABLE [dbo].[FactAccidentQ4]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ4_DimSession] FOREIGN KEY([IDSession])
REFERENCES [dbo].[DimSession] ([IDSession])
GO
ALTER TABLE [dbo].[FactAccidentQ4] CHECK CONSTRAINT [FK_FactAccidentQ4_DimSession]
GO
ALTER TABLE [dbo].[FactAccidentQ5]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ5_DimAccidentSeverity] FOREIGN KEY([Accident_Severity])
REFERENCES [dbo].[DimAccidentSeverity] ([Accident_Severity])
GO
ALTER TABLE [dbo].[FactAccidentQ5] CHECK CONSTRAINT [FK_FactAccidentQ5_DimAccidentSeverity]
GO
ALTER TABLE [dbo].[FactAccidentQ5]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ5_DimRoadType] FOREIGN KEY([Road_Type])
REFERENCES [dbo].[DimRoadType] ([Road_Type])
GO
ALTER TABLE [dbo].[FactAccidentQ5] CHECK CONSTRAINT [FK_FactAccidentQ5_DimRoadType]
GO
ALTER TABLE [dbo].[FactAccidentQ5]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ5_DimSession] FOREIGN KEY([IDSession])
REFERENCES [dbo].[DimSession] ([IDSession])
GO
ALTER TABLE [dbo].[FactAccidentQ5] CHECK CONSTRAINT [FK_FactAccidentQ5_DimSession]
GO
ALTER TABLE [dbo].[FactAccidentQ5]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ5_DimUrbanOrRural] FOREIGN KEY([Urban_or_Rural_Area])
REFERENCES [dbo].[DimUrbanOrRural] ([Urban_or_Rural_Area])
GO
ALTER TABLE [dbo].[FactAccidentQ5] CHECK CONSTRAINT [FK_FactAccidentQ5_DimUrbanOrRural]
GO
ALTER TABLE [dbo].[FactAccidentQ7]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ7_DimJourneyPurpose] FOREIGN KEY([Journey_Purpose_of_Driver])
REFERENCES [dbo].[DimJourneyPurpose] ([Journey_Purpose_of_Driver])
GO
ALTER TABLE [dbo].[FactAccidentQ7] CHECK CONSTRAINT [FK_FactAccidentQ7_DimJourneyPurpose]
GO
ALTER TABLE [dbo].[FactAccidentQ7]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ7_DimVehicleType] FOREIGN KEY([Vehicle_Type])
REFERENCES [dbo].[DimVehicleType] ([Vehicle_Type])
GO
ALTER TABLE [dbo].[FactAccidentQ7] CHECK CONSTRAINT [FK_FactAccidentQ7_DimVehicleType]
GO
ALTER TABLE [dbo].[FactAccidentQ9]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ9_DimAccidentSeverity] FOREIGN KEY([Accident_Severity])
REFERENCES [dbo].[DimAccidentSeverity] ([Accident_Severity])
GO
ALTER TABLE [dbo].[FactAccidentQ9] CHECK CONSTRAINT [FK_FactAccidentQ9_DimAccidentSeverity]
GO
ALTER TABLE [dbo].[FactAccidentQ9]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ9_DimBuilt-upRoad] FOREIGN KEY([Speed_Limit])
REFERENCES [dbo].[DimBuilt-upRoad] ([Speed_Limit])
GO
ALTER TABLE [dbo].[FactAccidentQ9] CHECK CONSTRAINT [FK_FactAccidentQ9_DimBuilt-upRoad]
GO
ALTER TABLE [dbo].[FactAccidentQ9]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ9_DimSession] FOREIGN KEY([IDSession])
REFERENCES [dbo].[DimSession] ([IDSession])
GO
ALTER TABLE [dbo].[FactAccidentQ9] CHECK CONSTRAINT [FK_FactAccidentQ9_DimSession]
GO
ALTER TABLE [dbo].[FactAccidentQ9]  WITH CHECK ADD  CONSTRAINT [FK_FactAccidentQ9_DimVehicleType] FOREIGN KEY([Vehicle_Type])
REFERENCES [dbo].[DimVehicleType] ([Vehicle_Type])
GO
ALTER TABLE [dbo].[FactAccidentQ9] CHECK CONSTRAINT [FK_FactAccidentQ9_DimVehicleType]
GO
ALTER TABLE [dbo].[FactCasualtyQ1]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ1_DimCasualtySeverity] FOREIGN KEY([Casualty_Severity])
REFERENCES [dbo].[DimCasualtySeverity] ([Casualty_Severity])
GO
ALTER TABLE [dbo].[FactCasualtyQ1] CHECK CONSTRAINT [FK_FactCasualtyQ1_DimCasualtySeverity]
GO
ALTER TABLE [dbo].[FactCasualtyQ1]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ1_DimLAD] FOREIGN KEY([Local_Authority_(District)])
REFERENCES [dbo].[DimLAD] ([Local_Authority_(District)])
GO
ALTER TABLE [dbo].[FactCasualtyQ1] CHECK CONSTRAINT [FK_FactCasualtyQ1_DimLAD]
GO
ALTER TABLE [dbo].[FactCasualtyQ2]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ2_DimCasualtySeverity] FOREIGN KEY([Casualty_Severity])
REFERENCES [dbo].[DimCasualtySeverity] ([Casualty_Severity])
GO
ALTER TABLE [dbo].[FactCasualtyQ2] CHECK CONSTRAINT [FK_FactCasualtyQ2_DimCasualtySeverity]
GO
ALTER TABLE [dbo].[FactCasualtyQ2]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ2_DimLAD] FOREIGN KEY([Local_Authority_(District)])
REFERENCES [dbo].[DimLAD] ([Local_Authority_(District)])
GO
ALTER TABLE [dbo].[FactCasualtyQ2] CHECK CONSTRAINT [FK_FactCasualtyQ2_DimLAD]
GO
ALTER TABLE [dbo].[FactCasualtyQ2]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ2_DimSession] FOREIGN KEY([IDSession])
REFERENCES [dbo].[DimSession] ([IDSession])
GO
ALTER TABLE [dbo].[FactCasualtyQ2] CHECK CONSTRAINT [FK_FactCasualtyQ2_DimSession]
GO
ALTER TABLE [dbo].[FactCasualtyQ3]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ3_DimAgeBandOfCasualty] FOREIGN KEY([Age_Band_of_Casualty])
REFERENCES [dbo].[DimAgeBandOfCasualty] ([Age_Band_of_Casualty])
GO
ALTER TABLE [dbo].[FactCasualtyQ3] CHECK CONSTRAINT [FK_FactCasualtyQ3_DimAgeBandOfCasualty]
GO
ALTER TABLE [dbo].[FactCasualtyQ3]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ3_DimCasualtySeverity] FOREIGN KEY([Casualty_Severity])
REFERENCES [dbo].[DimCasualtySeverity] ([Casualty_Severity])
GO
ALTER TABLE [dbo].[FactCasualtyQ3] CHECK CONSTRAINT [FK_FactCasualtyQ3_DimCasualtySeverity]
GO
ALTER TABLE [dbo].[FactCasualtyQ3]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ3_DimCasualtyType] FOREIGN KEY([Casualty_Type])
REFERENCES [dbo].[DimCasualtyType] ([Casualty_Type])
GO
ALTER TABLE [dbo].[FactCasualtyQ3] CHECK CONSTRAINT [FK_FactCasualtyQ3_DimCasualtyType]
GO
ALTER TABLE [dbo].[FactCasualtyQ3]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ3_DimSession] FOREIGN KEY([IDSession])
REFERENCES [dbo].[DimSession] ([IDSession])
GO
ALTER TABLE [dbo].[FactCasualtyQ3] CHECK CONSTRAINT [FK_FactCasualtyQ3_DimSession]
GO
ALTER TABLE [dbo].[FactCasualtyQ3]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ3_DimSexOfCasualty] FOREIGN KEY([Sex_of_Casualty])
REFERENCES [dbo].[DimSexOfCasualty] ([Sex_of_Casualty])
GO
ALTER TABLE [dbo].[FactCasualtyQ3] CHECK CONSTRAINT [FK_FactCasualtyQ3_DimSexOfCasualty]
GO
ALTER TABLE [dbo].[FactCasualtyQ6]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ6_DimAge] FOREIGN KEY([Age_of_Casualty])
REFERENCES [dbo].[DimAge] ([Age_of_Casualty])
GO
ALTER TABLE [dbo].[FactCasualtyQ6] CHECK CONSTRAINT [FK_FactCasualtyQ6_DimAge]
GO
ALTER TABLE [dbo].[FactCasualtyQ6]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ6_DimCasualtySeverity] FOREIGN KEY([Casualty_Severity])
REFERENCES [dbo].[DimCasualtySeverity] ([Casualty_Severity])
GO
ALTER TABLE [dbo].[FactCasualtyQ6] CHECK CONSTRAINT [FK_FactCasualtyQ6_DimCasualtySeverity]
GO
ALTER TABLE [dbo].[FactCasualtyQ6]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ6_DimCasualtyType] FOREIGN KEY([Casualty_Type])
REFERENCES [dbo].[DimCasualtyType] ([Casualty_Type])
GO
ALTER TABLE [dbo].[FactCasualtyQ6] CHECK CONSTRAINT [FK_FactCasualtyQ6_DimCasualtyType]
GO
ALTER TABLE [dbo].[FactCasualtyQ6]  WITH CHECK ADD  CONSTRAINT [FK_FactCasualtyQ6_DimSession] FOREIGN KEY([IDSession])
REFERENCES [dbo].[DimSession] ([IDSession])
GO
ALTER TABLE [dbo].[FactCasualtyQ6] CHECK CONSTRAINT [FK_FactCasualtyQ6_DimSession]
GO
