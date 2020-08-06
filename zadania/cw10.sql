/*
Zadanie: Dane z tabeli HumanResources.Employee pogrupuj po kolumnach
MaritalStatus i Gender. Wyci�gnij te dwie kolumny, a tak�e dodaj kolumn�,
kt�ra posumuje r�nice mi�dzy VacationHours, a SickLeaveHours dla ka�dej z
grup.
*/

select MaritalStatus, Gender, sum(VacationHours - SickLeaveHours) as "Do wykorzystania"
from HumanResources.Employee
group by MaritalStatus, Gender;