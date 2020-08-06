/*
Zadanie: Po³¹cz z sob¹ 3 tabele Person.BusinessEntityAddress, Person.Address,
oraz Person.AddressType. W wyniku zapytania nale¿y uzyskaæ kolumny z
numerem osoby (BusinessEntityID), nazwa typu adresu (Name), i adresem
(AddressLine1, PostalCode, oraz City). */

select BEA.BusinessEntityID, AT.Name, A.AddressLine1, A.PostalCode, A.City
from Person.BusinessEntityAddress as BEA
inner join Person.Address as A on BEA.AddressID = A.AddressID
inner join Person.AddressType as AT on BEA.AddressTypeID = AT.AddressTypeID
order by BusinessEntityID;

