/*
Zadanie: Z tabeli HumanResources.Employee wyci¹gnij kolumny
BusinessEntityID i JobTitle. Dodaj kolumnê, która dla osób bez przypisanego
OrganizationLevel wyœwietli wartoœæ „Szef wszystkich szefów”, dla osób z
poziomu 1 i 2 wyœwietli „Wiceprezesi i managerowie”, a dla pozosta³ych
„Pracownicy”. Posortuj dane tak, aby na pierwszym miejscu by³ Szef, póŸniej
managerowie i na koñcu pracownicy. */

select BusinessEntityID, JobTitle,
	case when OrganizationLevel is null then 'Szef wszystkich szefow'
		 when OrganizationLevel < 2 then 'Wiceprezesi i managerowie'
		 else 'Pracownicy'
	end as "Poziom pracownika"
from HumanResources.Employee
order by OrganizationLevel;