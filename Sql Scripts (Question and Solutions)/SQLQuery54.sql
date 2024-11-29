--Problem 54: Get All Employees managed by 'Mohammed'

select * from(
select Employees.EmployeeID, Employees.Name, Employees.Salary,Employees.ManagerID 
,case
when Managers.Name is null then Employees.Name 
else Managers.Name
end As ManagerName

from Employees

left join Employees As Managers on Employees.ManagerID = Managers.EmployeeID
)R1
where R1.ManagerID=1


select Employees.EmployeeID, Employees.Name, Employees.Salary,Employees.ManagerID ,Managers.Name As ManagerName
from Employees


left join Employees As Managers on Employees.ManagerID = Managers.EmployeeID
where Managers.Name='Mohammed'