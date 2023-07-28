/*
Aliasing
*/

select FirstName+ ' '+ LastName as FullName
from SQLTutorial2023.dbo.EmployeeDemographics


select Avg(Age) as AvgAge
from SQLTutorial2023.dbo.EmployeeDemographics 


-- now we can alias names of tables too
select Demo.EmployeeID, Sal.Salary
from SQLTutorial2023.dbo.EmployeeDemographics as Demo
join SQLTutorial2023.dbo.EmployeeSalary as Sal
on Demo.EmployeeID=Sal.EmployeeId

