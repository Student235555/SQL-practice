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
Zadanie: Zmodyfikuj zapytanie z poprzedniego �wiczenia i tym razem zwr��
rekordy, kt�rych kolor jest zgodny z kolorami produkt�w o kodach
(ProductNumber) zaczynaj�cych si� na liter� C. Drugi warunek dotycz�cy
SafetyStockLevel ma zwraca� rekordy, z warto�ci� mniejsz� lub r�wn� ka�dej z
warto�ci SafetyStockLevel produkt�w o ID powy�ej 900. U�yj zapyta�
wielowierszowych. 
*/