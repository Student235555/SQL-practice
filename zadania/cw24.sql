/*
Zadanie: Z tabeli Production.Product wyci�gnij kolumny Name,
ProductNumber, oraz ListPrice. Dodaj kolumn� rankingu, kt�ra najwy�szym
warto�ciom w kolumnie ListPrice przypisze wynik 1. Dopilnuj, aby w rankingu
pojawi�y si� warto�ci wi�ksze ni� 0, oraz kolejne miejsca nie by�y pomijane tzn.
ma by� 1, 2 ,3 itd. 
*/

select Name, ProductNumber, ListPrice,
dense_rank() over (order by ListPrice desc) as "Ranking"
from Production.Product
where ListPrice > 0;