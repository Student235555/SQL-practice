/*
Zadanie: Po��cz tabele HumanResources.Employee, oraz
HumanResources.JobCandidate tak, aby uzyska� wszystkie rekordy z tabeli
JobCandidate, a z Employee wy��cznie pasuj�ce. Z tabeli JobCandidate zwr��
tylko kolumn� z numerem JobCandidateID, a z tabeli Employee pobierz
wszystkie kolumny. Posortuj dane tak, aby na g�rze pojawili si� kandydaci,
kt�rzy zostali zatrudnieni. 
*/

select JC.JobCandidateID, E.*
from HumanResources.Employee as E
right join HumanResources.JobCandidate as JC on E.BusinessEntityID = JC.BusinessEntityID
order by JC.BusinessEntityID desc;


