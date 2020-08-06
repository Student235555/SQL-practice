/*
Zadanie: Z tabeli Production.Product wyci¹gnij kolumny Name,
ProductNumber, oraz ListPrice. Dodaj kolumnê rankingu, która najwy¿szym
wartoœciom w kolumnie ListPrice przypisze wynik 1. Dopilnuj, aby w rankingu
pojawi³y siê wartoœci wiêksze ni¿ 0, oraz kolejne miejsca nie by³y pomijane tzn.
ma byæ 1, 2 ,3 itd. 
*/

select Name, ProductNumber, ListPrice,
dense_rank() over (order by ListPrice desc) as "Ranking"
from Production.Product
where ListPrice > 0;