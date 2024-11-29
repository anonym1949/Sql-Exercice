--Problem 13: Get all Makes/Count Of Vehicles that manufactures more than 20K Vehicles

select Makes.Make ,count(*)As TatalVehicles
from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
group by Make

having count(*)>=20000
order by TatalVehicles desc