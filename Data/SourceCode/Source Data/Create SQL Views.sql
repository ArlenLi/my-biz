CREATE VIEW [dbo].[v_Dwelling]
AS
SELECT 
   'Dwelling Type' AS Facet
   ,[Dwelling_Structure] AS FacetInstance
   ,[Number_Of_Dwellins] AS InstanceNumber
   ,Suburb
FROM [dbo].[Dwelling_Structure]
UNION ALL
SELECT 
   'Tenure' AS Facet
   ,[Tenure] AS FacetInstance
   ,[Number_Of_Dwellins] AS InstanceNumber
   ,Suburb
FROM [dbo].[Dwelling_Tenure]
GO


CREATE VIEW [dbo].[v_Economy]
AS
SELECT 
   'Total Business' AS Facet
   ,[Businee_Size] AS FacetInstance
   ,[Number_Of_Businesses] AS InstanceNumber
   ,Suburb
FROM [dbo].[Business_Summary]
WHERE [Year]=2017
UNION ALL
SELECT 
   'Business Entreis' AS Facet
   ,[Businee_Size] AS FacetInstance
   ,[Number_of_Entries] AS InstanceNumber
   ,Suburb
FROM [dbo].[Business_Summary]
WHERE [Year]=2017
UNION ALL
SELECT 
   'Business Exits' AS Facet
   ,[Businee_Size] AS FacetInstance
   ,[Number_Of_Exits] AS InstanceNumber
   ,Suburb
FROM [dbo].[Business_Summary]
WHERE [Year]=2017
UNION ALL
SELECT
   'Industry' AS Facet
   ,[Industry_Type] AS FacetInstance
   ,[Number_Of_Businesses] AS InstanceNumber
   ,Suburb
FROM [dbo].[Business_Industries]
GO


CREATE View [dbo].[v_EducationReligion]
AS
SELECT 
   'Religion' AS Facet
   ,[Religion] AS FacetInstance
   ,[Number_Of_People] AS InstanceNumber
   ,Suburb
FROM [dbo].[People_Religion]
UNION ALL
SELECT 
   'Education Level' AS Facet
   ,[Education] AS FacetInstance
   ,[Number_Of_People] AS InstanceNumber
   ,Suburb
FROM [dbo].[People_Education]
GO

CREATE VIEW [dbo].[v_Employment]
AS
SELECT 
   'Employment' AS Facet
   ,[Employment] AS FacetInstance
   ,[Number_Of_People] AS InstanceNumber
   ,Suburb
FROM [dbo].[People_Employment]
UNION ALL
SELECT 
   'Occupation Distribution' AS Facet
   ,[Occupation] AS FacetInstance
   ,[Number_Of_People] AS InstanceNumber
   ,Suburb
FROM [dbo].[People_Occupation]
UNION ALL
SELECT 
   'Travel to Work' AS Facet
   ,[Travel_To_Work] AS FacetInstance
   ,[Number_Of_People] AS InstanceNumber
   ,Suburb
FROM [dbo].[People_TravelToWork]
GO

CREATE VIEW [dbo].[v_Family]
AS
SELECT 
   'Family Type' AS Facet
   ,[Family_Composition] AS FacetInstance
   ,[Number_Of_Families] AS InstanceNumber
   ,Suburb
FROM [dbo].[Family_Composition]
UNION ALL
SELECT 
   'Family Employment' AS Facet
   ,[Employment_Status] AS FacetInstance
   ,[Number_Of_Families] AS InstanceNumber
   ,Suburb
FROM [dbo].[Family_EmploymentStatus]
UNIOn ALL
SELECT 
   'Family Income/Repayment' AS Facet
   ,'Weekly Household Income' AS FacetInstance
   ,[Median_weekly_household_income] AS InstanceNumber
   ,SuburbCode
FROM [dbo].[SuburbSummary]
UNIOn ALL
SELECT 
   'Family Income/Repayment' AS Facet
   ,'Avg Monthly Rental Payment' AS FacetInstance
   ,[Average_monthly_household_rental_payment] AS InstanceNumber
   ,SuburbCode
FROM [dbo].[SuburbSummary]
UNION ALL
SELECT 
   'Family Income/Repayment' AS Facet
   ,'Avg Monthly Mortage Repayment' AS FacetInstance
   ,[Averger_monthly_householde_mortgage_repayments] AS InstanceNumber
   ,SuburbCode
FROM [dbo].[SuburbSummary]
UNIOn ALL
SELECT 
   'Family Scale' AS Facet
   ,'Total Family' AS FacetInstance
   ,[Families] AS InstanceNumber
   ,SuburbCode
FROM [dbo].[SuburbSummary]
UNIOn ALL
SELECT 
   'Family Scale' AS Facet
   ,'Avg Choldren per Family' AS FacetInstance
   ,[Average_children_per_family] AS InstanceNumber
   ,SuburbCode
FROM [dbo].[SuburbSummary]
GO

CREATE VIEW [dbo].[v_Population]
AS
SELECT 
   'Age' AS Facet
   ,[Age] AS FacetInstance
   ,[Number_Of_People] AS InstanceNumber
   ,Suburb
FROM [dbo].[People_Age]
UNION ALL
SELECT 
   'Gender' AS Facet
   ,[Gender] AS FacetInstance
   ,[Number_Of_People] AS InstanceNumber
   ,Suburb
FROM [dbo].[People_Gender]
UNION ALL
SELECT 
   'Language' AS Facet
   ,[Language] AS FacetInstance
   ,[Number_Of_People] AS InstanceNumber
   ,Suburb
FROM [dbo].[People_Language]
UNION ALL
SELECT 
   'Marital Status' AS Facet
   ,[Registered_Marital_Status] AS FacetInstance
   ,[Number_Of_People] AS InstanceNumber
   ,Suburb
FROM [dbo].[People_MaritalStatus]