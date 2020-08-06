/*
Zadanie: Z tabeli Sales.SalesPerson zwr�� maksymaln� warto�� z kolumny
SalesQuota, �redni� z kolumny SalesQuota, oraz �redni� z tej samej kolumny,
kt�ra da prawid�owy wynik (w kolumnie SalesQuota wyst�puj� nulle). 
*/

select max(SalesQuota), avg(SalesQuota), avg(isnull(SalesQuota, 0))
from Sales.SalesPerson;