/*
Zadanie: Z tabeli Production.Location wyci�gnij LocationID, Name, oraz
CostRate. Niech zapytanie zwr�ci tylko jeden rekord, kt�rego CostRate jest
najwy�szy. 
*/

select top 1 LocationID, Name, CostRate
from Production.Location
order by CostRate desc;