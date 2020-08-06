select * 
from Production.Product P
inner join Production.ProductCostHistory PCH
on P.ProductID = PCH.ProductID
where P.Color is null;

