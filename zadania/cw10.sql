/*
Zadanie: Dane z tabeli HumanResources.Employee pogrupuj po kolumnach
MaritalStatus i Gender. Wyci¹gnij te dwie kolumny, a tak¿e dodaj kolumnê,
która posumuje ró¿nice miêdzy VacationHours, a SickLeaveHours dla ka¿dej z
grup.
*/

select MaritalStatus, Gender, sum(VacationHours - SickLeaveHours) as "Do wykorzystania"
from HumanResources.Employee
group by MaritalStatus, Gender;