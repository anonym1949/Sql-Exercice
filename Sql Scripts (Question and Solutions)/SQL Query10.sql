--10 Get Make, FuelTypeName and Number of Vehicles per FuelType per Make--(


select  FuelTypes.FuelTypeName , Makes.Make ,count(*)
from VehicleDetails
inner join FuelTypes on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
inner join Makes on VehicleDetails.MakeID = Makes.MakeID
where VehicleDetails.Year between 1950 and 2000

group by make,FuelTypeName
order by Make
