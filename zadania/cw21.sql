/*Zadanie: Z tabeli HumanResources.Rodzice i Person.Person wyci�gnij wsp�lne
rekordy, kt�re zawieraj� Imi� i Nazwisko. U�yj odpowiedniego z��czenia
pionowego*/


select FirstName, LastName
from HumanResources.Rodzice
intersect
select FirstName, LastName
from Person.Person;