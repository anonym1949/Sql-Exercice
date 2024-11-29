--Problem 37: Get total vehicles that have Engin_CC above average

select VehicleDetails.Vehicle_Display_Name , VehicleDetails.Engine_CC from VehicleDetails where
VehicleDetails.Engine_CC >(select  Avg(VehicleDetails.Engine_CC) from VehicleDetails)