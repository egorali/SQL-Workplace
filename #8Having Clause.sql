/* 
Having clause
*/

select JobTitle, COUNT(JobTitle)
from SQLTutorial2023.dbo.EmployeeDemographics
join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
Group by JobTitle

--checing jobs that have more tan one worker

select JobTitle, COUNT(JobTitle)
from SQLTutorial2023.dbo.EmployeeDemographics
join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

Group by JobTitle
having count(JobTitle)>1

select JobTitle, AVG(Salary) as AverageSalary
from SQLTutorial2023.dbo.EmployeeDemographics
join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

Group by JobTitle
order by avg(Salary)

--lets try it with having clause


select JobTitle, AVG(Salary) as AverageSalary
from SQLTutorial2023.dbo.EmployeeDemographics
join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

Group by JobTitle
having AVG(Salary)>45000
order by avg(Salary)
