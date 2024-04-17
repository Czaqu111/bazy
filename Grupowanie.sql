--Baza StaryKomis

--1 ile jest samochodów, które pal¹ mniej ni¿ 10 i ich marka zaczyna siê na M
--2 Ile jest samochodów z roczników od 1995 do 2000, które pal¹ mniej ni¿ 9
--3 Ile jest samochodów, których model jest 3 literowy i ich kolor to nie bordowy
--5 Wyœwietl œrednie spalanie ka¿dej marki, która powsta³a po roku 1997
--i œrednie spalanie jest mniejsze ni¿ 8
--6 Który handlarz ma najwiêcej samochodów.
--7 Wyœwietliæ numery hanlarzy, którzy maj¹ ponad 5 samochodów
--8 Wyœwietl numery 3 kierowców, którzy maj¹ najwiêcej samochodów.
--9 Ile jest ró¿nych kolorów samochodów
--10 Wyœwietl listê najczêœciej kupowanych samochodów (Marka, model)

--select marka, model, COUNT(nr_k) from Samochody group by Marka, model order by 3 desc
select COUNT(distinct kolor) from samochody