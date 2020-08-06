/*
Zadanie: Z tabeli HumanResources.EmployeeDepartmentHistory zwróæ
wszystkie rekordy, w których BusinessEntityID jest równy lub wiêkszy od 200,
oraz DepartmentID jest równy 6, lub 4. 
*/

select *
from HumanResources.EmployeeDepartmentHistory
where BusinessEntityID >= 200 and (DepartmentID = 6 or DepartmentID = 4);