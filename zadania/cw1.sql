/*
Zadanie: Z tabeli HumanResources.Department wyci�gnij kolumn�
DepartmentID, oraz Name. Nadaj im aliasy Numer_Departamentu, oraz Nazwa
departamentu (Pierwsza nazwa jednocz�onowa, a druga dwucz�onowa). Zwr��
tylko 8 rekord�w. 
*/

select top 8 DepartmentID Numer_departamentu, Name as "Nazwa departamentu"
from HumanResources.Department;