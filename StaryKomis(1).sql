CREATE DATABASE StaryKomis
go
use StaryKomis
go

create table Kierowcy
	(
	Nr_k int IDENTITY(1,1) not null,
	Nazwisko varchar(20) not null,
	Imie varchar(15) not null,
	Ulica varchar(15) not null,
	Kod varchar(15) not null,
	Miasto varchar(15) not null,
	Primary key (Nr_k)	
	)
go

create table Handlarze
	(
	Nr_h int IDENTITY(1,1) not null,
	Nazwa varchar(20) not null,
	Ulica varchar(15) not null,
	Kod varchar(15) not null,
	Miasto varchar(25) not null,
	primary key (Nr_h)
	)
go

create table Samochody
	(
	Nr_s int IDENTITY(1,1)not null,
	Marka varchar(15) not null,
	Model varchar(15) not null,
	Pojemnosc float not null,
	Kolor varchar(10) not null,
	Rocznik int not null,
	Spalanie float not null,
	Nr_k int,
	Nr_h int,
	primary key (Nr_s),
	foreign key (Nr_k) references Kierowcy (Nr_k),
	foreign key (Nr_h) references Handlarze (Nr_h)
	)
go

--KIEROWCY
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Bartczyk','Dariusz','Grobelna 6','95-200','Pabianice')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Plich','Edward','Sienkiewicza 3','97-400','Be³chatów')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Gajda','Marcin','Ogrodowa 20','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Sobieryn','Mariusz','Podleœna 6','97-400','Be³chatów')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Sobieski','Arek','Kaczeñcowa 11','95-200','Pabianice')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Antoniak','Jerzy','Rolnicza 1','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Osowski','Przemek','Mickiewicza 9','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Banat','Micha³','Polna 7','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Mielczarek','Rafa³','Leœna 3','95-200','Pabianice')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Janeczek','Jarek','Krzywa 7','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Krawiec','Patryk','Robotnicza 6','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Denuszek','Marian','Odrodzenia 15','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Jurek','Mariusz','Narutowicza 5','97-400','Be³chatów')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Madej','Konrad','Sikorskiego 9','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Majda','Jan','Fabryczna 8','95-200','Pabianice')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Suwara','Zygmunt','Grobelna 8','97-400','Be³chatów')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Rychlik','Józef','Sienkiewicza 1','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Kubis','Krzysztof','Ogrodowa 7','95-200','Pabianice')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Durka','Andrzej','Narutowicza 4','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Owczarek','Maurycy','Torowa 12','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Berski','Tadeusz','Kolejowa 4','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Szuster','Marcin','Robotnicza 5','95-200','Pabianice')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Kowalski','Arek','Kaczeñcowa 10','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Nowak','Micha³','Mickiewicza 10','97-400','Be³chatów')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Jopek','Rafa³','Polna 9','95-200','Pabianice')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Kopias','Jan','Leœna 1','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Piechota','Dariusz','Ogrodowa 15','95-200','Pabianice')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Prusisz','Marek','Sikorskiego 7','98-200','Sieradz')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Kmiecik','Stanis³aw','Odrodzenia 9','97-400','Be³chatów')
insert into Kierowcy (Nazwisko,Imie,Ulica,Kod,Miasto) values ('Dancewicz','Stefan','Fabryczna 3','95-200','Pabianice')

--HANDLARZE

insert into Handlarze (Nazwa,Ulica,Kod,Miasto) values ('Auto-Extra','Fabryczna 5','95-200','Pabianice')
insert into Handlarze (Nazwa,Ulica,Kod,Miasto) values ('Super-Fura','Sienkiwicza 70','95-200','Pabianice')
insert into Handlarze (Nazwa,Ulica,Kod,Miasto) values ('Samochodzik','Ogrodowa 6','98-200','Sieradz')
insert into Handlarze (Nazwa,Ulica,Kod,Miasto) values ('Auto-Klasa','Mickiewicza 45','98-100','£ask')
insert into Handlarze (Nazwa,Ulica,Kod,Miasto) values ('Auto-NRD','Torowa 4','98-200','Sieradz')
insert into Handlarze (Nazwa,Ulica,Kod,Miasto) values ('Auto-Holland','Odrodzenia 98','98-200','Sieradz')
insert into Handlarze (Nazwa,Ulica,Kod,Miasto) values ('Ostrówek','£ódzka 65','98-220','Zduñska Wola')
insert into Handlarze (Nazwa,Ulica,Kod,Miasto) values ('Auto-Land','Podleœna 1A','98-100','£ask')

--SAMOCHODY

insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Mazda','626','1.8','Bordowy','1994','7.3','1')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Mazda','626','1.8','Czerwony','1995','8','2')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Mazda','626','1.6','Bordowy','2000','8','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Mazda','626','2.5','Bia³y','2001','8.2','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Mazda','626','2.0','Zielony','1997','8.8','5')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Mazda','626','2.0','Czarny','1997','7.6','6')

insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Peugeot','406','2.0','Czarny','1997','7.9','2')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Peugeot','406','2.0','Niebieski','1997','8.6','1')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Peugeot','406','2.0','Czerwony','1997','7.6','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Peugeot','406','1.8','Czarny','1997','9','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Peugeot','406','1.8','Bia³y','1998','9.2','5')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Peugeot','406','2.5','Czarny','1999','7.6','2')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Peugeot','206','2.5','Czarny','2000','7.6','1')

insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Renault','Laguna','1.8','Czarny','2000','11','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Renault','Laguna','2.0','Niebieski','2001','12','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Renault','Laguna','2.2','Czarny','2000','10','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Renault','Laguna','2.2','Niebieski','1998','11.2','5')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Renault','Laguna','2.5','Czarny','1999','11.1','6')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Renault','Laguna','2.5','Bordowy','2003','10','6')

insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Nissan','Primera','2.0','Zielony','2001','9.4','6')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Nissan','Almera','2.3','Czarny','2000','7.4','5')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Nissan','Maxima','3.0','Bia³y','1997','7.6','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Nissan','Primera','2.8','Czerwony','1998','8.2','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Nissan','300 ZX','3.0','Czarny','1996','10.5','2')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Nissan','Maxima','2.5','Granatowy','1999','10','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Nissan','Almera','2.0','Czarny','2003','8','1')

insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Honda','Civic','1.6','Czarny','2003','8.1','2')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Honda','Civic','1.4','Bordowy','2003','7.5','1')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Honda','CRX','2.0','Srebrny','2003','9.2','1')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Honda','CRX','2.5','Niebieski','2003','8.4','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Honda','Accord','2.0','Zielony','2003','8.7','1')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h)values('Honda','Accord','3.0','Czarny','2003','8.9','1')

insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Mazda','626','1.8','Bordowy','1994','7.3','1','1')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Mazda','626','1.8','Czerwony','1995','8','2','2')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Mazda','626','1.6','Bordowy','1990','8','3','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Mazda','626','2.5','Bia³y','1991','8.2','4','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Mazda','626','2.0','Zielony','1997','8.8','5','5')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Mazda','626','2.0','Czarny','1997','7.6','6','6')

insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Peugeot','406','2.0','Czarny','1997','7.9','7','1')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Peugeot','406','2.0','Niebieski','1997','8.6','8','2')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Peugeot','406','2.0','Czerwony','1997','7.6','9','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Peugeot','406','1.8','Czarny','1997','9','10','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Peugeot','406','1.8','Bia³y','1998','9.2','11','5')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Peugeot','406','2.5','Czarny','1999','7.6','12','6')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Peugeot','206','2.5','Czarny','1990','7.6','13','1')

insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Renault','Laguna','1.8','Czarny','1990','11','14','2')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Renault','Laguna','2.0','Niebieski','1991','12','15','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Renault','Laguna','2.2','Czarny','1990','10','16','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Renault','Laguna','2.2','Niebieski','1998','11.2','17','5')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Renault','Laguna','2.5','Czarny','1999','11.1','18','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Renault','Laguna','2.5','Bordowy','1993','10','19','1')

insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Nissan','Primera','2.0','Zielony','1991','9.4','20','6')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Nissan','Almera','2.3','Czarny','1990','7.4','21','6')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Nissan','Maxima','3.0','Bia³y','1997','7.6','22','5')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Nissan','Primera','2.8','Czerwony','1998','8.2','24','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Nissan','300 ZX','3.0','Czarny','1996','10.5','23','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Nissan','Maxima','2.5','Granatowy','1999','10','25','2')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Nissan','Almera','2.0','Czarny','1993','8','26','2')

insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Honda','Civic','1.6','Czarny','1993','8.1','1','1')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Honda','Civic','1.4','Bordowy','1993','7.5','2','1')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Honda','CRX','2.0','Srebrny','1993','9.2','3','3')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Honda','CRX','2.5','Niebieski','1993','8.4','3','5')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Honda','Accord','2.0','Zielony','1993','8.7','3','4')
insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_k,Nr_h)values('Honda','Accord','3.0','Czarny','1993','8.9','2','6')


