/*
Zadanie: Z tabeli Sales.SalesPerson zwróæ maksymaln¹ wartoœæ z kolumny
SalesQuota, œredni¹ z kolumny SalesQuota, oraz œredni¹ z tej samej kolumny,
która da prawid³owy wynik (w kolumnie SalesQuota wystêpuj¹ nulle). 
*/

select max(SalesQuota), avg(SalesQuota), avg(isnull(SalesQuota, 0))
from Sales.SalesPerson;