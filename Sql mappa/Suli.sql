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
  ('pisti', '10a', 2003, 4500, 3.5, 'fi�'),
  ('g�za', '10b', 2003, 3500, 4.9, 'fi�'),
  ('anna', '10a', 2004, 1500, 2.7, 'l�ny'),
  ('g�za', '10a', 2003, 4500, 3.8, 'fi�'),
  ('roland', '10b', 2003, 5500, 3.5, 'fi�'),
  ('betti', '10a', 2004, 4500, 4.5, 'l�ny'),
  ('g�bor', '10a', 2003, 3500, 3.6, 'fi�'),
  ('hug�', '10b', 2003, 4500, 4.3, 'fi�'),
  ('enik�', '10a', 2004, 2500, 4.8, 'l�ny'),
  ('feri', '10a', 2003, 5500, 3.2, 'fi�'),
  ('�gota', '10a', 2003, 2500, 2.8, 'l�ny'),
  ('sanyi', '10a', 2005, 1500, 4.2, 'fi�'),
  ('p�ter', '10b', 2003, 3500, 3.1, 'fi�'),
  ('andrea', '10a', 2004, 1500, 4.9, 'l�ny');

SELECT * from tanulok;