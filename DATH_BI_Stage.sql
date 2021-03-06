USE [DATH_BI_Stage]
GO
/****** Object:  Table [dbo].[Acc_AccidentSeverity]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acc_AccidentSeverity](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_1stRoadClass]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_1stRoadClass](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_2ndRoadClass]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_2ndRoadClass](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Carriageway Hazards]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Carriageway Hazards](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_DayOfWeek]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_DayOfWeek](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Junction Control]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Junction Control](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Junction Details]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Junction Details](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Light Condition]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Light Condition](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Locai Authority District]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Locai Authority District](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Local Authority Highway]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Local Authority Highway](
	[Label] [nvarchar](255) NULL,
	[code] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Ped Cross Human]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Ped Cross Human](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Ped Cross Physical]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Ped Cross Physical](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Police Force]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Police Force](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Police Officer Attend]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Police Officer Attend](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Road Surface]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Road Surface](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Road Type]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Road Type](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Special Condition at Site]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Special Condition at Site](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Urban Rural]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Urban Rural](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Weather Condition]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Weather Condition](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accidents_Table]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accidents_Table](
	[Accident_Index] [varchar](50) NULL,
	[Location_Easting_OSGR] [varchar](50) NULL,
	[Location_Northing_OSGR] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[Police_Force] [varchar](50) NULL,
	[Accident_Severity] [varchar](50) NULL,
	[Number_of_Vehicles] [varchar](50) NULL,
	[Number_of_Casualties] [varchar](50) NULL,
	[Date] [date] NULL,
	[Day_of_Week] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
	[Local_Authority_(District)] [varchar](50) NULL,
	[Local_Authority_(Highway)] [varchar](50) NULL,
	[1st_Road_Class] [varchar](50) NULL,
	[1st_Road_Number] [varchar](50) NULL,
	[Road_Type] [varchar](50) NULL,
	[Speed_limit] [varchar](50) NULL,
	[Junction_Detail] [varchar](50) NULL,
	[Junction_Control] [varchar](50) NULL,
	[2nd_Road_Class] [varchar](50) NULL,
	[2nd_Road_Number] [varchar](50) NULL,
	[Pedestrian_Crossing-Human_Control] [varchar](50) NULL,
	[Pedestrian_Crossing-Physical_Facilities] [varchar](50) NULL,
	[Light_Conditions] [varchar](50) NULL,
	[Weather_Conditions] [varchar](50) NULL,
	[Road_Surface_Conditions] [varchar](50) NULL,
	[Special_Conditions_at_Site] [varchar](50) NULL,
	[Carriageway_Hazards] [varchar](50) NULL,
	[Urban_or_Rural_Area] [varchar](50) NULL,
	[Did_Police_Officer_Attend_Scene_of_Accident] [varchar](50) NULL,
	[LSOA_of_Accident_Location] [varchar](50) NULL,
	[Lookup 1stRoadClass_Name.label] [nvarchar](255) NULL,
	[Lookup 2ndRoadClass_Name.label] [nvarchar](255) NULL,
	[Lookup Accident Severity.label] [nvarchar](255) NULL,
	[Lookup Day of Week.label] [nvarchar](255) NULL,
	[Lookup Police Force.label] [nvarchar](255) NULL,
	[Lookup Locai Authority District.label] [nvarchar](255) NULL,
	[Lookup Light Condition.label] [nvarchar](255) NULL,
	[Lookup Weather Condition.label] [nvarchar](255) NULL,
	[Lookup Road Surface.label] [nvarchar](255) NULL,
	[Lookup Police Officer Attend.label] [nvarchar](255) NULL,
	[Label] [nvarchar](255) NULL,
	[Lookup Road Type.label] [nvarchar](255) NULL,
	[Lookup Junction Details.label] [nvarchar](255) NULL,
	[Lookup Junction Control.label] [nvarchar](255) NULL,
	[Lookup Ped Cross Human.label] [nvarchar](255) NULL,
	[Lookup Ped Cross Physical.label] [nvarchar](255) NULL,
	[Lookup Special Condition at Site.label] [nvarchar](255) NULL,
	[Lookup Carriageway Hazards.label] [nvarchar](255) NULL,
	[Lookup Urban Rural.label] [nvarchar](255) NULL,
	[built_up_road] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[TimeMoment] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualties_Table]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualties_Table](
	[Accident_Index] [varchar](50) NULL,
	[Casualty_Class] [varchar](50) NULL,
	[Sex_of_Casualty] [varchar](50) NULL,
	[Age_of_Casualty] [varchar](50) NULL,
	[Age_Band_of_Casualty] [varchar](50) NULL,
	[Casualty_Severity] [varchar](50) NULL,
	[Casualty_Type] [varchar](50) NULL,
	[Casualty_Reference] [varchar](50) NULL,
	[Vehicle_Reference] [varchar](50) NULL,
	[Lookup Casualty Class.label] [nvarchar](255) NULL,
	[Lookup Sex of Casualty.label] [nvarchar](255) NULL,
	[Lookup Age Band.label] [nvarchar](255) NULL,
	[Lookup Casualty Severity.label] [nvarchar](255) NULL,
	[Lookup Casualty Type.label] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[DoTuoi] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Age Band]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Age Band](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Age of Casualty]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Age of Casualty](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Bus Passenger]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Bus Passenger](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Car Passenger]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Car Passenger](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Casualty Class]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Casualty Class](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Casualty Severity]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Casualty Severity](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Casualty Type]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Casualty Type](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Home Area Type]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Home Area Type](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Ped Location]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Ped Location](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Ped Movement]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Ped Movement](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Ped Road Maintenance Worker]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Ped Road Maintenance Worker](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Sex of Casualty]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Sex of Casualty](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LSOA_Table]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LSOA_Table](
	[doterm] [varchar](50) NULL,
	[usertype] [varchar](50) NULL,
	[oa11cd] [varchar](50) NULL,
	[lsoa11cd] [varchar](50) NULL,
	[msoa11cd] [varchar](50) NULL,
	[ladcd] [varchar](50) NULL,
	[lsoa11nm] [varchar](50) NULL,
	[msoa11nm] [varchar](50) NULL,
	[ladnm] [varchar](50) NULL,
	[dointr] [varchar](50) NULL,
	[pcd8] [varchar](50) NULL,
	[pcd7] [varchar](50) NULL,
	[pcds] [varchar](50) NULL,
	[LSOAPostCode] [varchar](4) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCodes_Table]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCodes_Table](
	[postcode] [varchar](50) NULL,
	[easting] [varchar](50) NULL,
	[northing] [varchar](50) NULL,
	[latitude] [varchar](50) NULL,
	[longitude] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[county] [varchar](50) NULL,
	[country_code] [varchar](50) NULL,
	[country_name] [varchar](50) NULL,
	[iso3166-2] [varchar](50) NULL,
	[region_code] [varchar](50) NULL,
	[region_name] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_1st Point of Impact]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_1st Point of Impact](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Age Band]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Age Band](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Driver Home Area Type]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Driver Home Area Type](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Driver IMD Decile]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Driver IMD Decile](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Hit Object in Carriageway]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Hit Object in Carriageway](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Hit Object off Carriageway]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Hit Object off Carriageway](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Journey Purpose of Driver]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Journey Purpose of Driver](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Junction Location]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Junction Location](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Sex of Driver]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Sex of Driver](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Skidding and Overturning]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Skidding and Overturning](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Table]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Table](
	[Accident_Index] [varchar](50) NULL,
	[Vehicle_Reference] [varchar](50) NULL,
	[Vehicle_Type] [varchar](50) NULL,
	[Towing_and_Articulation] [varchar](50) NULL,
	[Vehicle_Manoeuvre] [varchar](50) NULL,
	[Vehicle_Location-Restricted_Lane] [varchar](50) NULL,
	[Junction_Location] [varchar](50) NULL,
	[Skidding_and_Overturning] [varchar](50) NULL,
	[Hit_Object_in_Carriageway] [varchar](50) NULL,
	[Vehicle_Leaving_Carriageway] [varchar](50) NULL,
	[Hit_Object_off_Carriageway] [varchar](50) NULL,
	[1st_Point_of_Impact] [varchar](50) NULL,
	[Was_Vehicle_Left_Hand_Drive?] [varchar](50) NULL,
	[Journey_Purpose_of_Driver] [varchar](50) NULL,
	[Sex_of_Driver] [varchar](50) NULL,
	[Age_of_Driver] [varchar](50) NULL,
	[Age_Band_of_Driver] [varchar](50) NULL,
	[Engine_Capacity_(CC)] [varchar](50) NULL,
	[Propulsion_Code] [varchar](50) NULL,
	[Age_of_Vehicle] [varchar](50) NULL,
	[Driver_IMD_Decile] [varchar](50) NULL,
	[Driver_Home_Area_Type] [varchar](50) NULL,
	[Lookup Vehicle Type.label] [nvarchar](255) NULL,
	[Lookup Towing and Articulation.label] [nvarchar](255) NULL,
	[Lookup Vehicle Manoeuvre.label] [nvarchar](255) NULL,
	[Lookup Vehicle Location.label] [nvarchar](255) NULL,
	[Lookup Junction Location.label] [nvarchar](255) NULL,
	[Lookup Skidding and Overturning.label] [nvarchar](255) NULL,
	[Lookup Sex of Driver.label] [nvarchar](255) NULL,
	[Lookup Age Band.label] [nvarchar](255) NULL,
	[Lookup Hit Object in Carriageway.label] [nvarchar](255) NULL,
	[Lookup Hit Object off Carriageway.label] [nvarchar](255) NULL,
	[Lookup Vehicle Leaving Carriageway.label] [nvarchar](255) NULL,
	[Lookup 1st Point of Impact.label] [nvarchar](255) NULL,
	[Lookup Was Vehicle Left Hand Drive.label] [nvarchar](255) NULL,
	[Lookup Journey Purpose of Driver.label] [nvarchar](255) NULL,
	[Lookup Vehicle Propulsion Code.label] [nvarchar](255) NULL,
	[Lookup Driver IMD Decile.label] [nvarchar](255) NULL,
	[Lookup Driver Home Area Type.label] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Towing and Articulation]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Towing and Articulation](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Vehicle Leaving Carriageway]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Vehicle Leaving Carriageway](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Vehicle Location-Restricted Lane]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Vehicle Location-Restricted Lane](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Vehicle Manoeuvre]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Vehicle Manoeuvre](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Vehicle Propulsion Code]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Vehicle Propulsion Code](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Vehicle Type]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Vehicle Type](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Was Vehicle Left Hand Drive]    Script Date: 1/5/2022 5:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Was Vehicle Left Hand Drive](
	[code] [varchar](50) NULL,
	[label] [nvarchar](255) NULL
) ON [PRIMARY]
GO
