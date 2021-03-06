USE [DATH_BI_NDS]
GO
/****** Object:  Table [dbo].[Accidents_NDS]    Script Date: 1/5/2022 5:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accidents_NDS](
	[IDAccidentSK] [int] IDENTITY(1,1) NOT NULL,
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
	[1stRoadClass_Name] [nvarchar](255) NULL,
	[2ndRoadClass_Name] [nvarchar](255) NULL,
	[Accident Severity_Name] [nvarchar](255) NULL,
	[Day of Week_Name] [nvarchar](255) NULL,
	[Police Force_Name] [nvarchar](255) NULL,
	[Local Authority District._Name] [nvarchar](255) NULL,
	[Light Condition._Name] [nvarchar](255) NULL,
	[Weather Condition_Name] [nvarchar](255) NULL,
	[Road Surface_Name] [nvarchar](255) NULL,
	[Did_Police_Officer_Attend_Scene_of_Accident_Name] [nvarchar](255) NULL,
	[Local Authority Highway_Name] [nvarchar](255) NULL,
	[Road Type_Name] [nvarchar](255) NULL,
	[Junction Details_Name] [nvarchar](255) NULL,
	[Junction Control_Name] [nvarchar](255) NULL,
	[Ped Cross Human_Name] [nvarchar](255) NULL,
	[Ped Cross Physical_Name] [nvarchar](255) NULL,
	[Special Condition at Site_Name] [nvarchar](255) NULL,
	[Carriageway Hazards_Name] [nvarchar](255) NULL,
	[Urban Rural_Name] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Built_up_Road] [varchar](20) NULL,
	[TimeMoment] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAccidentSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_NDS]    Script Date: 1/5/2022 5:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_NDS](
	[IDCasualtySK] [int] IDENTITY(1,1) NOT NULL,
	[Accident_Index] [varchar](50) NULL,
	[Casualty_Class] [varchar](50) NULL,
	[Sex_of_Casualty] [varchar](50) NULL,
	[Age_of_Casualty] [varchar](50) NULL,
	[Age_Band_of_Casualty] [varchar](50) NULL,
	[Casualty_Severity] [varchar](50) NULL,
	[Casualty_Type] [varchar](50) NULL,
	[Casualty_Reference] [varchar](50) NULL,
	[Vehicle_Reference] [varchar](50) NULL,
	[Casualty Class_Name] [nvarchar](255) NULL,
	[Sex of Casualty_Name] [nvarchar](255) NULL,
	[Age Band_Name] [nvarchar](255) NULL,
	[Casualty Severity_Name] [nvarchar](255) NULL,
	[Casualty Type_Name] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[IDAccidentSK] [int] NULL,
	[IDVehicleSK] [int] NULL,
	[DoTuoi] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCasualtySK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LSOA_NDS]    Script Date: 1/5/2022 5:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LSOA_NDS](
	[IDLSOA_SK] [int] IDENTITY(1,1) NOT NULL,
	[pcd8] [varchar](50) NULL,
	[dointr] [varchar](50) NULL,
	[doterm] [varchar](50) NULL,
	[usertype] [varchar](50) NULL,
	[oa11cd] [varchar](50) NULL,
	[lsoa11cd] [varchar](50) NULL,
	[msoa11cd] [varchar](50) NULL,
	[ladcd] [varchar](50) NULL,
	[lsoa11nm] [varchar](50) NULL,
	[msoa11nm] [varchar](50) NULL,
	[ladnm] [varchar](50) NULL,
	[pcd7] [varchar](50) NULL,
	[pcds] [varchar](50) NULL,
	[LSOAPostCode] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDLSOA_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCode_NDS]    Script Date: 1/5/2022 5:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCode_NDS](
	[IDPostCodeSK] [int] IDENTITY(1,1) NOT NULL,
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
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPostCodeSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles_NDS]    Script Date: 1/5/2022 5:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles_NDS](
	[IDVehicleSK] [int] IDENTITY(1,1) NOT NULL,
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
	[Vehicle Type_Name] [nvarchar](255) NULL,
	[Towing and Articulation_Name] [nvarchar](255) NULL,
	[Vehicle Manoeuvre_Name] [nvarchar](255) NULL,
	[Vehicle Location_Name] [nvarchar](255) NULL,
	[Junction Location_Name] [nvarchar](255) NULL,
	[Skidding and Overturning_Name] [nvarchar](255) NULL,
	[Sex of Driver_Name] [nvarchar](255) NULL,
	[Age Band._Name] [nvarchar](255) NULL,
	[Hit Object in Carriageway_Name] [nvarchar](255) NULL,
	[Hit Object off Carriageway_Name] [nvarchar](255) NULL,
	[Vehicle Leaving Carriageway_Name] [nvarchar](255) NULL,
	[1st Point of Impact_Name] [nvarchar](255) NULL,
	[Was Vehicle Left Hand Drive_Name] [nvarchar](255) NULL,
	[Journey Purpose of Driver_Name] [nvarchar](255) NULL,
	[Vehicle Propulsion Code_Name] [nvarchar](255) NULL,
	[Driver IMD Decile_Name] [nvarchar](255) NULL,
	[Driver Home Area Type_Name] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[IDAccidentSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDVehicleSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
