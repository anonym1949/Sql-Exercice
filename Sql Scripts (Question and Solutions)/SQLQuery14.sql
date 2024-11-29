
 -- Problem 14: Get all Makes with make starts with 'B' 

select distinct Makes.Make from VehicleDetails
inner join Makes on  Makes.MakeID = VehicleDetails.MakeID
where Make like 'B%'
order by Make


select Makes.Make from makes where make like 'B%'