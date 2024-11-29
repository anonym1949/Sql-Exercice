--  Problem 47: Get the highest number of models manufactured

select top 1 Makes.Make, Total = count(*)
from Makes
inner join MakeModels on MakeModels.MakeID = Makes.MakeID
group by Make
order by Total desc



select  Big = Max(Total)
from(
select  Makes.Make, Total = count(*)
from Makes
inner join MakeModels on MakeModels.MakeID = Makes.MakeID
group by Make
)R1

