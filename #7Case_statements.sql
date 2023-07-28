/* 
case statement 
*/
-- looking for conditions
Select FirstName,LastName, Age,
case 
when age>30 Then 'OLD'
else 'young'
End
from SQLTutorial2023.dbo.EmployeeDemographics
WHERE Age is not null 

-- adding more cases
Select FirstName,LastName, Age,
case 
when age>30 Then 'OLD'
when age between 28 and 30 then 'Young'
else 'NewGraduate'
End
from SQLTutorial2023.dbo.EmployeeDemographics
WHERE Age is not null 

select FirstName,LastName,JobTitle,Salary,
CASE 
when JobTitle='Salesman' then Salary+(Salary*0.1)
when JobTitle='Accountant' then Salary+(Salary*0.05)
when JobTitle='HR' then Salary+(Salary*0.000001)
else Salary+(Salary*0.02)
end As SalaryAfterRaise
from SQLTutorial2023.dbo.EmployeeDemographics
join SQLTutorial2023.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID