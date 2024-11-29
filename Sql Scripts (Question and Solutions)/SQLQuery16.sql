-- Problem 16: Get all Makes that manufactures DriveTypeName = FWD 

select distinct DriveTypes.DriveTypeName, Makes.Make from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
inner join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
where DriveTypes.DriveTypeName = 'FWD'
order by make