-- Problem 43: Get Make and Total Number Of Doors Manufactured Per Make



select Make,Sum(R1.NumDoors)As TotalDoors from(
select Makes.Make, VehicleDetails.NumDoors
from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
)R1 group by Make
order by TotalDoors Desc




select Makes.Make, Total = sum(VehicleDetails.NumDoors)
from VehicleDetails
inner join Makes on makes.MakeID = VehicleDetails.MakeID
group by Make
order by Total Desc