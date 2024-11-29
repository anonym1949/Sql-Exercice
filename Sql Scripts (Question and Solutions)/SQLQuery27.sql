--Problem 27: Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'

select  VehicleDetails.*, Bodies.BodyName from vehicledetails
inner join bodies on Bodies.BodyID = VehicleDetails.BodyID
where BodyName in ('Sport Utility','Hatchback','Sedan') and VehicleDetails.Year>2020