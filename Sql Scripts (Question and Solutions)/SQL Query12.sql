--Problem 12: Count Vehicles by make and order them by NumberOfVehicles from high to low.

select Makes.Make ,count(*)As TaotalVehicles
from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
group by Make
order by TaotalVehicles desc