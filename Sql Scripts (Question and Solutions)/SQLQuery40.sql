--Problem 40: Get all vehicles that has one of the Max 3 Engine CC

select  VehicleDetails.Vehicle_Display_Name, VehicleDetails.Engine_CC
from VehicleDetails

where VehicleDetails.Engine_CC in (select distinct top 3 VehicleDetails.Engine_CC from VehicleDetails order by VehicleDetails.Engine_CC desc)
order by VehicleDetails.Engine_CC desc