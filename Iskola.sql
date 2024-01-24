CREATE DATABASE Iskola
	CHARACTER SET utf8
	COLLATE utf8_hungarian_ci;


CREATE TABLE iskola.tanulok (
  nev VARCHAR(255) DEFAULT NULL,
  osztaly VARCHAR(10) DEFAULT NULL,
  szulev INT(11) DEFAULT NULL,
  osztondij DECIMAL(10, 0) DEFAULT NULL,
  atlag DECIMAL(10, 0) DEFAULT NULL,
  neme VARCHAR(10) DEFAULT NULL
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 16384,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

USE iskola;


DELETE FROM tanulok;

INSERT INTO tanulok 
  (nev, osztaly, szulev, osztondij, atlag, neme)
  VALUES
  ('pisti', '10a', 2003, 4500, 3.5, 'fiú'),
  ('géza', '10b', 2003, 3500, 4.9, 'fiú'),
  ('anna', '10a', 2004, 1500, 2.7, 'lány'),
  ('géza', '10a', 2003, 4500, 3.8, 'fiú'),
  ('roland', '10b', 2003, 5500, 3.5, 'fiú'),
  ('betti', '10a', 2004, 4500, 4.5, 'lány'),
  ('gábor', '10a', 2003, 3500, 3.6, 'fiú'),
  ('hugó', '10b', 2003, 4500, 4.3, 'fiú'),
  ('enikő', '10a', 2004, 2500, 4.8, 'lány'),
  ('feri', '10a', 2003, 5500, 3.2, 'fiú'),
  ('ágota', '10a', 2003, 2500, 2.8, 'lány'),
  ('sanyi', '10a', 2005, 1500, 4.2, 'fiú'),
  ('péter', '10b', 2003, 3500, 3.1, 'fiú'),
  ('andrea', '10a', 2004, 1500, 4.9, 'lány');


SELECT * FROM tanulok;


# Lekérdezések

# 2.1	Tanulók névsorban
SELECT * from tanulok
  ORDER BY nev;

# 2.2	Osztályonként névsor szerint
SELECT * from tanulok
  ORDER BY osztaly, nev;

# 2.3	A legjobb átlagú tanuló neve
SELECT nev from tanulok
  ORDER BY atlag DESC
  LIMIT 1;

# 2.4	Második három legjobb tanuló
SELECT nev, atlag from tanulok
  ORDER BY atlag DESC
  LIMIT 3,3;

# 2.5	Tanulók névsorban, és az osztályuk
SELECT nev, osztaly from tanulok
  ORDER BY nev;

# 2.6	osztály névsora
SELECT nev, osztaly from tanulok
  WHERE osztaly = '10a'
  ORDER BY nev;

# 2.7	Adott években születtek
SELECT nev, szulev from tanulok
  WHERE szulev in (2004, 2005)
  ORDER BY nev;

# 2.8	Adott osztály adott nevű tanulói
SELECT nev, szulev from tanulok
  WHERE nev in ( 'anna', 'pisti', 'betti') AND osztaly = '10a'
  ORDER BY nev;

# 2.9	Kinek a neve kezdődik valamilyen betűvel?
SELECT nev, szulev from tanulok
  WHERE nev LIKE 'p%'
  ORDER BY nev;

# 2.10	Harmadik betű o
SELECT nev, szulev from tanulok
  WHERE nev LIKE '__o%'
  ORDER BY nev;

# 2.11	Nevében van "a" betű
SELECT nev, szulev from tanulok
  WHERE nev LIKE '%a%'
  ORDER BY nev;

# 2.12	Milyen osztályaink vannak?
SELECT DISTINCT osztaly FROM tanulok;

SELECT osztaly FROM tanulok
  GROUP BY osztaly;


# 2.13	Osztálylétszámok
SELECT osztaly, COUNT(*) letszam FROM tanulok
  GROUP BY osztaly;

# 2.14	Osztályonként Nemenként hányan vannak
SELECT osztaly, neme, COUNT(*) letszam FROM tanulok
  GROUP BY osztaly, neme;


# 2.15	Osztályonként hányan vannak akiknek átlaga jobb mint valamennyi
SELECT osztaly, COUNT(*) letszam FROM tanulok
  WHERE atlag > 3.5
  GROUP BY osztaly;

# 2.16	Osztályonként a létszám, ösztöndíj, átlag
SELECT osztaly, COUNT(*) letszam, SUM(osztondij) osztondij, AVG(atlag) atlag FROM tanulok
  GROUP BY osztaly;

 

# 2.17	Adott létszámnál kisebb osztályok
SELECT osztaly, COUNT(*) letszam FROM tanulok
  GROUP BY osztaly
  HAVING letszam < 10;

# 2.18	Iskola Számai
SELECT osztaly, COUNT(*) letszam, SUM(osztondij) osztondij, AVG(atlag) atlag FROM tanulok
  ;

# 2.19	A legjobb átlaggal rendelkező tanuló(k)
SELECT * from tanulok
  WHERE atlag = (
    select max(atlag) FROM tanulok
  );

# 2.20	x neműek átlaga
SELECT AVG(atlag) atlag FROM tanulok
  where neme = 'fiú';

# 2.21	x betűvel kezdődő tanulók száma
SELECT count(*) fo FROM tanulok
  where nev like 'a%';

# 2.22	Kezdőbetűnként hány tanuló van
SELECT LEFT(nev,1) kezdobetu, count(*) fo FROM tanulok
  GROUP BY kezdobetu;


