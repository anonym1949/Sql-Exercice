-- Problem 29: Return found=1 if there is any vehicle made in year 1950
select
case
when exists (select top 1 * from VehicleDetails where VehicleDetails.Year=1950) 
then 1
when not exists (select top 1 * from VehicleDetails where VehicleDetails.Year=1950) 
then 0
End as Found

