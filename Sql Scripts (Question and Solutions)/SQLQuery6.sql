-- Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside


select  Make, VehiclesNumber,Total
from
(
select Makes.Make ,VehiclesNumber=Count(*),Total=(select Count(*) from VehicleDetails where VehicleDetails.Year between 1950 and 2000)
from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID


where VehicleDetails.Year between 1950 and 2000
group by Make
)

As TableA
order by TableA.VehiclesNumber DESC

--select * from VehicleDetails


