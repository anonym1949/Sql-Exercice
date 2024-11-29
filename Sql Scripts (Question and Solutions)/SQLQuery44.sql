--  Problem 44: Get Total Number Of Doors Manufactured by 'Ford'
select Make,Sum(R1.NumDoors)As TotalDoors from(
select Makes.Make, VehicleDetails.NumDoors
from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
)R1 
group by Make
having Make ='Ford'
order by TotalDoors Desc
