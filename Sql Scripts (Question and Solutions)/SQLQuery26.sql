--Problem 26: Get all vehicles that their body is 'Sport Utility' and Year > 2020

select  VehicleDetails.*, Bodies.BodyName from vehicledetails
inner join bodies on Bodies.BodyID = VehicleDetails.BodyID
where BodyName='Sport Utility' and VehicleDetails.Year>2020