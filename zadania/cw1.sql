/*
Zadanie: Z tabeli HumanResources.Department wyci¹gnij kolumnê
DepartmentID, oraz Name. Nadaj im aliasy Numer_Departamentu, oraz Nazwa
departamentu (Pierwsza nazwa jednocz³onowa, a druga dwucz³onowa). Zwróæ
tylko 8 rekordów. 
*/

select top 8 DepartmentID Numer_departamentu, Name as "Nazwa departamentu"
from HumanResources.Department;