--select distinct CarsInfo.Cylinder_Type_Name from CarsInfo

--update Id to main table
--update CarsInfo
--set CylinderID = (select ID from Cylinders where CarsInfo.CylinderID = Cylinders.Cylinder_Type)


-- for Rename
--exec sp_rename 'carsinfo.Cylinder_Type_Name', 'CylinderID','Column';


--insert Data to new table
--insert into Cylinders
--select distinct CarsInfo.Cylinder_Type_Name from CarsInfo order by CarsInfo.Cylinder_Type_Name


select BodyName, Cylinder_Type , CarsInfo.* from CarsInfo 
inner join Cylinders on ID = carsinfo.CylinderID 
inner join bodies on carsinfo.BodyID = Bodies.id

