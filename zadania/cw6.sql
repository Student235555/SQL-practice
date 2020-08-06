/*
Zadanie: Z tabeli HumanResources.EmployeePayHistory zwr�� kolumn�
BusinessEntityID, kolumn� RateChangeDate przekonwertowan� na dat� (bez
godziny) z aliasem Data zmiany, kolumn� Rate, oraz kolumn� Rate jako tekst z
maksymaln� liczb� znak�w 7, oraz 3 miejscami po przecinku. Ostatniej
kolumnie nadaj alias Sformatowana stawka. */

select BusinessEntityID, cast(RateChangeDate as date) as "Data zmiany",
Rate, str(Rate, 7, 3) as "Sformatowana stawka"
from HumanResources.EmployeePayHistory;