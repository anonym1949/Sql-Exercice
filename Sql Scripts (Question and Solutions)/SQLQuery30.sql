--Problem 30: Get all Vehicle_Display_Name, NumDoors and add extra column to describe number of doors by words, and if door is null display 'Not Set'

select distinct VehicleDetails.Vehicle_Display_Name, VehicleDetails.NumDoors,
case 
     when NumDoors is NuLL then 'Not Set' 
	 when NumDoors =0 then 'Zero Door'
	 when NumDoors =1 then 'One Door'
     when NumDoors =2 then 'Two Doors' 
	 when NumDoors =3 then 'Three Doors' 
     when NumDoors =4 then 'Four Doors' 
	 when NumDoors =5 then 'Five Doors' 
     when NumDoors =6 then 'Six Doors' 
	 when NumDoors =8 then 'Eight Doors' 
	 else'Unknown'
End As NumDoorsByWord
from VehicleDetails
 order by NumDoors desc