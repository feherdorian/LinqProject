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
  ('enikõ', '10a', 2004, 2500, 4.8, 'lány'),
  ('feri', '10a', 2003, 5500, 3.2, 'fiú'),
  ('ágota', '10a', 2003, 2500, 2.8, 'lány'),
  ('sanyi', '10a', 2005, 1500, 4.2, 'fiú'),
  ('péter', '10b', 2003, 3500, 3.1, 'fiú'),
  ('andrea', '10a', 2004, 1500, 4.9, 'lány');

SELECT * from tanulok;