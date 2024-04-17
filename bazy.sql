--Ile jest czym zasilanych samochod�w i ile �rednio pal�.
select COUNT(*) as 'ilosc', avg(spalanie) as 'srednie spalanie', zasilanie from samochody group by zasilanie; 
--Wy�wietli� �rednie ceny samochod�w kt�re s� nowsze ni� z 2005 i ich �rednia cena jest mniejsza ni� 50000
select marka, avg(cena) as 'cena' from samochody where rocznik > 2005 group by marka having avg(cena) < 50000;
--Obliczy� �rednie spalanie ka�dej marki, kt�ra nie jest zasilana LPG i ilo�� samochod�w tej marki jest wi�ksza ni� 3
select marka, AVG(spalanie) 'spalanie �rednie',COUNT(*) from samochody where zasilanie != ('lpg') group by marka having COUNT(*) > 3;
--Za jakiego miasta jest najwi�cej kierowc�w?
select top 1 miasto, COUNT(*) as kierowcy from kierowca group by miasto order by COUNT(*) desc;
--Wy�wietli� marki samochhod�w, kt�rych jest ponad 3 a ich �rednia cena nie przekracza 60000 i zaczynaj� si� na f albo o.
select marka, AVG(cena) as 'cena', COUNT(*) as 'ilosc' from samochody where marka like 'f%' or marka like 'o%' group by marka having COUNT(*) > 3 and AVG(cena) <= 60000;
--Wy�wietli� marki samochhod�w, kt�rych jest ponad 3 a ich �rednia cena nie przekracza 60000
select marka, AVG(cena) as 'cena', COUNT(*) as 'ilosc' from samochody group by marka having COUNT(*) > 3 and AVG(cena) <= 60000; 
--Jaki kolor jest najbardziej popularny (kolor, ilo��)
select top 1 count(kolor), kolor from samochody group by kolor order by count(kolor) desc;