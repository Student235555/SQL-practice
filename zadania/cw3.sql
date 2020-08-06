/*
Zadanie: Z tabeli HumanResources.EmployeeDepartmentHistory zwr��
wszystkie rekordy, w kt�rych BusinessEntityID jest r�wny lub wi�kszy od 200,
oraz DepartmentID jest r�wny 6, lub 4. 
*/

select *
from HumanResources.EmployeeDepartmentHistory
where BusinessEntityID >= 200 and (DepartmentID = 6 or DepartmentID = 4);