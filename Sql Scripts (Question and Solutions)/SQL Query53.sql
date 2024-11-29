--  Problem 53: Get all employees that have manager or does not have manager along with Manager's name,
--incase no manager name the same employee name as manager to himself



select Employees.EmployeeID, Employees.Name, Employees.Salary,Employees.ManagerID 
,case
when Managers.Name is null then Employees.Name 
else Managers.Name
end As ManagerName

from Employees

left join Employees As Managers on Employees.ManagerID = Managers.EmployeeID

