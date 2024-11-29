--Problem 50: Get all Fuel Types , each time the result should be showed in random order


--select NewId() As GUID,* from FuelTypes
--order by GUID


select * from FuelTypes
order by NewId()