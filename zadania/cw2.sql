/*
Zadanie: Z tabeli Person.Address pobierz Address ID, oraz po��czenie kolumn
AddressLine1, City i PostalCode. Pomi�dzy warto�ciami z tych trzech kolumn
wstaw najpierw przecinek ze spacj�, a nast�pnie sam� spacj� (adres, miasto
kod). Nowej kolumnie nadaj alias Adres. 
*/

select AddressID, AddressLine1 + ', ' + City + ' ' + PostalCode as Adres
from Person.Address; 