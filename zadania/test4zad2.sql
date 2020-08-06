select lastname, count(lastname) as "Suma"
from Person.Person
group by lastname
order by count(lastname) desc;