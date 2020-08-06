/*
Zadanie: Za pomoc¹ klauzuli WITH stwórz zapytanie sk³adaj¹ce siê z trzech
kolumn FirstName, LastName, oraz City, które bêdzie po³¹czeniem 3 tabel
Person.Person, Person.BusinessEntityAddress, oraz Person.Address. Nazwy to
zapytanie aliasem AdresyLudzi i z tego Ÿród³a wyci¹gnij osoby dla których nie
znaleziono wartoœci w kolumnie City. 
*/

with AdresyLudzi as (
select P.FirstName, P.LastName, A.City
from Person.Person as P
left join Person.BusinessEntityAddress as BEA
on P.BusinessEntityID = BEA.BusinessEntityID
left join Person.Address as A
on A.AddressID = BEA.AddressID)

select *
from AdresyLudzi
where City is null;