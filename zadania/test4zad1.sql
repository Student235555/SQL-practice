select SalesOrderID, sum(LineTotal)
from Sales.SalesOrderDetail
group by SalesOrderID
having sum(LineTotal) between 5000 and 6000;