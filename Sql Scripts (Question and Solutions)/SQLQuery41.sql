--  Problem 41: Get all Makes that manufactures one of the Max 3 Engine CC

select distinct Makes.Make , VehicleDetails.Engine_CC from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where VehicleDetails.Engine_CC in (select distinct top 3 VehicleDetails.Engine_CC from VehicleDetails order by VehicleDetails.Engine_CC desc)
order by Make DESC















--SELECT        distinct Makes.Make
--FROM            VehicleDetails INNER JOIN
--                         Makes ON VehicleDetails.MakeID = Makes.MakeID
--WHERE        (VehicleDetails.Engine_CC IN
--                             (SELECT DISTINCT TOP (3) Engine_CC
--                               FROM            VehicleDetails 
--                               ORDER BY Engine_CC DESC)
--							 )

--Order By Make