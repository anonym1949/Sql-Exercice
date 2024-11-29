--  Problem 36: Get all vehicles that have Engin_CC below average

select VehicleDetails.Vehicle_Display_Name , VehicleDetails.Engine_CC from VehicleDetails where
VehicleDetails.Engine_CC <(select  Avg(VehicleDetails.Engine_CC) from VehicleDetails)