/*
Zadanie: Z tabeli HumanResources.Employee wyci�gnij kolumny
BusinessEntityID i JobTitle. Dodaj kolumn�, kt�ra dla os�b bez przypisanego
OrganizationLevel wy�wietli warto�� �Szef wszystkich szef�w�, dla os�b z
poziomu 1 i 2 wy�wietli �Wiceprezesi i managerowie�, a dla pozosta�ych
�Pracownicy�. Posortuj dane tak, aby na pierwszym miejscu by� Szef, p�niej
managerowie i na ko�cu pracownicy. */

select BusinessEntityID, JobTitle,
	case when OrganizationLevel is null then 'Szef wszystkich szefow'
		 when OrganizationLevel < 2 then 'Wiceprezesi i managerowie'
		 else 'Pracownicy'
	end as "Poziom pracownika"
from HumanResources.Employee
order by OrganizationLevel;