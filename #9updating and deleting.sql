/*
updating /deleting data

*/

--using update and set
select *
from SQLTutorial2023.dbo.EmployeeDemographics
update SQLTutorial2023.dbo.EmployeeDemographics
set EmployeeID = 1012 
where FirstName ='Holly' and LastName = 'Flax'

select *
from SQLTutorial2023.dbo.EmployeeDemographics
update SQLTutorial2023.dbo.EmployeeDemographics
set Age=31, Gender= 'Female'
where FirstName ='Holly' and LastName = 'Flax'


-- we want to delete

Delete from SQLTutorial2023.dbo.EmployeeDemographics
Where EmployeeId= 1005