--Baza StaryKomis

--1 ile jest samochod�w, kt�re pal� mniej ni� 10 i ich marka zaczyna si� na M
--2 Ile jest samochod�w z rocznik�w od 1995 do 2000, kt�re pal� mniej ni� 9
--3 Ile jest samochod�w, kt�rych model jest 3 literowy i ich kolor to nie bordowy
--5 Wy�wietl �rednie spalanie ka�dej marki, kt�ra powsta�a po roku 1997
--i �rednie spalanie jest mniejsze ni� 8
--6 Kt�ry handlarz ma najwi�cej samochod�w.
--7 Wy�wietli� numery hanlarzy, kt�rzy maj� ponad 5 samochod�w
--8 Wy�wietl numery 3 kierowc�w, kt�rzy maj� najwi�cej samochod�w.
--9 Ile jest r�nych kolor�w samochod�w
--10 Wy�wietl list� najcz�ciej kupowanych samochod�w (Marka, model)

--select marka, model, COUNT(nr_k) from Samochody group by Marka, model order by 3 desc
select COUNT(distinct kolor) from samochody