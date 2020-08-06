/*
Zadanie: Z tabeli Production.Product zwróæ kolumny Name, ProductNumber,
ListPrice, oraz kolumnê Color, w której w przypadku wyst¹pienia null zamieñ go
na frazê ‘No color’. Dopilnuj aby kolumna zachowa³a swoj¹ nazwê. Wyfiltruj
tylko te rekordy, których wartoœci z koulmny ListPrice mieszcz¹ siê w zakresie
miêdzy 100 a 200. Dane posortuj rosn¹co po kolumnie ListPrice. 
*/

select Name, ProductNumber, ListPrice, isnull(Color, 'No color') as Color
from Production.Product
where ListPrice between 100 and 200
order by ListPrice;