--  Problem 52: Get all employees that have manager or does not have manager along with Manager's name, incase no manager name show null

select Employees.EmployeeID, Employees.Name, Employees.Salary,Employees.ManagerID , Managers.Name As ManagerName
from Employees
left join Employees As Managers on Employees.ManagerID = Managers.EmployeeID