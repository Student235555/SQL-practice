/*
Zadanie: Z tabeli Sales.SalesPerson zwróæ dwie kolumny. Jedna z nich to
kolumna SalesYTD, w której obciête bêd¹ miejsca po przecinku np. 559697.00,
a druga to kolumna, która zawieraæ bêdzie wartoœæ SalesYTD podzielon¹ przez
1000000 i zaokr¹glon¹ do dwóch miejsc po przecinku, oraz doklejon¹ fraz¹
‘mln’ np. 0.56 mln. 
*/

select round(SalesYTD, 0, 1), str(SalesYTD / 1000000, 5, 2) + ' mln'
from Sales.SalesPerson;