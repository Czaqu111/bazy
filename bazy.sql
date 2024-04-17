--Ile jest czym zasilanych samochodów i ile œrednio pal¹.
select COUNT(*) as 'ilosc', avg(spalanie) as 'srednie spalanie', zasilanie from samochody group by zasilanie; 
--Wyœwietliæ œrednie ceny samochodów które s¹ nowsze ni¿ z 2005 i ich œrednia cena jest mniejsza ni¿ 50000
select marka, avg(cena) as 'cena' from samochody where rocznik > 2005 group by marka having avg(cena) < 50000;
--Obliczyæ œrednie spalanie ka¿dej marki, która nie jest zasilana LPG i iloœæ samochodów tej marki jest wiêksza ni¿ 3
select marka, AVG(spalanie) 'spalanie œrednie',COUNT(*) from samochody where zasilanie != ('lpg') group by marka having COUNT(*) > 3;
--Za jakiego miasta jest najwiêcej kierowców?
select top 1 miasto, COUNT(*) as kierowcy from kierowca group by miasto order by COUNT(*) desc;
--Wyœwietliæ marki samochhodów, których jest ponad 3 a ich œrednia cena nie przekracza 60000 i zaczynaj¹ siê na f albo o.
select marka, AVG(cena) as 'cena', COUNT(*) as 'ilosc' from samochody where marka like 'f%' or marka like 'o%' group by marka having COUNT(*) > 3 and AVG(cena) <= 60000;
--Wyœwietliæ marki samochhodów, których jest ponad 3 a ich œrednia cena nie przekracza 60000
select marka, AVG(cena) as 'cena', COUNT(*) as 'ilosc' from samochody group by marka having COUNT(*) > 3 and AVG(cena) <= 60000; 
--Jaki kolor jest najbardziej popularny (kolor, iloœæ)
select top 1 count(kolor), kolor from samochody group by kolor order by count(kolor) desc;