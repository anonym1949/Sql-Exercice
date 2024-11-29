
  --Problem 21: Get Total Vehicles that number of doors is not specified
  
  select count(*)As TotalOFvehicles from
  (
  select * from VehicleDetails
  where VehicleDetails.NumDoors is NUll)As Tab