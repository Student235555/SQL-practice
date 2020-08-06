/*
Zadanie: Z tabeli Person.CountryRegion zwr�� kolumn� Name, dodaj kolumn�
nazwie Alias, kt�rej zawarto�� b�dzie wynikiem po��czenia pierwszej i ostatniej
litery nazwy, ale pierwsza litera ma by� ma�a, a ostatnia du�a (np. Afghanistan
zwr�ci warto�� aN). Dodaj jeszcze jedn� kolumn�, kt�ra w przypadku
jednocz�onowej nazwy zwr�ci po prostu nazw� (czyli zawarto�� kolumny
Name), ale je�li b�dzie to nazwa wielocz�onowa to ma zwr�ci� wy��cznie
ostatni wyraz (np. American Samoa zwr�ci Samoa). 
*/

select Name, lower(left(Name, 1)) + upper(right(Name, 1)) as "Alias",
	case when charindex(' ', name) = 0 then name
	else right(name, charindex(' ', reverse(name))-1)
	end as "Ostatnie s�owo"
from Person.CountryRegion;