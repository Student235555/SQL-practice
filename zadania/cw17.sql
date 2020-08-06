select ProductID, Name, ProductNumber, Color, SafetyStockLevel
from Production.Product
where Color in (select Color
				from Production.Product
				where ProductNumber like 'C%'
				)
and SafetyStockLevel <= ALL (select SafetyStockLevel
						from Production.Product
						where ProductID > 900);

/*
Zadanie: Zmodyfikuj zapytanie z poprzedniego æwiczenia i tym razem zwróæ
rekordy, których kolor jest zgodny z kolorami produktów o kodach
(ProductNumber) zaczynaj¹cych siê na literê C. Drugi warunek dotycz¹cy
SafetyStockLevel ma zwracaæ rekordy, z wartoœci¹ mniejsz¹ lub równ¹ ka¿dej z
wartoœci SafetyStockLevel produktów o ID powy¿ej 900. U¿yj zapytañ
wielowierszowych. 
*/