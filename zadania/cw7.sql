/*
Zadanie: Z tabeli Production.Product zwr�� kolumny Name, ProductNumber,
ListPrice, oraz kolumn� Color, w kt�rej w przypadku wyst�pienia null zamie� go
na fraz� �No color�. Dopilnuj aby kolumna zachowa�a swoj� nazw�. Wyfiltruj
tylko te rekordy, kt�rych warto�ci z koulmny ListPrice mieszcz� si� w zakresie
mi�dzy 100 a 200. Dane posortuj rosn�co po kolumnie ListPrice. 
*/

select Name, ProductNumber, ListPrice, isnull(Color, 'No color') as Color
from Production.Product
where ListPrice between 100 and 200
order by ListPrice;