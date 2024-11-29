--  Problem 33: Get Minimum Engine CC , Maximum Engine CC , and Average Engine CC of all Vehicles
select 
Max=Max(vehicleDetails.Engine_CC),
Min=Min(vehicleDetails.Engine_CC),
Avg=Avg(vehicleDetails.Engine_CC)
from VehicleDetails