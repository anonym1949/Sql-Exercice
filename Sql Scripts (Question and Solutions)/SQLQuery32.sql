-- Problem 32: Get all Vehicle_Display_Name, year, Age for vehicles that their age between 15 and 25 years old

select * From(
select distinct VehicleDetails.Vehicle_Display_Name,VehicleDetails.Year,
VehicleAge= YEAR(GETDATE())-Year
from VehicleDetails
)As TableA
where TableA.VehicleAge between 15 and  25
order by VehicleAge Desc