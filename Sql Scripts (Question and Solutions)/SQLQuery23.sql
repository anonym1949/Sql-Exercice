 --Problem 23: Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite' 

 select distinct VehicleDetails.MakeID, Makes.Make, SubModels.SubModelName
 from VehicleDetails
       inner join Makes on Makes.MakeID = VehicleDetails.MakeID
	   inner join SubModels on SubModels.SubModelID = VehicleDetails.SubModelID
where SubModelName='Elite'
order by Make