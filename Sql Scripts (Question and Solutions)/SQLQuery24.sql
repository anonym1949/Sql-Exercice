-- Problem 24: Get all vehicles that have Engines > 3 Liters and have only 2 doors 

select engine , NumDoors from VehicleDetails
where try_cast (left( engine,3) as float)>3 and VehicleDetails.NumDoors=2
order by engine desc



--easy solution
select Engine,NumDoors from VehicleDetails where VehicleDetails.Engine_Liter_Display >3  and VehicleDetails.NumDoors=2
