--Zadanie: W tabeli HumanResources.Rodzice zmieñ imiê i nazwisko Jo Brown na Andrzej Nowak. 

update HumanResources.Rodzice
set LastName = 'Nowak', FirstName = 'Andrzej'
where LastName = 'Brown' and FirstName='Jo'; 