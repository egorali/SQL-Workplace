/* 
inner joins, full/left/right joins
-- combine tables
*/

-- when you are doing a join you have to do it based on same columns

select *
from SQLTutorial2023.dbo.EmployeeDemographics
inner join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeId


--inner join showing everything that is the same, let check the outer join


select *
from SQLTutorial2023.dbo.EmployeeDemographics
full outer join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeId


-- using left outer join to use overlapping columns and the right table

select *
from SQLTutorial2023.dbo.EmployeeDemographics
Left outer join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeId


-- select exactly what columns you want
select EmployeeDemographics.employeeID, FirstName,LastName, JobTitle,Salary 
from SQLTutorial2023.dbo.EmployeeDemographics
inner join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeId


-- want to check salaries 
select EmployeeDemographics.employeeID, FirstName,LastName,Salary 
from SQLTutorial2023.dbo.EmployeeDemographics
inner join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeId
where FirstName<>'michael'
order by salary desc

-- want to check salaries which are more than michael 
select EmployeeDemographics.employeeID, FirstName,LastName,Salary 
from SQLTutorial2023.dbo.EmployeeDemographics
inner join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeId
where Salary>65000
order by salary desc

--so there is no one



select Jobtitle,AVG(Salary) 
from SQLTutorial2023.dbo.EmployeeDemographics
inner join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeId
where jobtitle='Salesman'
Group by jobtitle