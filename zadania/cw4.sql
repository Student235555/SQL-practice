/*
Zadanie: Z tabeli HumanResources.EmployeePayHistory wybierz kolumny
BusinessEntityID, Rate, oraz RateChangeDate. Wyfiltruj tylko te rekordy, w
kt�rych Rate wynosi mi�dzy 60 a 100, oraz zmiana stawki odby�a si� nie
wcze�niej ni� w 2009 roku. 
*/

select BusinessEntityID, Rate, RateChangeDate
from HumanResources.EmployeePayHistory
where (Rate between 60 and 100) and (RateChangeDate >= '20090101');