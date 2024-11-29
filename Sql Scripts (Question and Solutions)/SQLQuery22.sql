-- Problem 22: Get percentage of vehicles that has no doors specified 


  select cast (count(*) as float)/ (select count(*) from VehicleDetails) *100
  As PercentageOfVehicles from
  (
  select * from VehicleDetails
  where VehicleDetails.NumDoors is NUll)As Tab
  
  --second solution

  select
  (
  cast ((select count(*) from VehicleDetails where VehicleDetails.NumDoors is null) as float)
  
  /
  cast ((select count(*) from VehicleDetails) as float)
  *100
  ) As PercentageOfVehicles 



