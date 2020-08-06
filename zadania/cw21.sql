/*Zadanie: Z tabeli HumanResources.Rodzice i Person.Person wyci¹gnij wspólne
rekordy, które zawieraj¹ Imiê i Nazwisko. U¿yj odpowiedniego z³¹czenia
pionowego*/


select FirstName, LastName
from HumanResources.Rodzice
intersect
select FirstName, LastName
from Person.Person;