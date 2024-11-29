-- Problem 19: Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000

SELECT * FROM
(
 select Makes.Make , DriveTypes.DriveTypeName, count(*) As Total
 from VehicleDetails
 inner join Makes on Makes.MakeID = VehicleDetails.MakeID
 inner join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID  
 group by Make,DriveTypeName
 )as TableA
 where TableA.Total>=10000
  order by make asc ,Total desc


  --second way
  

 select Makes.Make , DriveTypes.DriveTypeName, count(*) As Total
 from VehicleDetails
 inner join Makes on Makes.MakeID = VehicleDetails.MakeID
 inner join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID  
 group by Make,DriveTypeName
 having count(*)>=10000
 order by make asc ,Total desc
