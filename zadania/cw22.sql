/*
Zadanie: Za pomoc� klauzuli WITH stw�rz zapytanie sk�adaj�ce si� z trzech
kolumn FirstName, LastName, oraz City, kt�re b�dzie po��czeniem 3 tabel
Person.Person, Person.BusinessEntityAddress, oraz Person.Address. Nazwy to
zapytanie aliasem AdresyLudzi i z tego �r�d�a wyci�gnij osoby dla kt�rych nie
znaleziono warto�ci w kolumnie City. 
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