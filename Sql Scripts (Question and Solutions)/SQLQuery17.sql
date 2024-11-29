-- Problem 17: Get total Makes that Mantufactures DriveTypeName=FWD 

select count(*) from
(
select distinct DriveTypes.DriveTypeName, Makes.Make from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
inner join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
where DriveTypes.DriveTypeName = 'FWD'
)AS TablaA
