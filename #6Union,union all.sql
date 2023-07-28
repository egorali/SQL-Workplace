/*
Union, union all

*/
-- first we have to create tables 
Create Table WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')


Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')



Select *
from SQLTutorial2023.dbo.EmployeeDemographics
union 
select * 
from SQLTutorial2023.dbo.WareHouseEmployeeDemographics


--union all will merge everything regardless of if they are duplicated, 
--it is showing everything as it is by union will delet duplicates
Select *
from SQLTutorial2023.dbo.EmployeeDemographics
union all
select * 
from SQLTutorial2023.dbo.WareHouseEmployeeDemographics

