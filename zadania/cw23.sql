/*
Zadanie: Zdeklaruj dwie zmienne NowyWiek i NowaData. Zmiennej NowyWiek
przypisz warto�� 3, a zmiennej NowaData dat� dzisiejsz� pomniejszon� o
warto�� zmiennej NowyWiek. Zmiennych u�yj do zmiany wieku i daty urodzenia
dziecka o imieniu Adas w tabeli HumanResources.Dzieciaczki. 
*/

declare @NowyWiek int = 3

declare @NowaData date = dateadd(year,-
@NowyWiek,getdate())update HumanResources.Dzieciaczkiset Aktualny_wiek = @NowyWiek,data_urodzenia = @NowaDatawhere imie = 'Adas';