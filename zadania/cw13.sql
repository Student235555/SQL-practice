/*
Zadanie: Z tabeli HumanResources.EmployeeDepartmentHistory zwróæ
kolumny BusinessEntityID, oraz StartDate. Dodaj trzeci¹ kolumnê, która
zawieraæ bêdzie tekst z informacj¹ o numerze pracownika, oraz liczbie lat i
miesiêcy przepracowanych przez tê osobê (np. Pracownik o numerze 1 zacz¹³
pracê 10 lat i 6 miesiêcy temu). 
*/

select BusinessEntityID,StartDate,
datediff(YEAR,startdate,cast(getdate() as date)),
case when month(getdate())>=month(startdate) then
'Pracownik o numerze ' + cast(BusinessEntityID as varchar)
 + ' zacz¹³ pracê ' +
cast(datediff(year,startdate,getdate()) as varchar)
 + ' lat i ' +
cast(datediff(month,startdate,getdate()) %
 12 as varchar) + ' miesiêcy temu'
else 'Pracownik o numerze ' + cast(BusinessEntityID as
varchar)
 + ' zacz¹³ pracê '+
cast(datediff(year,startdate,getdate()) -1 as varchar)
 + ' lat i ' +
cast(datediff(month,startdate,getdate()) %
 12 as varchar) + ' miesiêcy temu'
end as "Pocz¹tek opowieœci"
from HumanResources.EmployeeDepartmentHistory;