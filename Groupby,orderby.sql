/* 
Group by, order by
*/

Select *
from EmployeeDemographics


--When we select gender it shows gender of each row 
Select Gender
From EmployeeDemographics


--When we ask for the group it will add the number and will show the in only two rows
Select Gender
From EmployeeDemographics
Group by Gender

-- now if we want to count them we can easily add count too
Select Gender, count(Gender)
From EmployeeDemographics
Group by Gender


Select Gender,Age, count(Gender)
From EmployeeDemographics
Group by Gender,Age

-- and also we can use where function 

Select Gender,Age, count(Gender)
From EmployeeDemographics
Where age<30
Group by Gender,Age

-- by default sql is ordering ascending we can make di descending too
Select Gender,Age, count(Gender)
From EmployeeDemographics

Group by Gender,Age
Order by Age Desc

-- lets order the large table
Select *
from EmployeeDemographics
order by Age

-- we can do it by multiple columns, if they had same age female appears first
Select *
from EmployeeDemographics
order by Age,gender

-- we can make one ascending while other is descending
Select *
from EmployeeDemographics
order by Age,gender desc

--or we can use the column number instead of name
Select *
from EmployeeDemographics
order by 4,5 desc