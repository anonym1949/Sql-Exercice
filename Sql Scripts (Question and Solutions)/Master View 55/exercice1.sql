create view VehicleMasterDetails As
select 

VehicleDetails.ID ,

VehicleDetails.MakeID,

Makes.Make As Make,
 
VehicleDetails.ModelID As ModelID,

MakeModels.ModelName,

VehicleDetails.SubModelID,

SubModels.SubModelName as SubModelName,

VehicleDetails.BodyID,

Bodies.BodyName as BodyName,

VehicleDetails.Vehicle_Display_Name As Vehicle_Display_Name,

VehicleDetails.Year,

VehicleDetails.DriveTypeID,

DriveTypes.DriveTypeName As DriveTypeName,

VehicleDetails.Engine As Engine,

VehicleDetails.Engine_CC As Engine_CC,

VehicleDetails.Engine_Cylinders As Engine_Cylinders,

VehicleDetails.Engine_Liter_Display As Engine_Liter_Display,

VehicleDetails.FuelTypeID,

FuelTypes.FuelTypeName

from VehicleDetails

inner join Makes on VehicleDetails.MakeID = Makes.MakeID

inner join MakeModels on vehicleDetails.ModelID = MakeModels.ModelID

inner join SubModels on  VehicleDetails.SubModelID =  SubModels.SubModelID

inner join Bodies  on VehicleDetails.BodyID = Bodies.BodyID

left join  DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID

left join  FuelTypes on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID



--select * from VehicleMasterDetails

