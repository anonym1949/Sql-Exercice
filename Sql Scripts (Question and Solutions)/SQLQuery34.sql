--  Problem 34: Get all vehicles that have the minimum Engine_CC
select VehicleDetails.Vehicle_Display_Name , VehicleDetails.Engine_CC from VehicleDetails where
VehicleDetails.Engine_CC =(select  Min(VehicleDetails.Engine_CC) from VehicleDetails)