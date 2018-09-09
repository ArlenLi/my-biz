CREATE TABLE [dbo].[Business_Entries](
	[Year] [int] NOT NULL,
	[Number_of_non_employing_business_entries] [int] NOT NULL,
	[Number_of_employing_business_entries__1_4_employees] [int] NOT NULL,
	[Number_of_employing_business_entries__5_19_employees] [int] NOT NULL,
	[Number_of_employing_business_entries__20_or_more_employees] [int] NULL,
	[Total_number_of_business_entries] [int] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[Business_Exits](
	[Year] [int] NOT NULL,
	[Number_of_non_employing_business_exits] [int] NOT NULL,
	[Number_of_employing_business_exits__1_4_employees] [int] NOT NULL,
	[Number_of_employing_business_exits__5_19_employees] [int] NOT NULL,
	[Number_of_employing_business_exits__20_or_more_employees] [int] NOT NULL,
	[Total_number_of_business_exits] [int] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
)
GO

CREATE TABLE [dbo].[Business_Industries](
	[Industry_Type] [nvarchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[Number_Of_Businesses] [int] NULL,
	[Suburb] [nvarchar](50) NOT NULL
)
GO

CREATE TABLE [dbo].[Business_Summary](
	[Suburb] [nvarchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[Businee_Size] [nvarchar](50) NOT NULL,
	[Number_Of_Businesses] [int] NOT NULL,
	[Number_of_Entries] [int] NOT NULL,
	[Number_Of_Exits] [int] NOT NULL
)
GO

CREATE TABLE [dbo].[Business_TotalBusiness](
	[Year] [int] NOT NULL,
	[Number_of_non_employing_businesses] [int] NOT NULL,
	[Number_of_employing_businesses__1_4_employees] [int] NOT NULL,
	[Number_of_employing_businesses__5_19_employees] [int] NOT NULL,
	[Number_of_employing_businesses__20_or_more_employees] [int] NOT NULL,
	[Total_number_of_businesses] [int] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[Dwelling_Structure](
	[Dwelling_Structure] [nvarchar](100) NOT NULL,
	[Number_Of_Dwellins] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
)
GO

CREATE TABLE [dbo].[Dwelling_Tenure](
	[Tenure] [nvarchar](50) NOT NULL,
	[Number_Of_Dwellins] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[Family_Composition](
	[Family_Composition] [nvarchar](50) NOT NULL,
	[Number_Of_Families] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
)
GO

CREATE TABLE [dbo].[Family_EmploymentStatus](
	[Employment_Status] [nvarchar](100) NOT NULL,
	[Number_Of_Families] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[People_Age](
	[Age] [nvarchar](50) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL,
	[Order] [int] NOT NULL
) 
GO

CREATE TABLE [dbo].[People_Ancestry](
	[Ancestry] [nvarchar](50) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO


CREATE TABLE [dbo].[People_BirthRate](
	[Year] [int] NOT NULL,
	[Number_Of_Births] [int] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[People_CountryOfBirth](
	[Country_Of_birth] [nvarchar](50) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO


CREATE TABLE [dbo].[People_Education](
	[Education] [nvarchar](50) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
)
GO

CREATE TABLE [dbo].[People_Employment](
	[Employment] [nvarchar](50) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[People_Gender](
	[Gender] [nvarchar](50) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[People_Language](
	[Language] [nvarchar](50) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[People_MaritalStatus](
	[Registered_Marital_Status] [nvarchar](50) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[People_Occupation](
	[Occupation] [nvarchar](50) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[People_Religion](
	[Religion] [nvarchar](50) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[People_TravelToWork](
	[Travel_To_Work] [nvarchar](100) NOT NULL,
	[Number_Of_People] [float] NULL,
	[Percentage] [float] NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL
) 
GO

CREATE TABLE [dbo].[SuburbSummary](
	[Total_People] [int] NOT NULL,
	[Families] [int] NOT NULL,
	[Average_children_per_family] [float] NOT NULL,
	[Average_children_for_families_with_children] [float] NOT NULL,
	[Total_Businesses] [int] NOT NULL,
	[Median_age] [int] NOT NULL,
	[Averger_monthly_householde_mortgage_repayments] [float] NULL,
	[Average_monthly_household_rental_payment] [float] NULL,
	[Median_weekly_rent] [int] NOT NULL,
	[Median_weekly_household_income] [int] NOT NULL,
	[All_private_dwellings] [int] NOT NULL,
	[SuburbCode] [nvarchar](50) NOT NULL,
	[Suburb] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ABSData_1] PRIMARY KEY CLUSTERED 
(
	[SuburbCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) 
GO

