--  Problem 35: Get all vehicles that have the Maximum Engine_CC
select VehicleDetails.Vehicle_Display_Name , VehicleDetails.Engine_CC from VehicleDetails where
VehicleDetails.Engine_CC =(select  Max(VehicleDetails.Engine_CC) from VehicleDetails)