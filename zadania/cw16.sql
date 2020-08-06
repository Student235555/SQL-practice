select ProductID, Name, ProductNumber, Color, SafetyStockLevel
from Production.Product
where Color = (select Color
			   from Production.Product
			   where ProductNumber = 'FL-2301')
and SafetyStockLevel >= (select SafetyStockLevel
						 from Production.Product
						 where Name = 'Chain');

/*Zadanie: Z tabeli Production.Product zwr�� kolumny ProductID, Name,
ProductNumber, Color, SafetyStockLevel. Wyfiltruj rekordy, kt�re maj� kolor
taki jak produkt o numerze �FL-2301�, a ich SafetyStockLevel jest wi�kszy lub
r�wny poziomowi produktu o nazwie �Chain�. U�yj podzapyta�.*/