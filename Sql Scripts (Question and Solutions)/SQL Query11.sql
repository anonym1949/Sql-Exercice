 -- Problem 11: Get Total Makes that runs with GAS

 select Count(*) As Total from(
  select Distinct Make,FuelTypeName -- Total= Count(*)
  from VehicleDetails
inner join Makes on VehicleDetails.MakeID = Makes.MakeID
inner join FuelTypes on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID

  where FuelTypes.FuelTypeName = N'GAS')
  As TAbleA