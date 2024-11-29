--  Problem 51: Get all employees that have manager along with Manager's name.
select * from Employees

select Employees.EmployeeID,Employees.Name,Employees.Salary,Managers.Name As ManagerName
from Employees 
inner join Employees Managers on Employees.ManagerID = Managers.EmployeeID

