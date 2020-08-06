/*
Zadanie: Z tabeli HumanResources.EmployeeDepartmentHistory zwr��
kolumny BusinessEntityID, oraz StartDate. Dodaj trzeci� kolumn�, kt�ra
zawiera� b�dzie tekst z informacj� o numerze pracownika, oraz liczbie lat i
miesi�cy przepracowanych przez t� osob� (np. Pracownik o numerze 1 zacz��
prac� 10 lat i 6 miesi�cy temu). 
*/

select BusinessEntityID,StartDate,
datediff(YEAR,startdate,cast(getdate() as date)),
case when month(getdate())>=month(startdate) then
'Pracownik o numerze ' + cast(BusinessEntityID as varchar)
 + ' zacz�� prac� ' +
cast(datediff(year,startdate,getdate()) as varchar)
 + ' lat i ' +
cast(datediff(month,startdate,getdate()) %
 12 as varchar) + ' miesi�cy temu'
else 'Pracownik o numerze ' + cast(BusinessEntityID as
varchar)
 + ' zacz�� prac� '+
cast(datediff(year,startdate,getdate()) -1 as varchar)
 + ' lat i ' +
cast(datediff(month,startdate,getdate()) %
 12 as varchar) + ' miesi�cy temu'
end as "Pocz�tek opowie�ci"
from HumanResources.EmployeeDepartmentHistory;