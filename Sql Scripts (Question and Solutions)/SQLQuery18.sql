 --Problem 18: Get total vehicles per DriveTypeName Per Make and order them per make asc then per total Desc 
 select Makes.Make , DriveTypes.DriveTypeName, count(*) As Total
 from VehicleDetails
 inner join Makes on Makes.MakeID = VehicleDetails.MakeID
 inner join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID  
 group by Make,DriveTypeName
 order by make asc ,Total desc

