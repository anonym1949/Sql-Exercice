--  Problem 45: Get Number of Models Per Make


select Makes.Make , Total=Count(*)
from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
group by Make 
order by Total desc