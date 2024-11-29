--Problem 49: Get the Lowest Manufacturers manufactured the lowest number of models

select Makes.Make ,Total =count(*)
from MakeModels
inner join Makes on MakeModels.MakeID = makes.MakeID
group by Make
having count(*) =

(
select Maximum = Min (Total) from
(
select Makes.Make, Total = Count(*)
from Makes
inner join MakeModels on MakeModels.MakeID = Makes.MakeID
group by Make
)R2
)