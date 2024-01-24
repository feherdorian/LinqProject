CREATE DATABASE Csapatok
  CHARACTER SET utf8
  COLLATE utf8_hungarian_ci;

USE Csapatok;

CREATE TABLE csapatok (
  Id INT(11) NOT NULL AUTO_INCREMENT,
  csapat VARCHAR(255) NOT NULL,
  bajnokiCim INT(11) NOT NULL,
  menedzser VARCHAR(255) NOT NULL,
  orszag VARCHAR(255) NOT NULL,
  PRIMARY KEY (Id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

DELETE FROM csapatok;

INSERT INTO csapatok
  (csapat, bajnokiCim, menedzser, orszag)
VALUES
  ('RealMadrid', 35, 'Ancelotti', 'Spanyolorsz�g'),
  ('Barcelona', 27, 'Xavi', 'Spanyolorsz�g'),
  ('ManchesterUnited', 20, 'tenHag', 'Anglia'),
  ('LeicesterCity', 1, 'Marescra', 'Anglia'),
  ('Ferencv�ros', 34, 'Stankovic', 'Magyarorsz�g'),
  ('AtleticoMadrid', 11, 'Simeone', 'Spanyolorsz�g'),
  ('Videoton', 3, 'Grzelak', 'Magyarorsz�g'),
  ('Arsenal', 13, 'Arteta', 'Anglia'),
  ('Sevilla', 1, 'Flores', 'Spanyolorsz�g'),
  ('PSG', 11, 'Enrique', 'Franciaorsz�g');

SELECT * FROM csapatok;

#lek�rdez�sek

# 1. Csapatok n�vsorba
  SELECT *from csapatok
    order by  csapat;

# 2. 20 vagy t�bb bajnoki c�mmel rendelkez� csapatok
  SELECT id, csapat, bajnokiCim from csapatok
    where bajnokiCim > 20;

# 3. orsz�gonk�nt h�ny csapat van
select id, orszag ,Count(*) Letszam  from csapatok
  group by orszag;
