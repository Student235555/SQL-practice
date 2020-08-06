/*
Zadanie: Z tabeli Sales.SalesPerson zwr�� dwie kolumny. Jedna z nich to
kolumna SalesYTD, w kt�rej obci�te b�d� miejsca po przecinku np. 559697.00,
a druga to kolumna, kt�ra zawiera� b�dzie warto�� SalesYTD podzielon� przez
1000000 i zaokr�glon� do dw�ch miejsc po przecinku, oraz doklejon� fraz�
�mln� np. 0.56 mln. 
*/

select round(SalesYTD, 0, 1), str(SalesYTD / 1000000, 5, 2) + ' mln'
from Sales.SalesPerson;