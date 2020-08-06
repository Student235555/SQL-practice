/*
Zadanie: Z tabeli Person.CountryRegion zwróæ kolumnê Name, dodaj kolumnê
nazwie Alias, której zawartoœæ bêdzie wynikiem po³¹czenia pierwszej i ostatniej
litery nazwy, ale pierwsza litera ma byæ ma³a, a ostatnia du¿a (np. Afghanistan
zwróci wartoœæ aN). Dodaj jeszcze jedn¹ kolumnê, która w przypadku
jednocz³onowej nazwy zwróci po prostu nazwê (czyli zawartoœæ kolumny
Name), ale jeœli bêdzie to nazwa wielocz³onowa to ma zwróciæ wy³¹cznie
ostatni wyraz (np. American Samoa zwróci Samoa). 
*/

select Name, lower(left(Name, 1)) + upper(right(Name, 1)) as "Alias",
	case when charindex(' ', name) = 0 then name
	else right(name, charindex(' ', reverse(name))-1)
	end as "Ostatnie s³owo"
from Person.CountryRegion;