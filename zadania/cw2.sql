/*
Zadanie: Z tabeli Person.Address pobierz Address ID, oraz po³¹czenie kolumn
AddressLine1, City i PostalCode. Pomiêdzy wartoœciami z tych trzech kolumn
wstaw najpierw przecinek ze spacj¹, a nastêpnie sam¹ spacjê (adres, miasto
kod). Nowej kolumnie nadaj alias Adres. 
*/

select AddressID, AddressLine1 + ', ' + City + ' ' + PostalCode as Adres
from Person.Address; 