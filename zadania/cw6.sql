/*
Zadanie: Z tabeli HumanResources.EmployeePayHistory zwróæ kolumnê
BusinessEntityID, kolumnê RateChangeDate przekonwertowan¹ na datê (bez
godziny) z aliasem Data zmiany, kolumnê Rate, oraz kolumnê Rate jako tekst z
maksymaln¹ liczb¹ znaków 7, oraz 3 miejscami po przecinku. Ostatniej
kolumnie nadaj alias Sformatowana stawka. */

select BusinessEntityID, cast(RateChangeDate as date) as "Data zmiany",
Rate, str(Rate, 7, 3) as "Sformatowana stawka"
from HumanResources.EmployeePayHistory;