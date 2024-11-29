select Make= (select Makes.Make from Makes Where VehicleDetails.MakeID = Makes.MakeID)
,Vehiclesnumber= Count(*) from VehicleDetails where VehicleDetails.Year between 1950 and 2000


group by VehicleDetails.MakeID
order by Vehiclesnumber Desc


--select Makes.Make , VehiclesNumber=Count(*) from VehicleDetails
--inner join Makes on Makes.MakeID =VehicleDetails.MakeID
--where VehicleDetails.Year between 1950 and 2000
--group by Make 
--order by VehiclesNumber Desc 