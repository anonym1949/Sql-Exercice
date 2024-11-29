
select TableA.Make , TableA.VehiculesNumbers
from
(select Makes.Make, VehiculesNumbers= Count(*) 
from VehicleDetails 

inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where (VehicleDetails.Year between 1950 and 2000)
group by Makes.Make

)As TableA
where TableA.VehiculesNumbers>12000
order by TableA.VehiculesNumbers DESC






--With Having

select Makes.Make, VehiculesNumbers= Count(*) 
from VehicleDetails 

inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where (VehicleDetails.Year between 1950 and 2000)

group by Makes.Make
having Count(*)>12000

order by VehiculesNumbers DESC



