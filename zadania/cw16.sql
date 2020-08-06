select ProductID, Name, ProductNumber, Color, SafetyStockLevel
from Production.Product
where Color = (select Color
			   from Production.Product
			   where ProductNumber = 'FL-2301')
and SafetyStockLevel >= (select SafetyStockLevel
						 from Production.Product
						 where Name = 'Chain');

/*Zadanie: Z tabeli Production.Product zwróæ kolumny ProductID, Name,
ProductNumber, Color, SafetyStockLevel. Wyfiltruj rekordy, które maj¹ kolor
taki jak produkt o numerze ‘FL-2301’, a ich SafetyStockLevel jest wiêkszy lub
równy poziomowi produktu o nazwie ‘Chain’. U¿yj podzapytañ.*/