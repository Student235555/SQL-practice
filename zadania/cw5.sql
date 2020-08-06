/*
Zadanie: Z tabeli Production.Location wyci¹gnij LocationID, Name, oraz
CostRate. Niech zapytanie zwróci tylko jeden rekord, którego CostRate jest
najwy¿szy. 
*/

select top 1 LocationID, Name, CostRate
from Production.Location
order by CostRate desc;