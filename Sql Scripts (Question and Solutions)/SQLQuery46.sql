--  Problem 46: Get the highest 3 manufacturers that make the highest number of models

select Top 3 Makes.Make , Total=Count(*)
from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
group by Make 
order by Total desc