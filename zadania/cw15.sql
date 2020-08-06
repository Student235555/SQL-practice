/*
Zadanie: Po³¹cz tabele HumanResources.Employee, oraz
HumanResources.JobCandidate tak, aby uzyskaæ wszystkie rekordy z tabeli
JobCandidate, a z Employee wy³¹cznie pasuj¹ce. Z tabeli JobCandidate zwróæ
tylko kolumnê z numerem JobCandidateID, a z tabeli Employee pobierz
wszystkie kolumny. Posortuj dane tak, aby na górze pojawili siê kandydaci,
którzy zostali zatrudnieni. 
*/

select JC.JobCandidateID, E.*
from HumanResources.Employee as E
right join HumanResources.JobCandidate as JC on E.BusinessEntityID = JC.BusinessEntityID
order by JC.BusinessEntityID desc;


