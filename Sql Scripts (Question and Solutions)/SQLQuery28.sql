--  Problem 28: Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan' and manufactured in year 2008 or 2020 or 2021

select  VehicleDetails.*, Bodies.BodyName from vehicledetails
inner join bodies on Bodies.BodyID = VehicleDetails.BodyID
where BodyName in ('Sport Utility','Hatchback','Sedan') and VehicleDetails.Year in(2008 , 2020 , 2021)
order by VehicleDetails.Year