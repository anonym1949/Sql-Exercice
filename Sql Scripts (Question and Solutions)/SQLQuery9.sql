  --Problem 9: Get all vehicles that runs with GAS

  select VehicleDetails.* ,FuelTypes.FuelTypeName
  from VehicleDetails
  inner join  FuelTypes on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
  where FuelTypeName=N'Gas'
